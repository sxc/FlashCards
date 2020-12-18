//
//  TitleModifier.swift
//  FlashCards
//
//  Created by Xiaochun Shen on 2020/12/18.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(Color.pink)
    }
}

