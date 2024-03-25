//
//  ButtonStyleBootcamp.swift
//  SwiftfulThingAdvencedLearning
//
//  Created by Goncalves Higino on 25/03/24.
//

import SwiftUI

struct ProssableButtonStyle: ButtonStyle {
    
    let scaledAmount: CGFloat
    
    init(scaledAmount: CGFloat) {
        self.scaledAmount = scaledAmount
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? scaledAmount: 1.0)
            //.brightness(configuration.isPressed ? 0.05 : 0)
            .opacity(configuration.isPressed ? 0.9 : 1.0)
    }
}

extension View {
    func withPressableStyle(scaledAmount: CGFloat = 0.9) -> some View {
        buttonStyle(ProssableButtonStyle(scaledAmount: scaledAmount))
    }
}

struct ButtonStyleBootcamp: View {
    var body: some View {
        Button(action:{
            
        }, label : {
            Text("Click Me")
                .font(.headline)
                .foregroundStyle(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.red)
                .clipShape(.rect(cornerRadius: 10))
                .shadow(color: Color.red.opacity(0.3), radius: 10, x: 0.0, y: 10)
        })
        .withPressableStyle()
        .padding(40)
    }
}

#Preview {
    ButtonStyleBootcamp()
}
