//
//  FocusStateDemoView.swift
//  SwiftUI2021
//
//  Created by Nilaakash Singh on 08/07/21.
//

import SwiftUI

@available(iOS 15.0, *)
struct FocusStateDemoView: View {
    
    enum Field: Hashable {
        case username
        case password
    }
    
    @State private var username = ""
    @State private var password = ""
    @FocusState private var focusedField: Field?
    
    var body: some View {
        Form {
            TextField("Username", text: $username)
                .focused($focusedField, equals: .username)
            
            SecureField("Password", text: $password)
                .focused($focusedField, equals: .password)
            
            Button("Sign In") {
                if username.isEmpty {
                    focusedField = .username
                } else if password.isEmpty {
                    focusedField = .password
                } else {
                    // Handle login here
                }
            }
        }
        .navigationTitle("Focus State")
        .navigationBarTitleDisplayMode(.inline)
    }
}

@available(iOS 15.0, *)
struct FocusStateDemoView_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateDemoView()
    }
}
