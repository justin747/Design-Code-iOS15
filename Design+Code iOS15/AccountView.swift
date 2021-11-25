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
                VStack (spacing: 8) {
                    Image(systemName: "person.crop.circle.fill.badge.checkmark")
                        .symbolVariant(.circle.fill)
                        .font(.system(size: 32))
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.blue, .blue.opacity(0.3))
                        .padding()
                        .background(Circle().fill(.ultraThinMaterial))
                        .background(Image(systemName: "hexagon")
                                        .symbolVariant(.fill)
                                        .foregroundColor(.blue)
                                        .font(.system(size: 200))
                                        .offset(x: -50, y: -100))
                    
                    Text("CM Punk")
                        .font(.title.weight(.semibold))
                    HStack {
                        Image(systemName: "location")
                            .imageScale(.small)
                        
                        Text("Los Angeles")
                            .foregroundColor(.secondary)
                    }
                }
                .frame(maxWidth: .infinity)
                .padding()
                
                Section {
                    NavigationLink {
                        ContentView()
                    } label: {
                        Label("Settings", systemImage: "gear")
                    }
                    NavigationLink {
                        Text("Billing")
                    } label: {
                        Label("Billing", systemImage: "creditcard")
                    }
                    NavigationLink {
                        Text("Help")
                    } label: {
                        Label("Help", systemImage: "questionmark")
                    }
                }
                .accentColor(.primary)
                .listRowSeparatorTint(.blue)
                .listRowSeparator(.hidden)
                
                Section {
                    Link(destination: URL(string: "https://twitter.com/CMPunk")!) {
                        Label("Website", systemImage: "link")
                    }
                }
                .accentColor(.primary)
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
