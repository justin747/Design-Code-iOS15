//
//  Tab.swift
//  Design+Code iOS15
//
//  Created by Justin747 on 11/26/21.
//

import SwiftUI

struct TabItem: Identifiable {
    var id = UUID()
    var text: String
    var icon: String
    var tab: Tab
    var color: Color
}

var tabItems = [
    TabItem(text: "Learn Now", icon: "house", tab: .home, color: .blue),
    TabItem(text: "Explore", icon: "magnifyingglass", tab: .explore, color: .red),
    TabItem(text: "Notifications", icon: "bell", tab: .notifications, color: .green),
    TabItem(text: "Library", icon: "rectangle.stack", tab: .library, color: .orange)
]

enum Tab: String {
    case home
    case explore
    case notifications
    case library
}

struct TabPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat){
        value = nextValue()
    }
}
