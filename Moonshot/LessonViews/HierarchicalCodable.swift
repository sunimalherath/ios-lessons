//
//  HierarchicalCodable.swift
//  Moonshot
//
//  Created by Sunimal Herath on 11/7/2024.
//

import SwiftUI

struct User: Codable {
    let name: String
    let address: Address
}

struct Address: Codable {
    let street: String
    let city: String
}

struct HierarchicalCodable: View {
    var body: some View {
        Button("Decode JSON") {
            let input = """
                {
                    "name":"John Doe",
                    "address": {
                        "street": "213, Soldiers Road",
                        "city": "Fort Knox",
                    }
                }
            """
            
            let data = Data(input.utf8)
            let decoder = JSONDecoder()
            
            if let user = try? decoder.decode(User.self, from: data) {
                print(user.name)
                print(user.address.city)
            }
        }
    }
}

#Preview {
    HierarchicalCodable()
}
