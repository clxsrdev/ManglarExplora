//
//  Nivel1View.swift
//  MSA
//
//  Created by ADMIN UNACH on 05/03/24.
//

import SwiftUI

struct Nivel1View: View {
    
    @Binding var isLevel1: Bool
    @Binding var isFinished: Bool
    @Binding var isFinished2: Bool
    @Binding var countObj: Int
    @Binding var coins: Int
    
    @State var starting: Bool = true
    
    @State var offsetM1: CGFloat = .zero
    @State var offsetM2: CGFloat = .zero
    
    @State var offsetP1: CGFloat = .zero
    @State var isScreenP1: Bool = true
    @State var offsetP2: CGFloat = .zero
    @State var isScreenP2: Bool = true
    @State var offsetP3: CGFloat = .zero
    @State var isScreenP3: Bool = true
    @State var offsetP4: CGFloat = .zero
    @State var isScreenP4: Bool = true
    @State var offsetP5: CGFloat = .zero
    @State var isScreenP5: Bool = true
    @State var offsetP6: CGFloat = .zero
    @State var isScreenP6: Bool = true
    
    @State var isPopUp: Bool = true
    
    @State var isBananaClicked: Bool = false
    @State var isPopUpBanana: Bool = false
    @State var isCoinBanana: Bool = false
    @State var isEnabledBanana: Bool = true
    
    @State var isLataClicked: Bool = false
    @State var isPopUpLata: Bool = false
    @State var isCoinLata: Bool = false
    @State var isEnabledLata: Bool = true
    
    @State var isLata2Clicked: Bool = false
    @State var isPopUpLata2: Bool = false
    @State var isCoinLata2: Bool = false
    @State var isEnabledLata2: Bool = true
    
    @State var isCajaClicked: Bool = false
    @State var isPopUpCaja: Bool = false
    @State var isCoinCaja: Bool = false
    @State var isEnabledCaja: Bool = true
    
    @State var isCaja2Clicked: Bool = false
    @State var isPopUpCaja2: Bool = false
    @State var isCoinCaja2: Bool = false
    @State var isEnabledCaja2: Bool = true
    
    @State var isBotella1Clicked: Bool = false
    @State var isPopUpBotella: Bool = false
    @State var isCoinBotella: Bool = false
    @State var isEnabledBotella: Bool = true
    
    @State var isBotella2Clicked: Bool = false
    @State var isPopUpBotella2: Bool = false
    @State var isCoinBotella2: Bool = false
    @State var isEnabledBotella2: Bool = true
    
    @State var leftButtonPressed: Bool = false
    @State var rightButtonPressed: Bool = false
    
    @State var offsetHero: CGFloat = .zero
    @State var offsetFondo: CGFloat = .zero
    
    @State var timer: Timer?
    
    let timer2 = Timer.publish(every: 0.05, on: .main, in: .common).autoconnect()
    
    let leftLimit: CGFloat = -150
    let rightLimit: CGFloat = 450
    
    @State var isWalking: Bool = false
    @State var isFlipped: Bool = false
    @State var isTapping: Bool = false
    
    @State var offsetNubeT1: CGFloat = .zero
    @State var offsetNubeT2: CGFloat = .zero
    @State var offsetNubeT3: CGFloat = .zero
    
    @State var offsetBotella: CGFloat = .zero
    
    @State var offsetNubes: CGFloat = .zero
    
    var UISW: CGFloat = UIScreen.main.bounds.width
    var UISH: CGFloat = UIScreen.main.bounds.height
    
    var body: some View {
        ZStack{
            Image("base-niv1")
                .resizable()
                .scaledToFit()
                .frame(width: UISW * 1.7)
                .position(x: UISW * 0.84, y: UISH * 0.5)
                .offset(x: offsetFondo)
            
            Image("nube-tox")
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                .position(x: UISW * 0.36, y: UISH * 0.12)
                .offset(y: offsetNubeT1)
                .offset(x: offsetFondo)
            
            Image("nube-tox")
                .resizable()
                .scaledToFit()
                .frame(width: 80)
                .position(x: UISW * 0.29, y: UISH * 0.18)
                .offset(y: offsetNubeT2)
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                .offset(x: offsetFondo)
            
            Image("nube-tox")
                .resizable()
                .scaledToFit()
                .frame(width: 60)
                .opacity(0.6)
                .position(x: UISW * 0.37, y: UISH * 0.2)
                .offset(y: offsetNubeT3)
                .offset(x: offsetFondo)
            
            Image("nubes-niv1")
                .resizable()
                .scaledToFit()
                .frame(width: UISW * 1.7)
                .position(x: UISW * 0.84, y: UISH * 0.195)
                .offset(y: offsetNubes)
                .offset(x: offsetFondo)
            
            Image("planta1")
                .resizable()
                .scaledToFit()
                .frame(width: 330)
                .position(x: UISW * 0.14, y: UISH * 0.55)
                .offset(x: offsetFondo)
                .offset(y: offsetM1)
            
            Image("planta2")
                .resizable()
                .scaledToFit()
                .frame(width: 400)
                .position(x: UISW * 0.8, y: UISH * 0.554)
                .offset(x: offsetFondo)
                .offset(y: offsetM2)
            
            Image("planta3")
                .resizable()
                .scaledToFit()
                .frame(width: 400)
                .position(x: UISW * 1.45, y: UISH * 0.554)
                .offset(x: offsetFondo)
                .offset(y: offsetM1)
            
            Image(isFinished2 ? "pez1" : "pez-nv1")
                .resizable()
                .scaledToFit()
                .frame(width: 50)
                .position(x: UISW * 0.047, y: UISH * 0.78)
                .offset(x: offsetP1)
                .opacity(isScreenP1 ? 1 : 0)
                .offset(x: offsetFondo)
            
            Image(isFinished2 ? "pez1" : "pez-nv1")                .resizable()
                .scaledToFit()
                .frame(width: 50)
                .position(x: UISW * 0.33, y: UISH * 0.852)
                .offset(x: offsetP2)
                .opacity(isScreenP2 ? 1 : 0)
                .offset(x: offsetFondo)
            
            Image(isFinished2 ? "pez1" : "pez-nv1")                .resizable()
                .scaledToFit()
                .frame(width: 50)
                .position(x: UISW * 0.58, y: UISH * 0.74)
                .offset(x: offsetP3)
                .opacity(isScreenP3 ? 1 : 0)
                .offset(x: offsetFondo)
            
            Image(isFinished2 ? "pez1" : "pez-nv1")                .resizable()
                .scaledToFit()
                .frame(width: 50)
                .position(x: UISW * 0.846, y: UISH * 0.903)
                .offset(x: offsetP4)
                .opacity(isScreenP4 ? 1 : 0)
                .offset(x: offsetFondo)
            
            Image(isFinished2 ? "pez1" : "pez-nv1")                .resizable()
                .scaledToFit()
                .frame(width: 50)
                .position(x: UISW * 1.33, y: UISH * 0.82)
                .offset(x: offsetP5)
                .opacity(isScreenP5 ? 1 : 0)
                .offset(x: offsetFondo)
            
            Image("platano")
                .resizable()
                .scaledToFit()
                .frame(width: 80)
                .position(x: UISW * 0.3, y: UISH * 0.87)
                .offset(x: offsetFondo)
                .opacity(isBananaClicked ? 0 : 1)
                .onTapGesture {
                    SoundManager.instance.playSound(sound: .gesture)
                    withAnimation (.spring(duration: 0.5)){
                        isPopUpBanana = true
                        isTapping = true
                        isPopUp = true
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        withAnimation (.spring(duration: 0.5)){
                            isTapping = false
                        }
                    }
                }
            
            Image("lata2")
                .resizable()
                .scaledToFit()
                .frame(width: 90)
                .position(x: UISW * 0.9, y: UISH * 0.93)
                .offset(x: offsetFondo)
                .opacity(isLata2Clicked ? 0 : 1)
                .onTapGesture {
                    SoundManager.instance.playSound(sound: .gesture)
                    withAnimation (.spring(duration: 0.5)){
                        isPopUpLata = true
                        isTapping = true
                        isPopUp = true
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        withAnimation (.spring(duration: 0.5)){
                            isTapping = false
                        }
                    }
                }
            
            Image("lata")
                .resizable()
                .scaledToFit()
                .frame(width: 70)
                .position(x: UISW * 1.4, y: UISH * 0.86)
                .offset(x: offsetFondo)
                .opacity(isLataClicked ? 0 : 1)
                .onTapGesture {
                    SoundManager.instance.playSound(sound: .gesture)
                    withAnimation (.spring(duration: 0.5)){
                        isPopUpLata2 = true
                        isTapping = true
                        isPopUp = true
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        withAnimation (.spring(duration: 0.5)){
                            isTapping = false
                        }
                    }
                }

            Rectangle()
                .foregroundColor(isFinished ? Color(UIColor(red: 0.11, green: 0.60, blue: 0.71, alpha: 1.00)) : Color(UIColor(red: 0.17, green: 0.20, blue: 0.10, alpha: 1.00)))
                .frame(width: UISW, height: UISH * 0.4)
                .opacity(isFinished ? 0.6 : 0.52)
                .position(x: UISW * 0.5, y: UISH * 0.82)
                .allowsHitTesting(false)
            
            Image(isFinished ? "raiz-sana1" : "raices-planta1")
                .resizable()
                .scaledToFit()
                .frame(width: 250)
                .position(x: UISW * 0.141, y: UISH * 0.631)
                .offset(x: offsetFondo)
                .offset(y: offsetM1)
            
            Image(isFinished ? "raiz-sana2" : "raices-planta2")
                .resizable()
                .scaledToFit()
                .frame(width: 295)
                .position(x: UISW * 0.8, y: UISH * 0.645)
                .offset(x: offsetFondo)
                .offset(y: offsetM2)
            
            Image(isFinished ? "raiz-sana3" : "raices-planta3")
                .resizable()
                .scaledToFit()
                .frame(width: 295)
                .position(x: UISW * 1.45, y: UISH * 0.645)
                .offset(x: offsetFondo)
                .offset(y: offsetM1)
            
            Image("caja-en-agua")
                .resizable()
                .scaledToFit()
                .frame(width: 120)
                .position(x: UISW * 1.15, y: UISH * 0.631)
                .offset(x: offsetFondo)
                .offset(y: offsetBotella)
                .opacity(isCaja2Clicked ? 0 : 1)
                .onTapGesture {
                    SoundManager.instance.playSound(sound: .gesture)
                    withAnimation (.spring(duration: 0.5)){
                        isPopUpCaja2 = true
                        isTapping = true
                        isPopUp = true
                     }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        withAnimation (.spring(duration: 0.5)){
                            isTapping = false
                        }
                    }
                }
            
            Image("caja")
                .resizable()
                .scaledToFit()
                .frame(width: 65)
                .position(x: UISW * 0.14, y: UISH * 0.52)
                .offset(x: offsetFondo)
                .opacity(isCajaClicked ? 0 : 1)
                .onTapGesture {
                    SoundManager.instance.playSound(sound: .gesture)
                    withAnimation (.spring(duration: 0.5)){
                        isPopUpCaja = true
                        isTapping = true
                        isPopUp = true
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        withAnimation (.spring(duration: 0.5)){
                            isTapping = false
                        }
                    }
                }
                .offset(y: offsetM1)
            
            Image("hojas-botella1")
                .resizable()
                .scaledToFit()
                .frame(width: 70)
                .position(x: UISW * 0.14, y: UISH * 0.545)
                .offset(x: offsetFondo)
                .offset(y: offsetM1)
            
            Image("botella1")
                .resizable()
                .scaledToFit()
                .frame(width: 65)
                .position(x: UISW * 0.8, y: UISH * 0.52)
                .offset(x: offsetFondo)
                .opacity(isBotella1Clicked ? 0 : 1)
                .onTapGesture {
                    SoundManager.instance.playSound(sound: .gesture)
                    withAnimation (.spring(duration: 0.5)){
                        isPopUpBotella = true
                        isTapping = true
                        isPopUp = true
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        withAnimation (.spring(duration: 0.5)){
                            isTapping = false
                        }
                    }
                }
                .offset(y: offsetM2)

            
            Image("hojas-botella1")
                .resizable()
                .scaledToFit()
                .frame(width: 70)
                .position(x: UISW * 0.8, y: UISH * 0.545)
                .offset(x: offsetFondo)
                .offset(y: offsetM2)
            
            Image("botella2")
                .resizable()
                .scaledToFit()
                .frame(width: 55)
                .position(x: UISW * 1.45, y: UISH * 0.52)
                .offset(x: offsetFondo)
                .opacity(isBotella2Clicked ? 0 : 1)
                .onTapGesture {
                    SoundManager.instance.playSound(sound: .gesture)
                    withAnimation (.spring(duration: 0.5)){
                        isPopUpBotella2 = true
                        isTapping = true
                        isPopUp = true
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        withAnimation (.spring(duration: 0.5)){
                            isTapping = false
                        }
                    }
                }
                .offset(y: offsetM1)
            
            Image("hojas-botella2")
                .resizable()
                .scaledToFit()
                .frame(width: 70)
                .position(x: UISW * 1.45, y: UISH * 0.55)
                .offset(x: offsetFondo)
                .offset(y: offsetM1)
            
            if(isCajaClicked == true && isCaja2Clicked == true && isLataClicked == true && isLata2Clicked == true && isBotella1Clicked == true && isBotella2Clicked == true && isBananaClicked == true){
                Circle()
                    .foregroundColor(.clear)
                    .onAppear{
                        withAnimation (.easeInOut(duration: 0.5)){
                            isFinished = true
                        }
                        isFinished2 = true
                    }
            }
            
            PersonajeMainChill(isFlipped: $isFlipped, isTapping: $isTapping, isFinished: $isFinished)
                .scaleEffect(0.7)
                .position(x: UISW * 0.4, y: UISH * 0.6)
                .offset(x: offsetHero)
            
//            Text("\(offsetP5)")
//                .font(.title)
//                .bold()
//                .foregroundColor(.white)
//                .padding(.bottom, 50)
//
//            Text("\(offsetFondo)")
//                .font(.title)
//                .bold()
//                .foregroundColor(.white)
            
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
                            if(offsetFondo < 5){
                                offsetFondo += 1
                            }
                            offsetHero -= 1.1
                        } else {
                            if(offsetFondo < 5){
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
                            if(offsetFondo > -810){
                                offsetFondo -= 1
                            }
                            offsetHero += 1.1
                        } else {
                            if(offsetFondo > -810){
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
            
            ZStack {
                Image("icon1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                
                Text(String(countObj))
                    .font(.custom("RifficFree-Bold", size: 23))
                    .foregroundStyle(.white)
                    .offset(x: 15, y: 7)
                
            }.position(x: UISW * 0.64, y: UISH * 0.07)
            
            ZStack {
                Image("icon2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                
                if countObj == 0 {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 90, height: 20)
                        .foregroundColor(.green)
                        .offset(x: 50)
                    
                    Text("100%")
                        .font(.custom("RifficFree-Bold", size: 13))
                        .foregroundStyle(.white)
                        .offset(x: -16, y: 0)
                } else if countObj == 1 {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 80, height: 20)
                        .foregroundColor(.green)
                        .offset(x: 55)
                    
                    Text("85%")
                        .font(.custom("RifficFree-Bold", size: 16))
                        .foregroundStyle(.white)
                        .offset(x: -10, y: 0)
                } else if countObj == 2 {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 70, height: 20)
                        .foregroundColor(.green)
                        .offset(x: 60)
                    
                    Text("60%")
                        .font(.custom("RifficFree-Bold", size: 16))
                        .foregroundStyle(.white)
                        .offset(x: 2, y: 0)
                } else if countObj == 3 {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 60, height: 20)
                        .foregroundColor(.green)
                        .offset(x: 65)
                    
                    Text("45%")
                        .font(.custom("RifficFree-Bold", size: 16))
                        .foregroundStyle(.white)
                        .offset(x: 10, y: 0)
                } else if countObj == 4 {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 50, height: 20)
                        .foregroundColor(.green)
                        .offset(x: 70)
                    
                    Text("30%")
                        .font(.custom("RifficFree-Bold", size: 16))
                        .foregroundStyle(.white)
                        .offset(x: 20, y: 0)
                } else if countObj == 5 {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 40, height: 20)
                        .foregroundColor(.green)
                        .offset(x: 75)
                    
                    Text("20%")
                        .font(.custom("RifficFree-Bold", size: 16))
                        .foregroundStyle(.white)
                        .offset(x: 30, y: 0)
                } else if countObj == 6 {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 30, height: 20)
                        .foregroundColor(.green)
                        .offset(x: 80)
                    
                    Text("10%")
                        .font(.custom("RifficFree-Bold", size: 16))
                        .foregroundStyle(.white)
                        .offset(x: 40, y: 0)
                } else if countObj == 7 {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 20, height: 20)
                        .foregroundColor(.green)
                        .offset(x: 85)
                    
                    Text("0%")
                        .font(.custom("RifficFree-Bold", size: 16))
                        .foregroundStyle(.white)
                        .offset(x: 60, y: 0)
                }
            }.position(x: UISW * 0.78, y: UISH * 0.076)
            
            ZStack {
                Image("icon3")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 110)
            
                Text(String(coins))
                    .font(.custom("RifficFree-Bold", size: 21))
                    .foregroundStyle(.white)
                    .offset(x: 18, y: 1)
            }.position(x: UISW * 0.92, y: UISH * 0.074)
            
            Button{
                withAnimation (.spring(duration: 0.5)){
                    isLevel1 = false
                }
            } label: {
                Image("xmark")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60)
            }.position(x: UISW * 0.05, y: UISH * 0.09)
            
            Rectangle()
                .foregroundColor(.black)
                .frame(width: UISW, height: UISH)
                .opacity(isPopUp ? 0.5 : 0)
                .allowsHitTesting(true)
            
            Image("pop-upBanana")
                .resizable()
                .scaledToFit()
                .frame(width: 500)
                .offset(y: isPopUpBanana ? 0 : UISH * 1.5)
                .opacity(isPopUpBanana ? 1 : 0)
            
            Button{
                SoundManager.instance.playSound(sound: .coins)
                withAnimation (.easeInOut(duration: 0.5)){
                    coins += 40
                    isCoinBanana = true
                }
            } label: {
                Text("Obtener")
                    .font(.custom("RifficFree-Bold", size: 14))
                    .foregroundStyle(Color(UIColor(red: 0.89, green: 0.56, blue: 0.04, alpha: 1.00)))
                    .padding(.vertical, 3)
                    .padding(.horizontal, 30)
                    .background(Color(UIColor(red: 0.98, green: 0.83, blue: 0.28, alpha: 1.00)))
                    .cornerRadius(10)
            }.position(x: UISW * 0.605, y: UISH * 0.554)
                .disabled(isCoinBanana)
                .colorMultiply(!isCoinBanana ? .white.opacity(1) : .gray.opacity(0.5))
                .offset(y: isPopUpBanana ? 0 : UISH * 1.5)
                .opacity(isPopUpBanana ? 1 : 0)
            
            Image("pop-upBtn")
                .resizable()
                .scaledToFit()
                .frame(width: 150)
                .position(x: UISW * 0.505, y: UISH * 0.75)
                .onTapGesture {
                    withAnimation (.easeInOut(duration: 0.5)){
                        if(isCoinBanana == true){
                            SoundManager.instance.playSound(sound: .popup)
                            isBananaClicked = true
                            countObj += 1
                            isPopUpBanana = false
                            isPopUp = false
                            SoundManager.instance.playSound(sound: .nivel)
                        } else {
                            isEnabledBanana = false
                            SoundManager.instance.playSound(sound: .coins)
                            withAnimation (.easeInOut(duration: 0.5)){
                                coins += 40
                                isCoinBanana = true
                            }
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                SoundManager.instance.playSound(sound: .popup)
                                withAnimation (.easeInOut(duration: 0.5)){
                                    isBananaClicked = true
                                    countObj += 1
                                    isPopUpBanana = false
                                    isPopUp = false
                                    SoundManager.instance.playSound(sound: .nivel)
                                }
                            }
                        }
                    }
                }
                .offset(y: isPopUpBanana ? 0 : UISH * 1.5)
                .opacity(isPopUpBanana ? 1 : 0)
                .disabled(!isEnabledBanana)
            
            Image("pop-upCarton")
                .resizable()
                .scaledToFit()
                .frame(width: 500)
                .offset(y: isPopUpCaja ? 0 : UISH * 1.5)
                .opacity(isPopUpCaja ? 1 : 0)
            
            Button{
                SoundManager.instance.playSound(sound: .coins)
                withAnimation (.easeInOut(duration: 0.5)){
                    coins += 40
                    isCoinCaja = true
                }
            } label: {
                Text("Obtener")
                    .font(.custom("RifficFree-Bold", size: 14))
                    .foregroundStyle(Color(UIColor(red: 0.89, green: 0.56, blue: 0.04, alpha: 1.00)))
                    .padding(.vertical, 3)
                    .padding(.horizontal, 30)
                    .background(Color(UIColor(red: 0.98, green: 0.83, blue: 0.28, alpha: 1.00)))
                    .cornerRadius(10)
            }.position(x: UISW * 0.605, y: UISH * 0.554)
                .disabled(isCoinCaja)
                .colorMultiply(!isCoinCaja ? .white.opacity(1) : .gray.opacity(0.5))
                .offset(y: isPopUpCaja ? 0 : UISH * 1.5)
                .opacity(isPopUpCaja ? 1 : 0)
            
            Image("pop-upBtn")
                .resizable()
                .scaledToFit()
                .frame(width: 150)
                .position(x: UISW * 0.505, y: UISH * 0.75)
                .onTapGesture {
                    withAnimation (.easeInOut(duration: 0.5)){
                        if(isCoinCaja == true){
                            SoundManager.instance.playSound(sound: .popup)
                            isCajaClicked = true
                            countObj += 1
                            isPopUpCaja = false
                            isPopUp = false
                            SoundManager.instance.playSound(sound: .nivel)
                        } else {
                            isEnabledCaja = false
                            SoundManager.instance.playSound(sound: .coins)
                            withAnimation (.easeInOut(duration: 0.5)){
                                coins += 40
                                isCoinCaja = true
                            }
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                SoundManager.instance.playSound(sound: .popup)
                                withAnimation (.easeInOut(duration: 0.5)){
                                    isCajaClicked = true
                                    countObj += 1
                                    isPopUpCaja = false
                                    isPopUp = false
                                    SoundManager.instance.playSound(sound: .nivel)
                                }
                            }
                        }
                    }
                }
                .offset(y: isPopUpCaja ? 0 : UISH * 1.5)
                .opacity(isPopUpCaja ? 1 : 0)
                .disabled(!isEnabledCaja)
            
            Image("pop-upCarton")
                .resizable()
                .scaledToFit()
                .frame(width: 500)
                .offset(y: isPopUpCaja2 ? 0 : UISH * 1.5)
                .opacity(isPopUpCaja2 ? 1 : 0)
            
            Button{
                SoundManager.instance.playSound(sound: .coins)
                withAnimation (.easeInOut(duration: 0.5)){
                    coins += 40
                    isCoinCaja2 = true
                }
            } label: {
                Text("Obtener")
                    .font(.custom("RifficFree-Bold", size: 14))
                    .foregroundStyle(Color(UIColor(red: 0.89, green: 0.56, blue: 0.04, alpha: 1.00)))
                    .padding(.vertical, 3)
                    .padding(.horizontal, 30)
                    .background(Color(UIColor(red: 0.98, green: 0.83, blue: 0.28, alpha: 1.00)))
                    .cornerRadius(10)
            }.position(x: UISW * 0.605, y: UISH * 0.554)
                .disabled(isCoinCaja2)
                .colorMultiply(!isCoinCaja2 ? .white.opacity(1) : .gray.opacity(0.5))
                .offset(y: isPopUpCaja2 ? 0 : UISH * 1.5)
                .opacity(isPopUpCaja2 ? 1 : 0)
            
            Image("pop-upBtn")
                .resizable()
                .scaledToFit()
                .frame(width: 150)
                .position(x: UISW * 0.505, y: UISH * 0.75)
                .onTapGesture {
                    withAnimation (.easeInOut(duration: 0.5)){
                        if(isCoinCaja2 == true){
                            SoundManager.instance.playSound(sound: .popup)
                            isCaja2Clicked = true
                            countObj += 1
                            isPopUpCaja2 = false
                            isPopUp = false
                            SoundManager.instance.playSound(sound: .nivel)
                        } else {
                            isEnabledCaja2 = false
                            SoundManager.instance.playSound(sound: .coins)
                            withAnimation (.easeInOut(duration: 0.5)){
                                coins += 40
                                isCoinCaja2 = true
                            }
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                SoundManager.instance.playSound(sound: .popup)
                                withAnimation (.easeInOut(duration: 0.5)){
                                    isCaja2Clicked = true
                                    countObj += 1
                                    isPopUpCaja2 = false
                                    isPopUp = false
                                    SoundManager.instance.playSound(sound: .nivel)
                                }
                            }
                        }
                    }
                }
                .offset(y: isPopUpCaja2 ? 0 : UISH * 1.5)
                .opacity(isPopUpCaja2 ? 1 : 0)
                .disabled(!isEnabledCaja2)
            
            Image("pop-upBotella")
                .resizable()
                .scaledToFit()
                .frame(width: 500)
                .offset(y: isPopUpBotella ? 0 : UISH * 1.5)
                .opacity(isPopUpBotella ? 1 : 0)
            
            Button{
                SoundManager.instance.playSound(sound: .coins)
                withAnimation (.easeInOut(duration: 0.5)){
                    coins += 40
                    isCoinBotella = true
                }
            } label: {
                Text("Obtener")
                    .font(.custom("RifficFree-Bold", size: 14))
                    .foregroundStyle(Color(UIColor(red: 0.89, green: 0.56, blue: 0.04, alpha: 1.00)))
                    .padding(.vertical, 3)
                    .padding(.horizontal, 30)
                    .background(Color(UIColor(red: 0.98, green: 0.83, blue: 0.28, alpha: 1.00)))
                    .cornerRadius(10)
            }.position(x: UISW * 0.605, y: UISH * 0.554)
                .disabled(isCoinBotella)
                .colorMultiply(!isCoinBotella ? .white.opacity(1) : .gray.opacity(0.5))
                .offset(y: isPopUpBotella ? 0 : UISH * 1.5)
                .opacity(isPopUpBotella ? 1 : 0)
            
            Image("pop-upBtn")
                .resizable()
                .scaledToFit()
                .frame(width: 150)
                .position(x: UISW * 0.505, y: UISH * 0.75)
                .onTapGesture {
                    withAnimation (.easeInOut(duration: 0.5)){
                        if(isCoinBotella == true){
                            SoundManager.instance.playSound(sound: .popup)
                            isBotella1Clicked = true
                            countObj += 1
                            isPopUpBotella = false
                            isPopUp = false
                            SoundManager.instance.playSound(sound: .nivel)
                        } else {
                            isEnabledBotella = false
                            SoundManager.instance.playSound(sound: .coins)
                            withAnimation (.easeInOut(duration: 0.5)){
                                coins += 40
                                isCoinBotella = true
                            }
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                SoundManager.instance.playSound(sound: .popup)
                                withAnimation (.easeInOut(duration: 0.5)){
                                    isBotella1Clicked = true
                                    countObj += 1
                                    isPopUpBotella = false
                                    isPopUp = false
                                    SoundManager.instance.playSound(sound: .nivel)
                                }
                            }
                        }
                    }
                }
                .offset(y: isPopUpBotella ? 0 : UISH * 1.5)
                .opacity(isPopUpBotella ? 1 : 0)
                .disabled(!isEnabledBotella)
            
            Image("pop-upBotellaVerde")
                .resizable()
                .scaledToFit()
                .frame(width: 500)
                .offset(y: isPopUpBotella2 ? 0 : UISH * 1.5)
                .opacity(isPopUpBotella2 ? 1 : 0)
            
            Button{
                SoundManager.instance.playSound(sound: .coins)
                withAnimation (.easeInOut(duration: 0.5)){
                    coins += 40
                    isCoinBotella2 = true
                }
            } label: {
                Text("Obtener")
                    .font(.custom("RifficFree-Bold", size: 14))
                    .foregroundStyle(Color(UIColor(red: 0.89, green: 0.56, blue: 0.04, alpha: 1.00)))
                    .padding(.vertical, 3)
                    .padding(.horizontal, 30)
                    .background(Color(UIColor(red: 0.98, green: 0.83, blue: 0.28, alpha: 1.00)))
                    .cornerRadius(10)
            }.position(x: UISW * 0.605, y: UISH * 0.554)
                .disabled(isCoinBotella2)
                .colorMultiply(!isCoinBotella2 ? .white.opacity(1) : .gray.opacity(0.5))
                .offset(y: isPopUpBotella2 ? 0 : UISH * 1.5)
                .opacity(isPopUpBotella2 ? 1 : 0)
            
            Image("pop-upBtn")
                .resizable()
                .scaledToFit()
                .frame(width: 150)
                .position(x: UISW * 0.505, y: UISH * 0.75)
                .onTapGesture {
                    withAnimation (.easeInOut(duration: 0.5)){
                        if(isCoinBotella2 == true){
                            SoundManager.instance.playSound(sound: .popup)
                            isBotella2Clicked = true
                            countObj += 1
                            isPopUpBotella2 = false
                            isPopUp = false
                            SoundManager.instance.playSound(sound: .nivel)
                        } else {
                            isEnabledBotella2 = false
                            SoundManager.instance.playSound(sound: .coins)
                            withAnimation (.easeInOut(duration: 0.5)){
                                coins += 40
                                isCoinBotella2 = true
                            }
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                SoundManager.instance.playSound(sound: .popup)
                                withAnimation (.easeInOut(duration: 0.5)){
                                    isBotella2Clicked = true
                                    countObj += 1
                                    isPopUpBotella2 = false
                                    isPopUp = false
                                    SoundManager.instance.playSound(sound: .nivel)
                                }
                            }
                        }
                    }
                }
                .offset(y: isPopUpBotella2 ? 0 : UISH * 1.5)
                .opacity(isPopUpBotella2 ? 1 : 0)
                .disabled(!isEnabledBotella2)
            
            Image("pop-upLataAzul")
                .resizable()
                .scaledToFit()
                .frame(width: 500)
                .offset(y: isPopUpLata ? 0 : UISH * 1.5)
                .opacity(isPopUpLata ? 1 : 0)
            
            Rectangle()
                .foregroundColor(.white)
                .frame(width: 200, height: 30)
                .position(x: UISW * 0.605, y: UISH * 0.554)
                .offset(y: isPopUpLata ? 0 : UISH * 1.5)
                .opacity(isPopUpLata ? 1 : 0)
            
            Button{
                SoundManager.instance.playSound(sound: .coins)
                withAnimation (.easeInOut(duration: 0.5)){
                    coins += 40
                    isCoinLata = true
                }
            } label: {
                Text("Obtener")
                    .font(.custom("RifficFree-Bold", size: 14))
                    .foregroundStyle(Color(UIColor(red: 0.89, green: 0.56, blue: 0.04, alpha: 1.00)))
                    .padding(.vertical, 3)
                    .padding(.horizontal, 30)
                    .background(Color(UIColor(red: 0.98, green: 0.83, blue: 0.28, alpha: 1.00)))
                    .cornerRadius(10)
            }
                .position(x: UISW * 0.605, y: UISH * 0.554)
                .disabled(isCoinLata)
                .colorMultiply(!isCoinLata ? .white.opacity(1) : .gray.opacity(0.5))
                .offset(y: isPopUpLata ? 0 : UISH * 1.5)
                .opacity(isPopUpLata ? 1 : 0)
            
            Image("pop-upBtn")
                .resizable()
                .scaledToFit()
                .frame(width: 150)
                .position(x: UISW * 0.505, y: UISH * 0.75)
                .onTapGesture {
                    withAnimation (.easeInOut(duration: 0.5)){
                        if(isCoinLata == true){
                            SoundManager.instance.playSound(sound: .popup)
                            isLata2Clicked = true
                            countObj += 1
                            isPopUpLata = false
                            isPopUp = false
                            SoundManager.instance.playSound(sound: .nivel)
                        } else {
                            isEnabledLata = false
                            SoundManager.instance.playSound(sound: .coins)
                            withAnimation (.easeInOut(duration: 0.5)){
                                coins += 40
                                isCoinLata = true
                            }
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                SoundManager.instance.playSound(sound: .popup)
                                withAnimation (.easeInOut(duration: 0.5)){
                                    isLata2Clicked = true
                                    countObj += 1
                                    isPopUpLata = false
                                    isPopUp = false
                                    SoundManager.instance.playSound(sound: .nivel)
                                }
                            }
                        }
                    }
                }
                .offset(y: isPopUpLata ? 0 : UISH * 1.5)
                .opacity(isPopUpLata ? 1 : 0)
                .disabled(!isEnabledLata)
            
            Image("pop-upLataRoja")
                .resizable()
                .scaledToFit()
                .frame(width: 500)
                .offset(y: isPopUpLata2 ? 0 : UISH * 1.5)
                .opacity(isPopUpLata2 ? 1 : 0)
            
            Button{
                SoundManager.instance.playSound(sound: .coins)
                withAnimation (.easeInOut(duration: 0.5)){
                    coins += 40
                    isCoinLata2 = true
                }
            } label: {
                Text("Obtener")
                    .font(.custom("RifficFree-Bold", size: 14))
                    .foregroundStyle(Color(UIColor(red: 0.89, green: 0.56, blue: 0.04, alpha: 1.00)))
                    .padding(.vertical, 3)
                    .padding(.horizontal, 30)
                    .background(Color(UIColor(red: 0.98, green: 0.83, blue: 0.28, alpha: 1.00)))
                    .cornerRadius(10)
            }
                .position(x: UISW * 0.605, y: UISH * 0.554)
                .disabled(isCoinLata2)
                .colorMultiply(!isCoinLata2 ? .white.opacity(1) : .gray.opacity(0.5))
                .offset(y: isPopUpLata2 ? 0 : UISH * 1.5)
                .opacity(isPopUpLata2 ? 1 : 0)
            
            Image("pop-upBtn")
                .resizable()
                .scaledToFit()
                .frame(width: 150)
                .position(x: UISW * 0.505, y: UISH * 0.75)
                .onTapGesture {
                    withAnimation (.easeInOut(duration: 0.5)){
                        if(isCoinLata2 == true){
                            SoundManager.instance.playSound(sound: .popup)
                            isLataClicked = true
                            countObj += 1
                            isPopUpLata2 = false
                            isPopUp = false
                            SoundManager.instance.playSound(sound: .nivel)
                        } else {
                            isEnabledLata2 = false
                            SoundManager.instance.playSound(sound: .coins)
                            withAnimation (.easeInOut(duration: 0.5)){
                                coins += 40
                                isCoinLata2 = true
                            }
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                SoundManager.instance.playSound(sound: .popup)
                                withAnimation (.easeInOut(duration: 0.5)){
                                    isLataClicked = true
                                    countObj += 1
                                    isPopUpLata2 = false
                                    isPopUp = false
                                    SoundManager.instance.playSound(sound: .nivel)
                                }
                            }
                        }
                    }
                }
                .offset(y: isPopUpLata2 ? 0 : UISH * 1.5)
                .opacity(isPopUpLata2 ? 1 : 0)
                .disabled(!isEnabledLata2)
            
            Image("pop-up-n1")
                .resizable()
                .scaledToFit()
                .frame(width: UISW * 0.6)
                .offset(y: starting ? 0 : UISH * 2)
                .offset(y: offsetNubes)
            
        }.ignoresSafeArea()
            .onReceive(timer2) { _ in
                if(offsetP1 > 2000){
                    isScreenP1 = false
                    offsetP1 = -UISW * 0.1
                } else {
                    offsetP1 += 3
                    isScreenP1 = true
                }
                if(offsetP2 > 1600){
                    isScreenP2 = false
                    offsetP2 = -UISW * 0.4
                } else {
                    offsetP2 += 2
                    isScreenP2 = true
                }
                if(offsetP3 > 1500){
                    isScreenP3 = false
                    offsetP3 = -UISW * 0.7
                } else {
                    offsetP3 += 2.5
                    isScreenP3 = true
                }
                if(offsetP4 > 1100){
                    isScreenP4 = false
                    offsetP4 = -UISW * 1.1
                } else {
                    offsetP4 += 3
                    isScreenP4 = true
                }
                if(offsetP5 > 500){
                    isScreenP5 = false
                    offsetP5 = -UISW * 1.35
                } else {
                    offsetP5 += 2
                    isScreenP5 = true
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    withAnimation (.easeInOut(duration: 0.8)){
                        starting = false
                        isPopUp = false
                    }
                }
                withAnimation(Animation.easeInOut(duration: 1.5).repeatForever()) {
                    offsetNubeT1 += 18
                    if offsetNubeT1 > 9 {
                        offsetNubeT1 = -9
                    }
                    offsetBotella += 14
                    if offsetBotella > 7{
                        offsetBotella = -7
                    }
                }
                withAnimation(Animation.easeInOut(duration: 1.8).repeatForever()) {
                    offsetNubes += 20
                    if offsetNubes > 10 {
                        offsetNubes = -10
                    }
                    offsetM1 += 4
                    if offsetBotella > 2{
                        offsetBotella = -2
                    }
                    offsetM2 -= 4
                    if offsetBotella < 2{
                        offsetBotella = 2
                    }
                }
                withAnimation(Animation.easeInOut(duration: 1.2).repeatForever()) {
                    offsetNubeT2 += 16
                    if offsetNubeT2 > 8 {
                        offsetNubeT2 = -8
                    }
                }
                withAnimation(Animation.easeInOut(duration: 1.3).repeatForever()) {
                    offsetNubeT3 += 12
                    if offsetNubeT3 > 6 {
                        offsetNubeT3 = -6
                    }
                }
            }
    }
}

struct Nivel1_Previews: PreviewProvider {
    static var previews: some View {
        let count = State(initialValue: 0)
        let coins = State(initialValue: 0)
        let finish = State(initialValue: false)
        let finish2 = State(initialValue: false)
        let level1 = State(initialValue: false)
        return Nivel1View(isLevel1: level1.projectedValue, isFinished: finish.projectedValue, isFinished2: finish2.projectedValue, countObj: count.projectedValue, coins: coins.projectedValue)
    }
}
