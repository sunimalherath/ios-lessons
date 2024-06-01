//
//  DeletingItems.swift
//  iExpense
//
//  Created by Sunimal Herath on 1/6/2024.
//

import SwiftUI

struct DeletingItems: View {
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    
    var body: some View {
        VStack {
            List {
                ForEach(numbers, id: \.self) {
                    Text("Row \($0)")
                }
                .onDelete(perform: removeRows)
            }
            
            Button("Add Number") {
                numbers.append(currentNumber)
                currentNumber += 1
            }
        }
    }
    
    func removeRows(at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
    }
}

#Preview {
    DeletingItems()
}
