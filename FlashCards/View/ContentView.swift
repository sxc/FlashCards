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
    
    
    var body: some View {
        VStack {
            HeaderView()
            Spacer()
            CardView(honeymoon: honeymoonData[2])
            // fixme: add padding to the cards later on.
                .padding()
            Spacer()
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
