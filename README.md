
---

# **Bill Splitting & Expense Tracker – Aptos Move Smart Contract**

## **Description**

The **BillSplitter** smart contract enables users to manage shared expenses and split bills directly on the Aptos blockchain.
It allows:

* Creating an expense record with a defined number of participants.
* Adding contributions from participants toward the shared bill.

This ensures transparent, immutable, and trustless bill management between multiple parties.

---

## **Vision**

To provide a simple yet secure on-chain solution for managing shared expenses among friends, families, or colleagues without relying on third-party platforms. The goal is to make cost sharing **transparent, fair, and automated** using blockchain technology.

---

## **Future Scope**

* **Automated Share Calculation** – Auto-compute each participant’s exact due amount.
* **Refund Mechanism** – Refund extra contributions to participants.
* **Multi-Expense Support** – Manage multiple active bills for the same group.
* **History Tracking** – Maintain a complete on-chain history of all bills and payments.
* **Integration with DApps** – Connect with decentralized apps for group events, trips, and shared services.

---

## **Contract Details**

* **Module Name:** `MyModule::BillSplitter`
* **Deployment Address:** `0xb2521a877e4d50fb63dc5be176d9cd602acccd99ddf8b14d4add09f863cff8e6`
* <img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/03bd5207-e2ec-45f2-a9ca-2586dc5e390a" />

* 
* **Functions:**

  1. `create_expense(creator: &signer, participants: u64)` – Initializes a new expense record.
  2. `add_contribution(payer: &signer, owner: address, amount: u64)` – Adds a participant’s contribution to the shared bill.



