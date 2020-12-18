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
    @Binding var showInfoView: Bool
    
    
    var body: some View {
        HStack {
            Button(action: {
                self.showInfoView.toggle()
                
            })
            {
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular))
            }
            .accentColor(Color.primary)
            .sheet(isPresented: $showInfoView, content: {
                InfoView()
            })
            
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
    @State static var showInfo: Bool = false
    
    static var previews: some View {
        HeaderView(showGuideView: $showGuide, showInfoView: $showInfo)
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
