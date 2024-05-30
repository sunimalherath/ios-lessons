//
//  ContentView.swift
//  iExpense
//
//  Created by Sunimal Herath on 29/5/2024.
//

import SwiftUI

class User {
    var firstName = "John"
    var lastName = "Doe"
}

// changing the value in the text field won't change 'user' object if we use a class

//struct User {
//    var firstName = "John"
//    var lastName = "Doe"
//}

// struct is good when each view needs to have its own data.

struct ContentView: View {
    @State private var user = User()
    
    var body: some View {
        VStack {
            Text("User name is \(user.firstName) \(user.lastName)")
            TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
