//
//  AccountView.swift
//  Design+Code iOS15
//
//  Created by Justin747 on 11/23/21.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    Text("Settings")
                }
                .listRowSeparatorTint(.blue)
                .listRowSeparator(.hidden)
                
                Text("Billing")
                Text("Help")
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Account")
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
