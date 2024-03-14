//
//  HomePage.swift
//  DrinkMe
//
//  Created by Okan Çifçi on 13.03.2024.
//

import SwiftUI

struct HomePage: View {
    @State private var percent = 0.0
    @State private var waveOffset = Angle(degrees: 0)
    
    var body: some View {
        VStack {
            Text("\(Int(percent))%")
                .font(.system(size: 70))
                .fontWeight(.bold)

            HStack {
                GlassButton()
                    .padding(.horizontal, 10)
                UndoButton()
                    .padding(.horizontal, 1)
                addButton()
                    .padding(.horizontal, 1)
                BottleButton()
                    .padding(.horizontal, 10)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            Wave(offSet: Angle(degrees: waveOffset.degrees), percent: percent)
            .fill(Color.blue)
            .ignoresSafeArea(.all)
        )
        .background(
            Color(uiColor: .systemBackground)
                .edgesIgnoringSafeArea(.all)
        )
        .onAppear {
            withAnimation(.linear(duration: 1.5).repeatForever(autoreverses: false)) {
                self.waveOffset = Angle(degrees: 360)
            }
        }
    }
}

#Preview {
    HomePage()
}
