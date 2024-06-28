//
//  DeleteItemsInList.swift
//  iExpense
//
//  Created by Sunimal Herath on 25/6/2024.
//

import SwiftUI

struct DeleteItemsInList: View {
    @State private var numbers = [Int]()
    @State private var currentNum: Int = 1
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(numbers, id: \.self) {
                        Text("Row \($0)")
                    }
                    .onDelete(perform: removeRows)
                }
                
                Button("Add Number") {
                    numbers.append(currentNum)
                    currentNum += 1
                }
            }
            .toolbar {
                EditButton()
            }
        }        
    }
    
    func removeRows(at offset: IndexSet) {
        numbers.remove(atOffsets: offset)
    }
}

#Preview {
    DeleteItemsInList()
}
