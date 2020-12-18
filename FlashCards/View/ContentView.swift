//
//  ContentView.swift
//  FlashCards
//
//  Created by Xiaochun Shen on 2020/12/17.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PORPERTIES
    
    @State var showAlert: Bool = false
    @State var showGuide: Bool = false
    @State var showInfo: Bool = false
    
    // MARK: - CARD VIEWS
    
    var cardViews: [CardView] = {
        var views = [CardView]()
        for index in 0..<2 {
            views.append(CardView(honeymoon: honeymoonData[index]))
        }
//        for honeymoon in honeymoonData {
           
//        }
        return views
    }()
    
    // MARK: TOP CARD
    private func isTopCard(cardView: CardView) -> Bool {
        guard let index = cardViews.firstIndex(where: { $0.id == cardView.id }) else {
            return false
        }
        return index == 0
    }
    
    var body: some View {
        VStack {
            // MARK: - HEADER
            
            HeaderView(showGuideView: $showGuide, showInfoView: $showInfo)
            Spacer()
            
            // MARK: - CARDS
            
            
            
//            CardView(honeymoon: honeymoonData[2])
            // fixme: add padding to the cards later on.
//                .padding()
            
            ZStack {
                ForEach(cardViews) { cardView in
                    cardView
                        .zIndex(self.isTopCard(cardView: cardView) ? 1 : 0)
                }
            }
            .padding(.horizontal)
            
            Spacer()
            // MARK: - FOOTER
            
            FooterView(showBookingAlert: $showAlert)
            
        }
        .alert(isPresented: $showAlert, content: {
            Alert(title: Text("SUCCESS"), message: Text("Wishing a loverly and most precious of the times together for the amazing couple."), dismissButton: .default(Text("Happy Honeymoon!")))
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
