//
//  MenuView.swift
//  MSA
//
//  Created by ADMIN UNACH on 01/03/24.
//

import SwiftUI
import AVKit

struct MenuView: View {
    
    @State var isMapView: Bool = false
    @State var isAboutView: Bool = false
    @State var isClassifier: Bool = false
    @State var isVR: Bool = false
    @State var isVideo: Bool = false
    
    let player = AVPlayer(url: Bundle.main.url(forResource: "manglaresV", withExtension: "mp4")!)
    
    @State var animate: Bool = false
    @State var offsetC: CGFloat = .zero
    @State var offsetCoco: CGFloat = .zero
    @State var isScreenCoco: Bool = true
    
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
    @State var offsetP7: CGFloat = .zero
    @State var isScreenP7: Bool = true
    @State var offsetP8: CGFloat = .zero
    @State var isScreenP8: Bool = true
    
    @State var start: Bool = false
    @State var start2: Bool = false
    
    @State private var isVibrating = false
    
    @State var isTapped1: Bool = true
    @State var isTapped2: Bool = false
    @State var isTapped3: Bool = false
    @State var isTapped4: Bool = false
    
    @State var conoceView: Bool = false
    
    var UISW: CGFloat = UIScreen.main.bounds.width
    var UISH: CGFloat = UIScreen.main.bounds.height
    
    let timer = Timer.publish(every: 0.05, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            
            Color((Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00))))
            
            ZStack{
                
                Image("scroll-basee")
                    .resizable()
                    .frame(width: UISW + 10)
                    .position(x: UISW * 0.5, y: UISH * 0.5)
                
                Image("pez1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
                    .position(x: UISW * 0.047, y: UISH * 0.78)
                    .offset(x: offsetP8)
                    .opacity(isScreenP8 ? 1 : 0)
                
                Image("pez1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
                    .position(x: UISW * 0.33, y: UISH * 0.852)
                    .offset(x: offsetP7)
                    .opacity(isScreenP7 ? 1 : 0)
                
                Image("pez1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
                    .position(x: UISW * 0.58, y: UISH * 0.74)
                    .offset(x: offsetP6)
                    .opacity(isScreenP6 ? 1 : 0)
                
                Image("pez1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
                    .position(x: UISW * 0.846, y: UISH * 0.903)
                    .offset(x: offsetP5)
                    .opacity(isScreenP5 ? 1 : 0)
                
                Image("pez2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
                    .position(x: UISW * 0.22, y: UISH * 0.87)
                    .offset(x: offsetP4)
                    .opacity(isScreenP4 ? 1 : 0)
                
                Image("pez2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
                    .position(x: UISW * 0.405, y: UISH * 0.91)
                    .offset(x: offsetP3)
                    .opacity(isScreenP3 ? 1 : 0)
                
                Image("pez2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
                    .position(x: UISW * 0.584, y: UISH * 0.941)
                    .offset(x: offsetP2)
                    .opacity(isScreenP2 ? 1 : 0)
                
                Image("pez2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
                    .position(x: UISW * 0.973, y: UISH * 0.747)
                    .offset(x: offsetP1)
                    .opacity(isScreenP1 ? 1 : 0)
                
                Image("cuerpo-cocodrilo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                    .position(x: UISW * 0.255, y: UISH * 0.79)
                    .offset(x: offsetCoco)
                    .opacity(isScreenCoco ? 1 : 0)
                
                Rectangle()
                    .foregroundColor(Color(UIColor(red: 0.27, green: 0.51, blue: 0.77, alpha: 1.00)))
                    .frame(width: UISW, height: UISH * 0.33)
                    .opacity(0.62)
                    .position(x: UISW * 0.5, y: UISH * 0.84)
                
                Image("raices-arriba")
                    .resizable()
                    .scaledToFit()
                    .frame(width: UISW - 110)
                    .position(x: UISW * 0.522, y: UISH * 0.7)
                
                Image("cocdrilo-cabeza")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 365)
                    .position(x: UISW * 0.323, y: UISH * 0.766)
                    .offset(x: offsetCoco)
                    .opacity(isScreenCoco ? 1 : 0)
                
                Image("garza")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 260)
                    .position(x: UISW * 0.604, y: UISH * 0.774)
                
                Image("ala")
                    .resizable()
                    .scaledToFit()
                    .rotationEffect(.degrees(animate ? -10 : 0))
                    .frame(width: 38)
                    .position(x: UISW * 0.646, y: UISH * 0.705)
                
                Image("nubes")
                    .resizable()
                    .scaledToFit()
                    .frame(width: UISW + 100)
                    .position(x: UISW * 0.505, y: UISH * 0.288)
                    .offset(y: offsetC)
                
                Image("mono")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 105)
                    .position(x: UISW * 0.824, y: UISH * 0.3)
                    .offset(x: isVibrating ? -3 : 0)
                    .animation(Animation.easeInOut(duration: 0.05)
                        .repeatCount(10, autoreverses: true)
                    )
                    .onTapGesture {
                        isVibrating.toggle()
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                            isVibrating = false
                        }
                    }
                    .opacity(start2 ? 0 : 1)
                
                Button {
                    withAnimation (.easeInOut(duration: 0.01)){
                        start2 = true
                    }
                    withAnimation (.spring(duration: 2)){
                        start = true
                    }
                } label: {
                    Text("Iniciar")
                        .font(.custom("Poppins-Bold", size: 16))
                        .bold()
                        .foregroundStyle(.white)
                        .padding(.vertical)
                        .padding(.horizontal, 30)
                        .background(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                        .cornerRadius(30)
                }.position(x: UISW * 0.092, y: UISH * 0.399)
                
            }.offset(y: start ? UISH * -1.2 : 0)
                .animation(Animation.easeInOut(duration: 0.2).repeatForever(autoreverses: true), value: animate)
                .onReceive(timer) { _ in
                    if(offsetCoco > 1050){
                        isScreenCoco = false
                        offsetCoco = -580
                    } else {
                        offsetCoco += 0.5
                        isScreenCoco = true
                    }
                    if(offsetP1 > 50){
                        isScreenP1 = false
                        offsetP1 = -UISH * 1.45
                    } else {
                        offsetP1 += 3
                        isScreenP1 = true
                    }
                    if(offsetP2 > 520){
                        isScreenP2 = false
                        offsetP2 = -UISH * 0.83
                    } else {
                        offsetP2 += 2
                        isScreenP2 = true
                    }
                    if(offsetP3 > 750){
                        isScreenP3 = false
                        offsetP3 = -UISH * 0.6
                    } else {
                        offsetP3 += 2.5
                        isScreenP3 = true
                    }
                    if(offsetP4 > 960){
                        isScreenP4 = false
                        offsetP4 = -UISH * 0.31
                    } else {
                        offsetP4 += 3.5
                        isScreenP4 = true
                    }
                    if(offsetP5 > 220){
                        isScreenP5 = false
                        offsetP5 = -UISH * 1.24
                    } else {
                        offsetP5 += 2.8
                        isScreenP5 = true
                    }
                    if(offsetP6 > 550){
                        isScreenP6 = false
                        offsetP6 = -UISH * 0.87
                    } else {
                        offsetP6 += 2.5
                        isScreenP6 = true
                    }
                    if(offsetP7 > 850){
                        isScreenP7 = false
                        offsetP7 = -UISH * 0.5
                    } else {
                        offsetP7 += 2.2
                        isScreenP7 = true
                    }
                    if(offsetP8 > 1200){
                        isScreenP8 = false
                        offsetP8 = -UISH * 0.1
                    } else {
                        offsetP8 += 2.7
                        isScreenP8 = true
                    }
                }
                .onAppear{
                    animate = true
                    withAnimation(Animation.easeInOut(duration: 2).repeatForever()) {
                        offsetC += 16
                        if offsetC > 8 {
                            offsetC = -8
                        }
                    }
                }
            
            Text("ManglarExplora")
                .font(.custom("Poppins-SemiBold", size: 70))
                .foregroundStyle(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                .position(x: UISW * 0.28, y: UISH * 0.14)
                .offset(y: start ? -UISH * 1.1 : 0)
            
            Text("ManglarExplora educa y compromete a los usuarios con la preservación de los manglares al destacar su biodiversidad y su función esencial como barreras naturales ante el cambio climático. ¡Únete y descubre la clave para su preservación!")
                .font(.custom("Poppins-Medium", size: 15.3))
                .frame(width: 480)
                .foregroundStyle(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                .position(x: UISW * 0.245, y: UISH * 0.28)
                .offset(y: start ? -UISH * 1.1 : 0)
            Image("pasto1")
                .resizable()
                .scaledToFit()
                .frame(width: UISW * 1.2)
                .position(x: UISW * 0.45, y: UISH * 0.999)
                .offset(y: start ? -UISH * 1.2 : 0)
            
            Image("pasto")
                .resizable()
                .scaledToFit()
                .frame(width: UISW * 1.8)
                .position(x: UISW * 0.71, y: UISH * 0.97)
                .offset(x: start ? UISW * -0.5 : 0, y: start ? UISH * -1.1 : 0)
            
            Image("fig1")
                .resizable()
                .frame(width: UISW * 0.91, height: UISH * 0.53)
                .position(x: UISW * 0.18, y: UISH * 0.29)
                .opacity(0.75)
                .offset(x: start ? 0 : UISW * -1.9)
            
            Circle()
                .foregroundColor(Color(UIColor(red: 0.19, green: 0.29, blue: 0.19, alpha: 1.00)))
                .frame(width: 110)
                .position(x: UISW * 0.72, y: UISH * 0.38)
                .opacity(0.75)
                .offset(y: start ? 0 : UISH * 2.5)
            
            Image("fig3")
                .resizable()
                .frame(width: UISW * 0.5, height: UISH * 0.35)
                .position(x: UISW * 1.05, y: UISH * 0.27)
                .opacity(0.75)
                .offset(x: start ? 0 : UISW * 1.5)
            
            Text("¿Por qué usar ManglarExplora?")
                .font(.custom("Poppins-SemiBold", size: 35))
                .foregroundStyle(Color(UIColor(red: 0.92, green: 0.89, blue: 0.63, alpha: 1.00)))
                .position(x: UISW * 0.3, y: UISH * 0.15)
                .offset(x: start ? 0 : UISW * -1.8)
            
            Text("ManglarExplora es la clave para desbloquear el misterioso mundo de los manglares. Desde su biodiversidad fascinante hasta su papel vital contra el cambio climático, esta aplicación ofrece una experiencia envolvente que educa, inspira y empodera a los usuarios para ser guardianes activos de estos valiosos ecosistemas.")
                .font(.custom("Poppins-Medium", size: 14.5))
                .frame(width: 580)
                .foregroundStyle(Color(UIColor(red: 0.81, green: 0.84, blue: 0.81, alpha: 1.00)))
                .position(x: UISW * 0.31, y: UISH * 0.27)
                .offset(x: start ? 0 : UISW * -2.5)
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(width: UISW * 0.25, height: UISH * 0.54)
                .position(x: UISW * 0.15, y: UISH * 0.79)
                .foregroundColor(Color(UIColor(red: 0.28, green: 0.48, blue: 0.28, alpha: 1.00)))
                .offset(y: start ? 0 : UISH * 1.2)
                .offset(y: isTapped1 ? 0 : UISH * 1)
                .opacity(isTapped1 ? 1 : 0)
            
            ZStack {
                Image("fig2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 110)
                    .opacity(isTapped1 ? 0 : 0.3)
                    .offset(x: -3, y: -2)
                    .offset(x: isTapped1 ? 120 : -20)
                
                Circle()
                    .foregroundColor(Color(UIColor(red: 0.19, green: 0.29, blue: 0.19, alpha: 1.00)))
                    .frame(width: 70)
                    .padding(.bottom, 5)
                    .opacity(0.75)
                    .offset(x: isTapped1 ? 120 : -20)
                
                Image("icon-vr")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40)
                    .foregroundColor(.white)
                    .offset(x: isTapped1 ? 120 : -20)
                
                Text("Experiencia Inmersiva")
                    .font(.custom("Poppins-SemiBold", size: 25))
                    .foregroundStyle(.white)
                    .frame(width: 150)
                    .offset(x: 0,y: 100)
                
                Text("Sumérgete en la belleza de los manglares a través de la Realidad Aumentada.")
                    .font(.custom("Poppins-Medium", size: 14.5))
                    .frame(width: 250)
                    .foregroundStyle(Color(UIColor(red: 0.81, green: 0.84, blue: 0.81, alpha: 1.00)))
                    .offset(x: 40,y: 180)
                    .opacity(isTapped1 ? 1 : 0)
                
            }.frame(width: UISW * 0.25, height: UISH * 0.4)
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.3)) {
                        isTapped1.toggle()
                        isTapped2 = false
                        isTapped3 = false
                        isTapped4 = false
                    }
                }
                .position(x: UISW * 0.12, y: UISH * 0.65)
                .offset(y: start ? 0 : UISH * 1.2)
                .offset(y: isTapped1 ? -50 : 0)
                
            Text("Empezar  →")
                .font(.custom("Poppins-Bold", size: 14.5))
                .frame(width: 250)
                .foregroundStyle(.white)
                .position(x: UISW * 0.093, y: UISH * 0.98)
                .offset(y: start ? 0 : UISH * 1.2)
                .opacity(isTapped1 ? 1 : 0)
                .offset(y: isTapped1 ? -50 : 0)
                .onTapGesture {
                    withAnimation (.spring(duration: 0.5)){
                        isVR = true
                    }
                }
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(width: UISW * 0.25, height: UISH * 0.54)
                .position(x: UISW * 0.4, y: UISH * 0.79)
                .foregroundColor(Color(UIColor(red: 0.28, green: 0.48, blue: 0.28, alpha: 1.00)))
                .offset(y: start ? 0 : UISH * 1.2)
                .offset(y: isTapped2 ? 0 : UISH * 1)
                .opacity(isTapped2 ? 1 : 0)

            ZStack {
                Image("fig2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 110)
                    .rotationEffect(.degrees(70))
                    .opacity(isTapped2 ? 0 : 0.3)
                    .offset(x: -1, y: -5)
                    .offset(x: isTapped2 ? 130 : -30)
                
                Circle()
                    .foregroundColor(Color(UIColor(red: 0.19, green: 0.29, blue: 0.19, alpha: 1.00)))
                    .frame(width: 70)
                    .padding(.bottom, 5)
                    .opacity(0.75)
                    .offset(x: isTapped2 ? 130 : -30)
                
                Image("icon-buscar")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40)
                    .foregroundColor(.white)
                    .offset(x: isTapped2 ? 130 : -30)
                
                Text("Clasificador de objetos")
                    .font(.custom("Poppins-SemiBold", size: 25))
                    .foregroundStyle(.white)
                    .frame(width: 210)
                    .offset(x: 5,y: 100)
                
                Text("Mediante Machine Learning puedes aprender sobre la biodegradabilidad de los objetos.")
                    .font(.custom("Poppins-Medium", size: 14.5))
                    .frame(width: 260)
                    .foregroundStyle(Color(UIColor(red: 0.81, green: 0.84, blue: 0.81, alpha: 1.00)))
                    .offset(x: 50,y: 180)
                    .opacity(isTapped2 ? 1 : 0)
                
            }.frame(width: UISW * 0.25, height: UISH * 0.4)
                .position(x: UISW * 0.36, y: UISH * 0.65)
                .offset(y: start ? 0 : UISH * 1.8)
                .offset(y: isTapped2 ? -50 : 0)
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.3)) {
                        isTapped1 = false
                        isTapped2.toggle()
                        isTapped3 = false
                        isTapped4 = false
                    }
                }
            
            Text("Empezar  →")
                .font(.custom("Poppins-Bold", size: 14.5))
                .frame(width: 250)
                .foregroundStyle(.white)
                .position(x: UISW * 0.334, y: UISH * 0.98)
                .offset(y: start ? 0 : UISH * 1.2)
                .opacity(isTapped2 ? 1 : 0)
                .offset(y: isTapped2 ? -50 : 0)
                .onTapGesture {
                    withAnimation (.spring(duration: 0.5)){
                        isClassifier = true
                    }
                }
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(width: UISW * 0.25, height: UISH * 0.54)
                .position(x: UISW * 0.65, y: UISH * 0.79)
                .foregroundColor(Color(UIColor(red: 0.28, green: 0.48, blue: 0.28, alpha: 1.00)))
                .offset(y: start ? 0 : UISH * 1.2)
                .offset(y: isTapped3 ? 0 : UISH * 1)
                .opacity(isTapped3 ? 1 : 0)
            
            ZStack {
                Image("fig2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 110)
                    .rotationEffect(.degrees(220))
                    .opacity(isTapped3 ? 0 : 0.3)
                    .offset(x: 2, y: 3)
                    .offset(x: isTapped3 ? 120 : -25)

                Circle()
                    .foregroundColor(Color(UIColor(red: 0.19, green: 0.29, blue: 0.19, alpha: 1.00)))
                    .frame(width: 70)
                    .opacity(0.75)
                    .offset(x: isTapped3 ? 120 : -25)
                
                Image("icon-juego")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40)
                    .foregroundColor(.white)
                    .offset(x: isTapped3 ? 120 : -25)
                
                Text("Juego Interactivo")
                    .font(.custom("Poppins-SemiBold", size: 25))
                    .foregroundStyle(.white)
                    .frame(width: 150)
                    .offset(x: -15,y: 100)
                
                Text("Únete a la lucha por su preservación en el emocionante mundo de Manglaria.")
                    .font(.custom("Poppins-Medium", size: 14.5))
                    .frame(width: 250)
                    .foregroundStyle(Color(UIColor(red: 0.81, green: 0.84, blue: 0.81, alpha: 1.00)))
                    .offset(x: 40,y: 180)
                    .opacity(isTapped3 ? 1 : 0)
                
            }.frame(width: UISW * 0.25, height: UISH * 0.4)
                .position(x: UISW * 0.62, y: UISH * 0.65)
                .offset(y: start ? 0 : UISH * 2.4)
                .offset(y: isTapped3 ? -50 : 0)
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.3)) {
                        isTapped1 = false
                        isTapped2 = false
                        isTapped3.toggle()
                        isTapped4 = false
                    }
                }
            
            Text("Empezar  →")
                .font(.custom("Poppins-Bold", size: 14.5))
                .frame(width: 250)
                .foregroundStyle(.white)
                .position(x: UISW * 0.59, y: UISH * 0.98)
                .offset(y: start ? 0 : UISH * 1.2)
                .opacity(isTapped3 ? 1 : 0)
                .offset(y: isTapped3 ? -50 : 0)
                .onTapGesture {
                    withAnimation (.spring(duration: 0.5)){
                        isMapView = true
                    }
                }
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(width: UISW * 0.25, height: UISH * 0.54)
                .position(x: UISW * 0.85, y: UISH * 0.79)
                .foregroundColor(Color(UIColor(red: 0.28, green: 0.48, blue: 0.28, alpha: 1.00)))
                .offset(y: start ? 0 : UISH * 1.2)
                .offset(y: isTapped4 ? 0 : UISH * 1)
                .opacity(isTapped4 ? 1 : 0)
            
            ZStack {
                Image("fig2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 110)
                    .rotationEffect(.degrees(220))
                    .opacity(isTapped4 ? 0 : 0.3)
                    .offset(x: 2, y: 3)
                    .offset(x: isTapped4 ? 120 : -25)

                Circle()
                    .foregroundColor(Color(UIColor(red: 0.19, green: 0.29, blue: 0.19, alpha: 1.00)))
                    .frame(width: 70)
                    .opacity(0.75)
                    .offset(x: isTapped4 ? 120 : -25)
                
                Image("icon-mapa")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40)
                    .foregroundColor(.white)
                    .offset(x: isTapped4 ? 120 : -25)
                
                Text("Manglares en México")
                    .font(.custom("Poppins-SemiBold", size: 25))
                    .foregroundStyle(.white)
                    .frame(width: 150)
                    .offset(x: -15,y: 100)
                
                Text("Conoce sobre los manglares más importantes que hay en el país.")
                    .font(.custom("Poppins-Medium", size: 14.5))
                    .frame(width: 250)
                    .foregroundStyle(Color(UIColor(red: 0.81, green: 0.84, blue: 0.81, alpha: 1.00)))
                    .offset(x: 40,y: 180)
                    .opacity(isTapped4 ? 1 : 0)
                
            }.frame(width: UISW * 0.25, height: UISH * 0.4)
                .position(x: UISW * 0.825, y: UISH * 0.65)
                .offset(y: start ? 0 : UISH * 2.4)
                .offset(x: isTapped3 ? 100 : 0)
                .offset(y: isTapped4 ? -50 : 0)
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.3)) {
                        isTapped1 = false
                        isTapped2 = false
                        isTapped3 = false
                        isTapped4.toggle()
                    }
                }
            
            Text("Empezar  →")
                .font(.custom("Poppins-Bold", size: 14.5))
                .frame(width: 250)
                .foregroundStyle(.white)
                .position(x: UISW * 0.794, y: UISH * 0.98)
                .offset(y: start ? 0 : UISH * 1.2)
                .opacity(isTapped4 ? 1 : 0)
                .offset(y: isTapped4 ? -50 : 0)
                .offset(x: isTapped3 ? 100 : 0)
                .onTapGesture {
                    withAnimation (.spring(duration: 0.5)){
                        isAboutView = true
                    }
                }
            
            Image(systemName: "house.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 40)
                .foregroundColor(.white)
                .position(x: UISW * 0.93, y: UISH * 0.1)
                .offset(x: start ? 0 : UISW)
                .onTapGesture {
                    withAnimation (.spring(duration: 2)){
                        start = false
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.3) {
                        withAnimation {
                            start2 = false
                        }
                    }
                }
            
            Button {
                withAnimation (.smooth(duration: 0.7)){
                    isVideo = true 
                }
            } label: {
                Text("¿Qué son los manglares?")
                    .font(.custom("Poppins-Bold", size: 16))
                    .foregroundStyle(.white)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 15)
                    .background(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
            }.cornerRadius(30)
                .position(x: UISW * 0.16, y: UISH * 0.4)
                .offset(x: start ? 0 : UISW * -1.8)
            
            Image("main-icon")
                .resizable()
                .scaledToFit()
                .frame(width: 40)
                .position(x: UISW * 0.88, y: UISH * 0.1)
                .offset(x: start ? 0 : UISW)
            
            Text("B I O C O D E R S")
                .font(.custom("Poppins-Regular", size: 20))
                .foregroundStyle(.white)
                .position(x: UISW * 0.78, y: UISH * 0.1)
                .offset(x: start ? 0 : UISW)
            
            if(isMapView == true){
                MapaView(isMapView: $isMapView)
                    .onAppear{
                        SoundManager.instance.stopSound()
                        withAnimation (.spring(.smooth(duration: 10))){
                            SoundManager.instance.playSound(sound: .mapa)
                        }
                    }
            } else if(isAboutView == true){
                ConoceView(isAboutView: $isAboutView)
                    .onAppear{
                        SoundManager.instance.stopSound()
                        SoundManager.instance.playSound(sound: .menu)
                    }
            } else if(isClassifier == true){
                MLClasificadorView(isClassifier: $isClassifier)
                    .onAppear{
                        SoundManager.instance.stopSound()
                    }
            } else if(isVR == true){
                VRView(isVR: $isVR)
                    .onAppear{
                        SoundManager.instance.stopSound()
                    }
            } else if(isVideo == true){
//                VideoView(isVideo: $isVideo)
                Rectangle()
                    .foregroundColor(.black)
                    .frame(width: UISW, height: UISH)
                    .position(x: UISW * 0.5, y: UISH * 0.5)
                    .opacity(0.7)
                    .onAppear{
                        SoundManager.instance.stopSound()
                    }
                
                
                VideoPlayer(player: player)
                    .frame(width: UISW * 0.864, height: UISH * 0.7)
                    .cornerRadius(20)
                
                ZStack {
                    Circle()
                        .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                        .frame(width: 50)
                    
                    Image(systemName: "xmark")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.white)
                        .frame(width: 20)
                        .bold()
                    
                }
                .position(x: UISW * 0.11, y: UISH * 0.2)
                    .onTapGesture {
                        withAnimation(.spring(duration: 0.7)) {
                            isVideo = false
                        }
                    }
            } else {
                Circle()
                    .foregroundColor(.clear)
                    .allowsHitTesting(false)
                    .onAppear{
                        SoundManager.instance.playSound(sound: .menu)
                    }
            }

            
        }.ignoresSafeArea()
    }
}

#Preview {
    MenuView()
}
