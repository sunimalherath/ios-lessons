//
//  ExpenseList.swift
//  iExpense
//
//  Created by Sunimal Herath on 1/7/2024.
//

import SwiftUI

struct ExpenseItem: Identifiable {
    let id = UUID()
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
    @State private var showingAddExpenseForm = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(expenses.items) { item in
                    Text(item.name)
                }
                .onDelete(perform: { indexSet in
                    removeItems(at: indexSet)
                })
            }
            .navigationTitle("iExpense")
            .toolbar {
                Button("Add Expense", systemImage: "plus") {
                    showingAddExpenseForm = true
                }
            }
            .sheet(isPresented: $showingAddExpenseForm) {
                AddView(expenses: expenses)
            }
        }
    }
    
    func removeItems(at offset: IndexSet) {
        expenses.items.remove(atOffsets: offset)
    }
}

#Preview {
    ExpenseList()
}
