//
//  ArchiveWithCodable.swift
//  iExpense
//
//  Created by Sunimal Herath on 30/6/2024.
//

import SwiftUI

struct CodeUser: Codable {
    let firstName: String
    let lastName: String
}

struct ArchiveWithCodable: View {
    @State private var user = CodeUser(firstName: "John", lastName: "Doe")
    
    var body: some View {
        Button("Save User") {
            let encoder = JSONEncoder()
            
            if let data = try? encoder.encode(user) {
                UserDefaults.standard.setValue(data, forKey: "UserData")
            }
        }
    }
}

#Preview {
    ArchiveWithCodable()
}
