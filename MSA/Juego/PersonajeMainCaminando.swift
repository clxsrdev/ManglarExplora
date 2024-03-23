//
//  PersonajeMainCaminando.swift
//  MSA
//
//  Created by ADMIN UNACH on 29/02/24.
//

import SwiftUI

struct PersonajeMainCaminando: View {
    var UISW: CGFloat = UIScreen.main.bounds.width
    var UISH: CGFloat = UIScreen.main.bounds.height
    
    @State var animate: Bool = false
    @Binding var isFlipped: Bool
    
    var body: some View {
        ZStack{
            
            Image("piernaIzqH")
                .rotationEffect(.degrees(animate ? 0 : -15))
                .offset(x: -20, y: 70)
                .offset(x: animate ? 0 : 10)
            
            Image("piernaDerH")
                .rotationEffect(.degrees(!animate ? 0 : 12))
                .offset(x: 30, y: 73)
                .offset(x: !animate ? -15 : -5)
            
            Image("mochilaH")
                .offset(x: -52, y: 8)
                .offset(y: animate ? 5 : 3)
            
            Image("brazoDerH")
                .offset(x: 40, y: 15)
                .offset(y: animate ? 0 : 10)
            
            Image("antebrazoDerH")
                .rotationEffect(.degrees(!animate ? 3 : 10))
                .offset(x: 60, y: 15)
                .offset(y: animate ? 10 : 10)
            
            Image("cuerpoH")
                .offset(y: 25)
            
            Image("cabezaH")
                .offset(x: 15, y: -42)
                .offset(y: animate ? 7 : 6)
            
            Image("cejaH")
                .rotationEffect(.degrees(20))
                .offset(x: 10, y: -45)
                .offset(y: animate ? 5 : 3)
            
            Image("cejaH")
                .offset(x: 56, y: -48)
                .offset(y: animate ? 5 : 3)
            
            Image("bocaH")
                .offset(x: 15, y: -2)
                .offset(y: animate ? 6 : 4)
            
            Image("brazoIzqH_1")
                .offset(x: -50, y: 25)
                .offset(y: animate ? 0 : 2)
            
            Image("brazoIzqH")
                .rotationEffect(.degrees(animate ? 3 : 10))
                .offset(x: -30, y: 28)
                .offset(y: animate ? 0 : 2)
            
            
            Image("baseH")
                .opacity(0)
            
        }.scaleEffect(x: isFlipped ? -1 : 1, y: 1, anchor: .center)
            .position(x: UISW * 0.5, y: UISH * 0.5)
            .ignoresSafeArea()
            .animation(Animation.easeInOut(duration: 0.3).repeatForever(autoreverses: true), value: animate)
            .onAppear{
                animate = true
            }
    }
}

struct PersonajeMainCaminando_Previews: PreviewProvider {
    static var previews: some View {
        let flip = State(initialValue: false)
        return PersonajeMainCaminando(isFlipped: flip.projectedValue)
    }
}
