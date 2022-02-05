//
//  Animations.swift
//  Design+Code iOS15
//
//  Created by Justin747 on 2/4/22.
//

import SwiftUI

extension Animation {
    static let openCard = Animation.spring(response: 0.5, dampingFraction: 0.7)
    static let closeCard = Animation.spring(response: 0.6, dampingFraction: 0.9)

}
