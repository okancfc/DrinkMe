//
//  UndoButton.swift
//  DrinkMe
//
//  Created by Okan Çifçi on 13.03.2024.
//

import SwiftUI

struct UndoButton: View {
    var body: some View {
        
        Button(action: {
            
        }, label: {
            Image(systemName: "arrow.uturn.backward.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 45, height: 50)
                .foregroundColor(.black)
                .shadow(radius: 4, y: 4)

        })
        
    }
}

#Preview {
    UndoButton()
}
