//
//  ViewModifierBootcamp.swift
//  SwiftfulThingAdvencedLearning
//
//  Created by Goncalves Higino on 25/03/24.
//

import SwiftUI

struct DefaultButtonViewModifier: ViewModifier {
    
    let backgroundColor: Color
    
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.white)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(backgroundColor)
            .clipShape(.rect(cornerRadius: 10))
            .shadow(radius: 10)
    }
}

extension View {
    func withDefaultButtonFormatting(backgroundColor: Color = .blue) -> some View {
        modifier(DefaultButtonViewModifier(backgroundColor: backgroundColor))
    }
}

struct ViewModifierBootcamp: View {
    
    var body: some View {
        VStack(spacing: 10) {
            
            Text("Hellho, Luis")
                .font(.headline)
                .withDefaultButtonFormatting(backgroundColor: .brown)
            
            
            Text("Hellho, Higino")
                .font(.subheadline)
                .withDefaultButtonFormatting()
            
            Text("Hellho, Goncalves")
                .font(.title)
                .withDefaultButtonFormatting(backgroundColor: .orange)
            
        }
        .padding()
    }
}

#Preview {
    ViewModifierBootcamp()
}
