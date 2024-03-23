//
//  PersonajeMainChill.swift
//  MSA
//
//  Created by ADMIN UNACH on 29/02/24.
//

import SwiftUI

struct PersonajeMainChill: View {
    var UISW: CGFloat = UIScreen.main.bounds.width
    var UISH: CGFloat = UIScreen.main.bounds.height
    
    @State var animate: Bool = false
    @Binding var isFlipped: Bool
    @Binding var isTapping: Bool
    @Binding var isFinished: Bool
    
    var body: some View {
        ZStack{
            
//            Image("piernaIzqH")
//                .rotationEffect(.degrees(-15))
//                .offset(x: -15, y: 70)
//                .offset(y: animate ? 3 : 2)
//            
//            Image("piernaDerH")
//                .rotationEffect(.degrees(11))
//                .offset(x: 25, y: 75)
//                .offset(y: animate ? 3 : 2)
            
            Image("mochilaH")
                .offset(x: -52, y: 8)
                .offset(y: animate ? 5 : 3)
            
            Image("brazoDerH")
                .offset(x: 40, y: 25)
                .offset(y: animate ? 0 : 2)
            
            Image("antebrazoDerH")
                .rotationEffect(.degrees(animate ? 0 : 5))
                .offset(x: 65, y: 25)
                .offset(y: animate ? 0 : 2)
            
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
            
            Image("brazo-nv1")
                .resizable()
                .scaledToFit()
                .frame(width: 270)
                .offset(x: -84, y: -70)
                .offset(y: animate ? 0 : 2)
                .offset(x: isTapping ? 50 : 0,y: isTapping ? 10 : 0)
                .rotationEffect(.degrees(animate ? 0 : 2))
                .rotationEffect(.degrees(isTapping ? 50 : 0))
            
            
            Image(isFinished ? "bote-sano" : "bote")
                .resizable()
                .scaledToFit()
                .frame(width: 400)
                .offset(x: -50, y: 126)
                .offset(y: animate ? 4 : 2)

            
            Image("baseH")
                .opacity(0)
            
        }.scaleEffect(x: isFlipped ? -1 : 1, y: 1, anchor: .center)
        .position(x: UISW * 0.5, y: UISH * 0.5)
            .ignoresSafeArea()
            .animation(Animation.easeInOut(duration: 0.2).repeatForever(autoreverses: true), value: animate)
            .onAppear{
                animate = true
            }
    }
}

struct PersonajeMainChill_Previews: PreviewProvider {
    static var previews: some View {
        let flip = State(initialValue: false)
        let tapping = State(initialValue: true)
        let finish = State(initialValue: true)
        return PersonajeMainChill(isFlipped: flip.projectedValue, isTapping: tapping.projectedValue, isFinished: finish.projectedValue)
    }
}
