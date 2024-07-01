//
//  ExpenseList.swift
//  iExpense
//
//  Created by Sunimal Herath on 1/7/2024.
//

import SwiftUI

struct ExpenseItem {
    let name: String
    let type: String
    let amount: Double
}

@Observable
class Expenses {
    var items = [ExpenseItem]()
}

struct ExpenseList: View {
    @State private var expenses = Expenses()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(expenses.items, id: \.name) { item in
                    Text(item.name)
                }
            }
            .navigationTitle("iExpense")
            .toolbar {
                Button("Add Expense", systemImage: "plus") {
                    expenses.items.append(ExpenseItem(name: "Test", type: "Deposit", amount: 100))
                }
            }
        }
    }
}

#Preview {
    ExpenseList()
}
