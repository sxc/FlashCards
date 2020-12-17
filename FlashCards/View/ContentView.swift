//
//  ContentView.swift
//  FlashCards
//
//  Created by Xiaochun Shen on 2020/12/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CardView(honeymoon: honeymoonData[1])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
