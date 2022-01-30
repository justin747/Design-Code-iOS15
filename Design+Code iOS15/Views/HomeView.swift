//
//  HomeView.swift
//  Design+Code iOS15
//
//  Created by Justin747 on 11/28/21.
//

import SwiftUI

struct HomeView: View {
    @State var hasScroll: Bool = false
    
    var body: some View {
        ScrollView {
            GeometryReader { proxy in
//                Text("\(proxy.frame(in: .named("scroll")).minY)")
                Color.clear.preference(key: ScrollPreferenceKey.self, value: proxy.frame(in: .named("scroll")).minY)
            }
            .frame(height: 0)
            
            TabView {
                ForEach(0 ..< 5) { item in
                    FeaturedItem()
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .frame(height: 430)
            .background(
                Image("Blob 1")
                    .offset(x: 250, y: -100)
            
            Color.clear.frame(height: 1000)
        }
        .coordinateSpace(name: "scroll")
        .onPreferenceChange(ScrollPreferenceKey.self, perform: { value in
            withAnimation(.easeInOut) {
                if value < 0 {
                    hasScroll = true
                } else {
                    hasScroll = false
                }
            }
            
        })
        .safeAreaInset(edge: .top, content: {
            Color.clear.frame(height: 70)
        })
        .overlay(
            NavigationBar(title: "Test", hasScroll: $hasScroll)
                .opacity(hasScroll ? 1 : 0)
        )
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
