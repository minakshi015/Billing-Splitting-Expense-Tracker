 module MyModule::BillSplitter {

    use aptos_framework::signer;
    use aptos_framework::coin;
    use aptos_framework::aptos_coin::AptosCoin;

    /// Struct to store total expense and number of participants
    struct Expense has key, store {
        total_amount: u64,
        participants: u64,
    }

    /// Function to create a new expense record
    public fun create_expense(creator: &signer, participants: u64) {
        let expense = Expense {
            total_amount: 0,
            participants,
        };
        move_to(creator, expense);
    }

    /// Function to add a participant’s contribution
    public fun add_contribution(payer: &signer, owner: address, amount: u64) acquires Expense {
        let expense = borrow_global_mut<Expense>(owner);

        // Transfer payment to the expense owner
        let payment = coin::withdraw<AptosCoin>(payer, amount);
        coin::deposit<AptosCoin>(owner, payment);

        // Update total expense
        expense.total_amount = expense.total_amount + amount;
    }
}
