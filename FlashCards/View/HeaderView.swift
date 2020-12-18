//
//  HeaderView.swift
//  FlashCards
//
//  Created by Xiaochun Shen on 2020/12/17.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - PORPERTIES
    @Binding var showGuideView: Bool
    
    var body: some View {
        HStack {
            Button(action: {
                
                
            })
            {
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular))
            }
            .accentColor(Color.primary)
            Spacer()
            Image("logo-honeymoon-pink")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            Spacer()
            Button(action: {
                self.showGuideView.toggle()
            })
            {
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 24, weight: .regular))
            }
            .accentColor(Color.primary)
            .sheet(isPresented: $showGuideView, content: {
                GuideView()
            })
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    @State static var showGuide: Bool = false
    static var previews: some View {
        HeaderView(showGuideView: $showGuide)
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
