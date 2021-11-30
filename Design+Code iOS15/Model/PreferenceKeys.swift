//
//  PreferenceKeys.swift
//  Design+Code iOS15
//
//  Created by Justin747 on 11/29/21.
//

import SwiftUI

struct ScrollPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
