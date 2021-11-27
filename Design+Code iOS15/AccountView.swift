//
//  AccountView.swift
//  Design+Code iOS15
//
//  Created by Justin747 on 11/23/21.
//

import SwiftUI

struct AccountView: View {
    
    @State var isDeleted: Bool = false
    @State var isPinned: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                profile
                menu
                links
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Account")
        }
    }
    
    //MARK: Profile
    
    var profile: some View {
        
        VStack (spacing: 8) {
            Image(systemName: "person.crop.circle.fill.badge.checkmark")
                .symbolVariant(.circle.fill)
                .font(.system(size: 32))
                .symbolRenderingMode(.palette)
                .foregroundStyle(.blue, .blue.opacity(0.3))
                .padding()
                .background(Circle().fill(.ultraThinMaterial))
                .background(
                    HexagonView()
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
    }
    
    //MARK: Menu
    
    var menu: some View {
        
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
        
    }
    
    //MARK: Links
    
    var links: some View {
        
        Section {
            Link(destination: URL(string: "https://twitter.com/CMPunk")!) {
                HStack {
                    Label("Website", systemImage: "house")
                    Spacer()
                    Image(systemName: "link")
                        .foregroundColor(.secondary)
                }
            }
            .swipeActions {
                pinButton
            }
            if !isDeleted {
                Link(destination: URL(string: "https://www.youtube.com/c/AEW/featured")!) {
                    HStack {
                        Label("YouTube", systemImage: "tv")
                        Spacer()
                        Image(systemName: "link")
                            .foregroundColor(.secondary)
                            .listSectionSeparator(.hidden)
                    }
                }
                .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                    Button(action: {isDeleted = true}) {
                        Label("Delete", systemImage: "trash")
                    }
                    .tint(.red)
                    
                    pinButton
                }
            }
        }
        .accentColor(.primary)
    }
    
    var pinButton: some View {
        Button { isPinned.toggle() } label: {
            if isPinned {
                Label("Unpin", systemImage: "pin.slash")
            } else {
                Label("Pin", systemImage: "pin")
            }
        }
        .tint(isPinned ? .gray : .yellow)
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
