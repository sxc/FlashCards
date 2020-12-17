//
//  ContentView.swift
//  FlashCards
//
//  Created by Xiaochun Shen on 2020/12/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            Spacer()
            CardView(honeymoon: honeymoonData[2])
            // fixme: add padding to the cards later on.
                .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
