//
//  MapaView.swift
//  MSA
//
//  Created by ADMIN UNACH on 06/03/24.
//

import SwiftUI

struct MapaView: View {
    
    @Binding var isMapView: Bool
    
    @State var isFinished: Bool = false
    @State var isFinished2: Bool = false
    @State var countObj: Int = 0
    @State var coins: Int = 0
    
    var UISW: CGFloat = UIScreen.main.bounds.width
    var UISH: CGFloat = UIScreen.main.bounds.height
    
    @State var offsetBote2: CGFloat = .zero
    @State var offsetBotella: CGFloat = .zero
    @State var offsetLiquido: CGFloat = .zero
    
    @State var offsetHumo1: CGFloat = .zero
    @State var offsetLevels: CGFloat = .zero
    
    @State var isLevel1: Bool = false
    @State var isTapped1: Bool = false
    @State var isTapped5: Bool = false
                            
    @State var isPopUp: Bool = false
    
    var body: some View {
        ZStack{
            Color(Color(UIColor(red: 0.08, green: 0.67, blue: 0.85, alpha: 1.00)))
            
            
            VStack (spacing: -10){
                Text("Bienvenidos a")
                    .font(.custom("RifficFree-Bold", size: 40))
                    .foregroundStyle(.white)
                
                Text("Manglaria")
                    .font(.custom("RifficFree-Bold", size: 110))
                    .foregroundStyle(.white)
                    .offset(x: UISW * 0.12)

            }.position(x: UISW * 0.135, y: UISH * 0.15)
            
            ScrollView(.horizontal, showsIndicators: false){
                ScrollViewReader{ proxy in
                    ZStack {
                        Image("base1")
                            .resizable()
                            .frame(width: UISW * 1.5,height: UISH * 0.89)
                            .position(x: UISW * 0.75, y: UISH * 0.57)
                        
                        Image("cangrejo-nv1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50)
                            .scaleEffect(x: -1, y: 1, anchor: .center)
                            .position(x: UISW * 0.48, y: UISH * 0.58)
                        
                        Image("cangrejo-nv1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50)
                            .position(x: UISW * 0.55, y: UISH * 0.69)
                        
                        Image("cocodrilo-nv1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 160)
                            .position(x: UISW * 0.798, y: UISH * 0.505)
                        
                        Image("garza-nv1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                            .position(x: UISW * 0.764, y: UISH * 0.537)
                        
                        Image("bote2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 120)
                            .position(x: UISW * 1.085, y: UISH * 0.91)
                            .offset(y: offsetBote2)
                        
                        Image("gotas-abajo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70)
                            .position(x: UISW * 0.993, y: UISH * 0.372)
                            .offset(x: offsetLiquido)
                        
                        Image("liquido")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70)
                            .position(x: UISW * 1.01, y: UISH * 0.33)
                        
                        Image("gotas-frente")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70)
                            .position(x: UISW * 0.99, y: UISH * 0.373)
                            .offset(x: offsetLiquido)
                        
                        Image("bote1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                            .position(x: UISW * 1.06, y: UISH * 0.29)
                        
                        Image("botella")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80)
                            .position(x: UISW * 1.1, y: UISH * 0.52)
                            .offset(y: offsetBotella)
                        
                        Image("botella")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80)
                            .position(x: UISW * 1.39, y: UISH * 0.28)
                            .offset(y: -offsetBotella)
                        
                        Image("humo1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 170)
                            .position(x: UISW * 1.265, y: UISH * 0.422)
                            .scaleEffect(abs(cos(offsetHumo1 * 0.06)), anchor: .trailing)
                        
                        Image("humo2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 170)
                            .position(x: UISW * 1.316, y: UISH * 0.476)
                            .scaleEffect(abs(cos(offsetHumo1 * 0.05)), anchor: .trailing)
                        
                        Image("craneo1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 45)
                            .position(x: UISW * 1.13, y: UISH * 0.535)
                            .offset(y: offsetHumo1 + 10)
                            .scaleEffect(abs(cos(offsetHumo1 * 0.04)), anchor: .trailing)
                        
                        Image("craneo2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 45)
                            .position(x: UISW * 1.4, y: UISH * 0.4)
                            .offset(y: -offsetHumo1 + 10)
                            .scaleEffect(abs(cos(offsetHumo1 * 0.08)), anchor: .trailing)
                        
                        Image("1 3")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80)
                            .position(x: UISW * 0.24, y: UISH * 0.32)
                            .offset(y: offsetLevels)
                            .onTapGesture {
                                withAnimation (.smooth(duration: 0.8)){
                                    isTapped1 = true
                                    isPopUp = true
                                }
                            }
                            .id(1)
                        
                        Image("2 3")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80)
                            .position(x: UISW * 0.37, y: UISH * 0.55)
                            .offset(y: offsetLevels)
                        
                        Image("3 3")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80)
                            .position(x: UISW * 0.58, y: UISH * 0.74)
                            .offset(y: offsetLevels)
                        
                        Image("4 3")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80)
                            .position(x: UISW * 0.86, y: UISH * 0.49)
                            .offset(y: offsetLevels)
                        
                        Image("5 3")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80)
                            .position(x: UISW * 1.17, y: UISH * 0.2)
                            .offset(y: offsetLevels)
                            .onTapGesture {
                                withAnimation (.spring(duration: 0.8)){
                                    isTapped5 = true
                                    isPopUp = true
                                }
                            }
                    }.onAppear{
                        let anchorPoint = UnitPoint(x: 250 / UIScreen.main.bounds.width, y: 0)
                        proxy.scrollTo(1, anchor: anchorPoint)
                    }
                }
            }
            
            ZStack {
                Image("icon1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 85)
                
                Text(String(countObj))
                    .font(.custom("RifficFree-Bold", size: 19))
                    .foregroundStyle(.white)
                    .offset(x: 15, y: 7)
                
            }.position(x: UISW * 0.61, y: UISH * 0.087)
            
            ZStack {
                Image("icon2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 180)
                
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 70, height: 20)
                        .foregroundColor(.green)
                        .offset(x: 50)
                    
                    Text("100%")
                        .font(.custom("RifficFree-Bold", size: 13))
                        .foregroundStyle(.white)
                        .offset(x: -16, y: 0)
                
                }.position(x: UISW * 0.73, y: UISH * 0.092)
            
            ZStack {
                Image("icon3")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 90)
            
                Text(String(coins))
                    .font(.custom("RifficFree-Bold", size: 18))
                    .foregroundStyle(.white)
                    .offset(x: 18, y: 1)
            }.position(x: UISW * 0.85, y: UISH * 0.09)
            
            Image("face")
                .resizable()
                .scaledToFit()
                .frame(width: 70)
                .position(x: UISW * 0.94, y: UISH * 0.09)
            
            
            Image("misiones")
                .resizable()
                .scaledToFit()
                .frame(width: 120)
                .position(x: UISW * 0.51, y: UISH * 0.093)
            
            Image("salirBtn")
                .resizable()
                .scaledToFit()
                .frame(width: 120)
                .position(x: UISW * 0.08, y: UISH * 0.95)
                .onTapGesture {
                    withAnimation(.spring(duration: 0.5)) {
                        isMapView = false
                    }
                }
            
//            Text(String(isLevel1))
//                .font(.custom("RifficFree-Bold", size: 18))
//                .foregroundStyle(.white)
//                .offset(x: 18, y: 1)
            
            Rectangle()
                .foregroundColor(.black)
                .frame(width: UISW, height: UISH)
                .opacity(isPopUp ? 0.6 : 0)
                .onTapGesture {
                    withAnimation (.spring(duration: 0.5)){
                        isPopUp = false
                        isTapped1 = false
                        isTapped5 = false
                    }
                }
            
            Image("pop-n1")
                .resizable()
                .scaledToFit()
                .frame(width: 800)
                .position(x: UISW * 0.5, y: UISH * 0.5)
                .offset(y: isTapped1 ? 0 : UISH * 2)
            
            Image("pop-n5")
                .resizable()
                .scaledToFit()
                .frame(width: 800)
                .position(x: UISW * 0.5, y: UISH * 0.5)
                .offset(y: isTapped5 ? 0 : UISH * 2)
            
            Button {
                withAnimation (.spring(duration: 0.5)){
                    isLevel1 = true
                    isPopUp = false
                    isTapped1 = false
                    isTapped5 = false
                }
            } label: {
                Image("unirse")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 130)
            }.position(x: UISW * 0.5, y: UISH * 0.78)
                .offset(y: isPopUp ? 0 : UISH * 2)
            
            Image("xmark")
                .resizable()
                .scaledToFit()
                .frame(width: 60)
                .position(x: UISW * 0.21, y: UISH * 0.24)
                .offset(y: isPopUp ? 0 : UISH * 2)
                .onTapGesture {
                    withAnimation (.spring(duration: 0.5)){
                        isPopUp = false
                        isTapped1 = false
                        isTapped5 = false
                    }
                }
            if(isLevel1 == true){
                Nivel1View(isLevel1: $isLevel1, isFinished: $isFinished, isFinished2: $isFinished2, countObj: $countObj, coins: $coins)
                    .opacity(isLevel1 ? 1 : 0)
                    .onAppear{
                        SoundManager.instance.playSound(sound: .nivel)
                    }
            } else {
                Circle()
                    .fill(.clear)
                    .allowsHitTesting(false)
                    .onAppear{
                        SoundManager.instance.stopSound()
                        SoundManager.instance.playSound(sound: .mapa)
                    }
            }
            
        }.ignoresSafeArea()
            .onAppear{
                withAnimation(Animation.easeInOut(duration: 1.3).repeatForever()) {
                    offsetBote2 += 12
                    if offsetBote2 > 6 {
                        offsetBote2 = -6
                    }
                }
                withAnimation(Animation.easeInOut(duration: 0.2).repeatForever()) {
                    offsetLiquido += 4
                    if offsetLiquido > 2 {
                        offsetLiquido = -2
                    }
                }
                withAnimation(Animation.easeInOut(duration: 1).repeatForever()) {
                    offsetBotella -= 4
                    if offsetBotella > 2 {
                        offsetBotella = 2
                    }
                }
                withAnimation(Animation.easeInOut(duration: 2).repeatForever()) {
                    offsetHumo1 -= 4
                    if offsetHumo1 > 2 {
                        offsetHumo1 = 2
                    }
                }
                withAnimation(Animation.easeInOut(duration: 1.2).repeatForever()) {
                    offsetLevels -= 4
                    if offsetLevels > 2 {
                        offsetLevels = 2
                    }
                }
            }
    }
}

struct Mapa_Previews: PreviewProvider {
    static var previews: some View {
        let mapa = State(initialValue: false)
        return MapaView(isMapView: mapa.projectedValue)
    }
}
