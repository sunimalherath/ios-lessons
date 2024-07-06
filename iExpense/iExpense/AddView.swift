//
//  AddView.swift
//  iExpense
//
//  Created by Sunimal Herath on 2/7/2024.
//

import SwiftUI

struct AddView: View {
    @State private var name = ""
    @State private var type = "Personal"
    @State private var amount = 0.0
    @State private var message = ""
    
    let types = ["Business", "Personal"]
    
    var expenses: Expenses
    
    var body: some View {
        NavigationStack {
            VStack {
                Form {
                    TextField("Name", text: $name)
                    Picker("Type", selection: $type) {
                        ForEach(types, id: \.self) {
                            Text($0)
                        }
                    }
                    TextField("Amount", value: $amount, format: .currency(code: "AUD"))
                        .keyboardType(.numberPad)
                }
                Text(message)
                    .foregroundStyle(.green)
                    .font(.headline)
                    .padding()
            }
            .navigationTitle("Add New Expense")
            .toolbar {
                Button("Save") {
                    let item: ExpenseItem = ExpenseItem(name: name, type: type, amount: amount)
                    expenses.items.append(item)
                    
                    self.message = "Record Added!"
                }
            }
        }
    }
}

#Preview {
    AddView(expenses: Expenses())
}
