//
//  ContentView.swift
//  MSA
//
//  Created by ADMIN UNACH on 29/02/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var isWalking: Bool = false
    @State var isFlipped: Bool = false
    
    @State var offsetHero: CGFloat = .zero
    @State var offsetFondo: CGFloat = .zero
    
    var UISW: CGFloat = UIScreen.main.bounds.width
    var UISH: CGFloat = UIScreen.main.bounds.height
    
    @State var leftButtonPressed: Bool = false
    @State var rightButtonPressed: Bool = false
    
    @State var timer: Timer?
    let leftLimit: CGFloat = -100
    let rightLimit: CGFloat = 550
    
    var body: some View {
            ZStack{
                Image("referencia")
                    .resizable()
                    .frame(width: UISW * 2.5, height: UISH)
                    .offset(x: UISW * 0.7)
                    .offset(x: offsetFondo)
                
                GeometryReader { proxy in
                    
//                    PersonajeMainChill(isFlipped: $isFlipped)
//                        .scaleEffect(0.7)
//                        .opacity(isWalking ? 0 : 1)
//                        .offset(x: UISW * -0.5, y: UISH * 0.25)
//                        .offset(x: offsetHero)
                    
                    PersonajeMainCaminando(isFlipped: $isFlipped)
                        .scaleEffect(0.7)
                        .opacity(!isWalking ? 0 : 1)
                        .offset(x: UISW * -0.5, y: UISH * 0.25)
                        .offset(x: offsetHero)
                    
                    Button{
                    } label: {
                        Image(systemName: "arrow.left")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                            .foregroundColor(.white)
                            .padding()
                            .background(Circle().foregroundColor(.red))
                    }
                    .frame(width: 70, height: 70)
                    .position(x: UISW * 0.05, y: UISH * 0.7)
                    .onLongPressGesture(minimumDuration: .infinity, pressing: { pressing in
                        if pressing {
                            isWalking = true
                            isFlipped = true
                            timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { _ in
                                if offsetHero > leftLimit {
                                    if(offsetFondo < 40){
                                        offsetFondo += 1
                                    }
                                    offsetHero -= 1.1
                                } else {
                                    if(offsetFondo < 40){
                                        offsetFondo += 1
                                    }
                                }
                            }
                            leftButtonPressed = true
                        } else {
                            isWalking = false
                            isFlipped = true
                            timer?.invalidate()
                            timer = nil
                            leftButtonPressed = false
                        }
                    }) {
                        isWalking = false
                        isFlipped = true
                        timer?.invalidate()
                        timer = nil
                        leftButtonPressed = false
                    }
                    .disabled(rightButtonPressed)
                    .opacity(rightButtonPressed ? 0.6 : 1)

                    
                    Button{
                    } label: {
                        Image(systemName: "arrow.right")
                            .resizable()
                            .scaledToFit()
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .padding()
                            .background(Circle().foregroundColor(.red))
                    }
                    .frame(width: 70, height: 70)
                    .position(x: UISW * 0.95, y: UISH * 0.7)
                    .onLongPressGesture(minimumDuration: .infinity, pressing: { pressing in
                        if pressing {
                            isWalking = true
                            isFlipped = false
                            timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { _ in
                                if offsetHero < rightLimit {
                                    if(offsetFondo > -1710){
                                        offsetFondo -= 1
                                    }
                                    offsetHero += 1.1
                                } else {
                                    if(offsetFondo > -1710){
                                        offsetFondo -= 1
                                    }
                                }
                            }
                            rightButtonPressed = true
                        } else {
                            isWalking = false
                            isFlipped = false
                            timer?.invalidate()
                            timer = nil
                            rightButtonPressed = false
                        }
                    }) {
                        isWalking = false
                        isFlipped = false
                        timer?.invalidate()
                        timer = nil
                        rightButtonPressed = false
                    }
                    .disabled(leftButtonPressed)
                    .opacity(leftButtonPressed ? 0.6 : 1)
                }.offset(x: UISW * 0.75)
                        
                
//                Text("\(offsetHero)")
//                    .padding(.bottom, 50)
//                
//                Text("\(offsetFondo)")
                
            }.position(x: UISW * 0.5, y: UISH * 0.5)
            .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
