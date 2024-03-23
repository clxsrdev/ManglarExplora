//
//  ConoceView.swift
//  MSA
//
//  Created by ADMIN UNACH on 05/03/24.
//

import SwiftUI

struct ConoceView: View {
    
    @Binding var isAboutView: Bool
    
    @State var isManglar1: Bool = false
    @State var isManglar2: Bool = false
    @State var isManglar3: Bool = false
    @State var isManglar4: Bool = false
    @State var isManglar5: Bool = false
    @State var isManglar6: Bool = true
    
    @State var isUbi: Bool = true
    @State var isArea: Bool = false
    @State var isTemp: Bool = false
    
    var opacidad: Double = 0.6
    
    var UISW: CGFloat = UIScreen.main.bounds.width
    var UISH: CGFloat = UIScreen.main.bounds.height
    
    var body: some View {
        ZStack{
            
            Color.black
            
            Image("ejeM1")
                .resizable()
                .frame(width: UISW * 1.1, height: UISH)
                .opacity(isManglar1 ? 1 : 0)
                .position(x: UISW * 0.5, y: UISH * 0.5)
            
            Rectangle()
                .foregroundColor(.black)
                .frame(width: UISW * 2, height: UISH)
                .position(x: UISW * 0.5, y: UISH * 0.5)
                .opacity(opacidad)
                .opacity(isManglar1 ? 1 : 0)
            
            Text("Quintana Roo")
                .font(.custom("Poppins-Regular", size: 25))
                .foregroundStyle(.white)
                .position(x: UISW * 0.18, y: UISH * 0.22)
                .opacity(isManglar1 ? 1 : 0)
            
            Text("Manglar de Sian KA'AN")
                .font(.custom("Poppins-Bold", size: 40))
                .foregroundStyle(.white)
                .position(x: UISW * 0.305, y: UISH * 0.29)
                .opacity(isManglar1 ? 1 : 0)
            
            Text("A 30 años de su decreto, es un caso de éxito en la conservación. Posee un sistema de ríos subterráneos de agua dulce que interconectan los cenotes y los Petenes, único en la Península de Yucatán y el mundo; éste es el más importante capital.")
                .font(.custom("Poppins-Medium", size: 15))
                .frame(width: 470)
                .foregroundStyle(Color(UIColor(red: 0.81, green: 0.84, blue: 0.81, alpha: 1.00)))
                .position(x: UISW * 0.31, y: UISH * 0.43)
                .opacity(isManglar1 ? 1 : 0)
            
            Text("Además de ser una de las áreas con singular belleza paisajística tiene gran importancia para la región y el mundo por los servicios ambientales que otorga, como es el caso de los reservorios de Carbono encontrados en los manglares.")
                .font(.custom("Poppins-Medium", size: 15))
                .frame(width: 470)
                .foregroundStyle(Color(UIColor(red: 0.81, green: 0.84, blue: 0.81, alpha: 1.00)))
                .position(x: UISW * 0.31, y: UISH * 0.56)
                .opacity(isManglar1 ? 1 : 0)
            
            Image("ejeM2")
                .resizable()
                .frame(width: UISW * 1.1)
                .opacity(isManglar2 ? 1 : 0)
            
            Rectangle()
                .foregroundColor(.black)
                .frame(width: UISW * 2, height: UISH)
                .position(x: UISW * 0.5, y: UISH * 0.5)
                .opacity(opacidad)
                .opacity(isManglar2 ? 1 : 0)
            
            Text("Yucatán")
                .font(.custom("Poppins-Regular", size: 25))
                .foregroundStyle(.white)
                .position(x: UISW * 0.154, y: UISH * 0.22)
                .opacity(isManglar2 ? 1 : 0)
            
            Text("Manglar de Celestún")
                .font(.custom("Poppins-Bold", size: 40))
                .foregroundStyle(.white)
                .position(x: UISW * 0.289, y: UISH * 0.29)
                .opacity(isManglar2 ? 1 : 0)
            
            Text("Este manglar es conocido por su biodiversidad excepcional y su importancia ecológica. Alberga una gran variedad de especies de flora y fauna, muchas de las cuales son endémicas de la región.")
                .font(.custom("Poppins-Medium", size: 15))
                .frame(width: 450)
                .foregroundStyle(Color(UIColor(red: 0.81, green: 0.84, blue: 0.81, alpha: 1.00)))
                .position(x: UISW * 0.302, y: UISH * 0.43)
                .opacity(isManglar2 ? 1 : 0)
            
            Text("Entre las especies más destacadas se encuentran los flamencos rosados, que utilizan el manglar como lugar de alimentación y reproducción durante ciertas épocas del año.")
                .font(.custom("Poppins-Medium", size: 15))
                .frame(width: 450)
                .foregroundStyle(Color(UIColor(red: 0.81, green: 0.84, blue: 0.81, alpha: 1.00)))
                .position(x: UISW * 0.302, y: UISH * 0.55)
                .opacity(isManglar2 ? 1 : 0)
            
            Image("ejeM3")
                .resizable()
                .scaledToFit()
                .frame(width: UISW * 1.24)
                .opacity(isManglar3 ? 1 : 0)
                .position(x: UISW * 0.5, y: UISH * 0.5)
            
            Rectangle()
                .foregroundColor(.black)
                .frame(width: UISW * 2, height: UISH)
                .position(x: UISW * 0.5, y: UISH * 0.5)
                .opacity(opacidad)
                .opacity(isManglar3 ? 1 : 0)
            
            Text("Quintana Roo")
                .font(.custom("Poppins-Regular", size: 25))
                .foregroundStyle(.white)
                .position(x: UISW * 0.18, y: UISH * 0.22)
                .opacity(isManglar3 ? 1 : 0)
            
            Text("Manglares de Chetumal")
                .font(.custom("Poppins-Bold", size: 35))
                .foregroundStyle(.white)
                .position(x: UISW * 0.295, y: UISH * 0.29)
                .opacity(isManglar3 ? 1 : 0)
            
            Text("Estos manglares son parte de la Reserva de la Biosfera Banco Chinchorro y de la Reserva de la Biosfera Río Hondo, áreas protegidas que salvaguardan la rica biodiversidad y los valiosos servicios ambientales de la región.")
                .font(.custom("Poppins-Medium", size: 15))
                .frame(width: 450)
                .foregroundStyle(Color(UIColor(red: 0.81, green: 0.84, blue: 0.81, alpha: 1.00)))
                .position(x: UISW * 0.305, y: UISH * 0.406)
                .opacity(isManglar3 ? 1 : 0)
            
            Text("Este sistema de manglares abarca una extensa área de humedales, estuarios y canales que se entrelazan a lo largo de la bahía de Chetumal, creando un hábitat único y productivo.")
                .font(.custom("Poppins-Medium", size: 15))
                .frame(width: 450)
                .foregroundStyle(Color(UIColor(red: 0.81, green: 0.84, blue: 0.81, alpha: 1.00)))
                .position(x: UISW * 0.305, y: UISH * 0.53)
                .opacity(isManglar3 ? 1 : 0)
            
            Image("ejeM4")
                .resizable()
                .frame(width: UISW * 1.1)
                .opacity(isManglar4 ? 1 : 0)
            
            Rectangle()
                .foregroundColor(.black)
                .frame(width: UISW * 2, height: UISH)
                .position(x: UISW * 0.5, y: UISH * 0.5)
                .opacity(opacidad)
                .opacity(isManglar4 ? 1 : 0)
            
            Text("Campeche")
                .font(.custom("Poppins-Regular", size: 25))
                .foregroundStyle(.white)
                .position(x: UISW * 0.165, y: UISH * 0.22)
                .opacity(isManglar4 ? 1 : 0)
            
            Text("Manglar de la Laguna de Términos")
                .font(.custom("Poppins-Bold", size: 28))
                .foregroundStyle(.white)
                .position(x: UISW * 0.314, y: UISH * 0.29)
                .opacity(isManglar4 ? 1 : 0)
            
            Text("Los manglares de la Laguna de Términos son reconocidos por su importancia como hábitat de reproducción, alimentación y refugio para una amplia gama de especies marinas, aves acuáticas y mamíferos.")
                .font(.custom("Poppins-Medium", size: 15))
                .frame(width: 450)
                .foregroundStyle(Color(UIColor(red: 0.81, green: 0.84, blue: 0.81, alpha: 1.00)))
                .position(x: UISW * 0.3, y: UISH * 0.41)
                .opacity(isManglar4 ? 1 : 0)
            
            Text("Además de su rica biodiversidad, los manglares de la Laguna de Términos desempeñan un papel crucial en la protección de la costa contra la erosión y los efectos de los fenómenos climáticos.")
                .font(.custom("Poppins-Medium", size: 15))
                .frame(width: 450)
                .foregroundStyle(Color(UIColor(red: 0.81, green: 0.84, blue: 0.81, alpha: 1.00)))
                .position(x: UISW * 0.3, y: UISH * 0.54)
                .opacity(isManglar4 ? 1 : 0)

            Image("ejeM5")
                .resizable()
                .frame(width: UISW * 1.1)
                .opacity(isManglar5 ? 1 : 0)
            
            Rectangle()
                .foregroundColor(.black)
                .frame(width: UISW * 2, height: UISH)
                .position(x: UISW * 0.5, y: UISH * 0.5)
                .opacity(opacidad)
                .opacity(isManglar5 ? 1 : 0)
            
            Text("Oaxaca")
                .font(.custom("Poppins-Regular", size: 25))
                .foregroundStyle(.white)
                .position(x: UISW * 0.151, y: UISH * 0.22)
                .opacity(isManglar5 ? 1 : 0)
            
            Text("Manglar de la costa de Oaxaca")
                .font(.custom("Poppins-Bold", size: 33))
                .foregroundStyle(.white)
                .position(x: UISW * 0.331, y: UISH * 0.29)
                .opacity(isManglar5 ? 1 : 0)
            
            Text("Los manglares de la costa de Oaxaca se encuentran principalmente en estuarios y áreas protegidas a lo largo de la costa, donde las aguas cálidas del Pacífico se encuentran con las corrientes fluviales que descienden de las montañas cercanas.")
                .font(.custom("Poppins-Medium", size: 15))
                .frame(width: 450)
                .foregroundStyle(Color(UIColor(red: 0.81, green: 0.84, blue: 0.81, alpha: 1.00)))
                .position(x: UISW * 0.301, y: UISH * 0.415)
                .opacity(isManglar5 ? 1 : 0)
            
            Text("Estos manglares están formados por especies adaptadas a las condiciones salinas y pueden incluir manglares rojos, negros y blancos, entre otros.")
                .font(.custom("Poppins-Medium", size: 15))
                .frame(width: 450)
                .foregroundStyle(Color(UIColor(red: 0.81, green: 0.84, blue: 0.81, alpha: 1.00)))
                .position(x: UISW * 0.302, y: UISH * 0.54)
                .opacity(isManglar5 ? 1 : 0)
            
            Image("ejeM6")
                .resizable()
                .frame(width: UISW * 1.1)
                .opacity(isManglar6 ? 1 : 0)
            
            Rectangle()
                .foregroundColor(.black)
                .frame(width: UISW * 2, height: UISH)
                .position(x: UISW * 0.5, y: UISH * 0.5)
                .opacity(opacidad)
                .opacity(isManglar6 ? 1 : 0)
            
            Text("Chiapas")
                .font(.custom("Poppins-Regular", size: 25))
                .foregroundStyle(.white)
                .position(x: UISW * 0.155, y: UISH * 0.2)
                .opacity(isManglar6 ? 1 : 0)
            
            Text("Manglar de la Encrucijada")
                .font(.custom("Poppins-Bold", size: 35))
                .foregroundStyle(.white)
                .position(x: UISW * 0.31, y: UISH * 0.27)
                .opacity(isManglar6 ? 1 : 0)
            
            Text("Los mangles de La Encrucijada, dice el directivo de Conanp regional, son la guardería de todas las larvas y huevecillos de crustáceos, camarones, almejas y peces; sus raíces en aguas no tan profundas forman un enrejado que evita que entren los peces más grandes y se los coman.")
                .font(.custom("Poppins-Medium", size: 15))
                .frame(width: 450)
                .foregroundStyle(Color(UIColor(red: 0.81, green: 0.84, blue: 0.81, alpha: 1.00)))
                .position(x: UISW * 0.305, y: UISH * 0.4)
                .opacity(isManglar6 ? 1 : 0)
            
            Text("Este territorio posee las cuatro especies más importantes de manglar. De hecho, algunas fuentes sobre ecología afirman que en Chiapas crecen los más grandes de México y que también están entre los más altos del continente americano.")
                .font(.custom("Poppins-Medium", size: 15))
                .frame(width: 450)
                .foregroundStyle(Color(UIColor(red: 0.81, green: 0.84, blue: 0.81, alpha: 1.00)))
                .position(x: UISW * 0.305, y: UISH * 0.55)
                .opacity(isManglar6 ? 1 : 0)
            
            ZStack{
                RoundedRectangle(cornerRadius: 30)
                    .foregroundColor(Color.black.opacity(0.4))
                    .blur(radius: 0.9)

                RoundedRectangle(cornerRadius: 30)
                    .background(.clear)
                    .opacity(0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color(UIColor(red: 0.10, green: 0.14, blue: 0.16, alpha: 1.00)).opacity(0.2), lineWidth: 1)
                    )
                
                Text("Manglares")
                    .font(.custom("Poppins-SemiBold", size: 35))
                    .foregroundStyle(.white)
                    .offset(x: -90, y: -260)
                
                ScrollViewReader { proxy in
                    ScrollView(showsIndicators: false){
                        VStack(spacing: 20){
                            if !isManglar1 {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(.white)
                                    
                                    Image("ejeM1")
                                        .resizable()
                                        .frame(width: 120, height: 120)
                                        .cornerRadius(10)
                                        .offset(x: -100)
                                    
                                    Text("Manglar de Sian KA'AN")
                                        .font(.custom("Poppins-Bold", size: 15))
                                        .foregroundStyle(.black)
                                        .offset(x: 67, y: -40)
                                    
                                    Text("Posee un sistema de ríos subterráneos de agua dulce que interconectan los cenotes y los Petenes.")
                                        .font(.custom("Poppins-Medium", size: 10))
                                        .frame(width: 180)
                                        .foregroundStyle(.black)
                                        .offset(x: 65, y: 20)
                                    
                                }.frame(width: UISW * 0.32, height: UISH * 0.2)
                                    .onTapGesture {
                                        withAnimation(.easeInOut(duration: 0.5)) {
                                            isManglar1 = true
                                            isManglar2 = false
                                            isManglar3 = false
                                            isManglar4 = false
                                            isManglar5 = false
                                            isManglar6 = false
                                        }
                                    }
                            }
                            
                            if !isManglar2 {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(.white)
                                    
                                    Image("ejeM2")
                                        .resizable()
                                        .frame(width: 120, height: 120)
                                        .cornerRadius(10)
                                        .offset(x: -100)
                                    
                                    Text("Manglar de Celestún")
                                        .font(.custom("Poppins-Bold", size: 15))
                                        .foregroundStyle(.black)
                                        .offset(x: 60, y: -40)
                                    
                                    Text("Este manglar es conocido por su biodiversidad excepcional y su importancia ecológica.")
                                        .font(.custom("Poppins-Medium", size: 10))
                                        .frame(width: 180)
                                        .foregroundStyle(.black)
                                        .offset(x: 65, y: 20)
                                    
                                }.frame(width: UISW * 0.32, height: UISH * 0.2)
                                    .onTapGesture {
                                        withAnimation(.easeInOut(duration: 0.5)) {
                                            isManglar1 = false
                                            isManglar2 = true
                                            isManglar3 = false
                                            isManglar4 = false
                                            isManglar5 = false
                                            isManglar6 = false
                                        }
                                    }
                            }
                            if !isManglar3 {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(.white)
                                    
                                    Image("ejeM3")
                                        .resizable()
                                        .frame(width: 120, height: 120)
                                        .cornerRadius(10)
                                        .offset(x: -100)
                                    
                                    Text("Manglar de Chetumal")
                                        .font(.custom("Poppins-Bold", size: 15))
                                        .foregroundStyle(.black)
                                        .offset(x: 65, y: -40)
                                    
                                    Text("Estos manglares son parte de la Reserva de la Biosfera Banco Chinchorro y de la Reserva de la Biosfera Río Hondo.")
                                        .font(.custom("Poppins-Medium", size: 10))
                                        .frame(width: 180)
                                        .foregroundStyle(.black)
                                        .offset(x: 65, y: 20)
                                    
                                }.frame(width: UISW * 0.32, height: UISH * 0.2)
                                    .onTapGesture {
                                        withAnimation(.easeInOut(duration: 0.5)) {
                                            isManglar1 = false
                                            isManglar2 = false
                                            isManglar3 = true
                                            isManglar4 = false
                                            isManglar5 = false
                                            isManglar6 = false
                                        }
                                    }
                            }

                            if !isManglar4 {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(.white)
                                    
                                    Image("ejeM4")
                                        .resizable()
                                        .frame(width: 120, height: 120)
                                        .cornerRadius(10)
                                        .offset(x: -100)
                                    
                                    Text("Manglar de la Laguna de Términos")
                                        .font(.custom("Poppins-Bold", size: 11))
                                        .foregroundStyle(.black)
                                        .offset(x: 77, y: -40)
                                    
                                    Text("Son reconocidos por su importancia como hábitat de reproducción, alimentación y refugio para una amplia gama de especies.")
                                        .font(.custom("Poppins-Medium", size: 10))
                                        .frame(width: 180)
                                        .foregroundStyle(.black)
                                        .offset(x: 69, y: 20)
                                    
                                }.frame(width: UISW * 0.32, height: UISH * 0.2)
                                    .onTapGesture {
                                        withAnimation(.easeInOut(duration: 0.5)) {
                                            isManglar1 = false
                                            isManglar2 = false
                                            isManglar3 = false
                                            isManglar4 = true
                                            isManglar5 = false
                                            isManglar6 = false
                                        }
                                    }
                            }

                            if !isManglar5 {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(.white)
                                    
                                    Image("ejeM5")
                                        .resizable()
                                        .frame(width: 120, height: 120)
                                        .cornerRadius(10)
                                        .offset(x: -100)
                                    
                                    Text("Manglar de Oaxaca")
                                        .font(.custom("Poppins-Bold", size: 15))
                                        .foregroundStyle(.black)
                                        .offset(x: 56, y: -40)
                                    
                                    Text("Se encuentran principalmente en estuarios y áreas protegidas a lo largo de la costa.")
                                        .font(.custom("Poppins-Medium", size: 10))
                                        .frame(width: 180)
                                        .foregroundStyle(.black)
                                        .offset(x: 66, y: 20)
                                    
                                }.frame(width: UISW * 0.32, height: UISH * 0.2)
                                    .onTapGesture {
                                        withAnimation(.easeInOut(duration: 0.5)) {
                                            isManglar1 = false
                                            isManglar2 = false
                                            isManglar3 = false
                                            isManglar4 = false
                                            isManglar5 = true
                                            isManglar6 = false
                                        }
                                    }
                            }
                            
                            if !isManglar6 {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(.white)
                                    
                                    Image("ejeM6")
                                        .resizable()
                                        .frame(width: 120, height: 120)
                                        .cornerRadius(10)
                                        .offset(x: -100)
                                    
                                    Text("Manglar de la Encrucijada")
                                        .font(.custom("Poppins-Bold", size: 13))
                                        .foregroundStyle(.black)
                                        .offset(x: 65, y: -40)
                                    
                                    Text("Se encuentran principalmente en estuarios y áreas protegidas a lo largo de la costa.")
                                        .font(.custom("Poppins-Medium", size: 10))
                                        .frame(width: 180)
                                        .foregroundStyle(.black)
                                        .offset(x: 66, y: 20)
                                    
                                }.frame(width: UISW * 0.32, height: UISH * 0.2)
                                    .onTapGesture {
                                        withAnimation(.easeInOut(duration: 0.5)) {
                                            isManglar1 = false
                                            isManglar2 = false
                                            isManglar3 = false
                                            isManglar4 = false
                                            isManglar5 = false
                                            isManglar6 = true
                                        }
                                    }
                            }

                        }
                    }
                }.frame(height: 490)
                    .offset(y: 30)
                
            }.frame(width: UISW * 0.4, height: UISH * 0.8)
                .position(x: UISW * 0.78, y: UISH * 0.5)
            
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
            .position(x: UISW * 0.1, y: UISH * 0.08)
                .onTapGesture {
                    withAnimation(.spring(duration: 0.7)) {
                        isAboutView = false
                    }
                }
            
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.white)
                .frame(width: UISW * 0.38, height: UISH * 0.23)
                .position(x: UISW * 0.3, y: UISH * 0.77)
            
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                .frame(width: UISW * 0.30, height: UISH * 0.006)
                .position(x: UISW * 0.29, y: UISH * 0.75)
            
            Text("Ubicación")
                .font(.custom("Poppins-Bold", size: 28))
                .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                .position(x: UISW * 0.2, y: UISH * 0.714)
                .opacity(isUbi ? 1 : 0)
                .offset(x: isUbi ? 0 : -50)
            
            Image("ubi")
                .resizable()
                .scaledToFit()
                .frame(width: 40)
                .position(x: UISW * 0.29, y: UISH * 0.705)
                .opacity(isUbi ? 1 : 0)
                .offset(x: isUbi ? 0 : -50)
            
            Text("Situados en la Reserva de la Biosfera Ría Celestún en el estado de Yucatán.")
                .font(.custom("Poppins-Regular", size: 15))
                .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                .frame(width: 350)
                .position(x: UISW * 0.28, y: UISH * 0.81)
                .opacity(isUbi ? 1 : 0)
                .offset(x: isUbi ? 0 : -50)
                .opacity(isManglar2 ? 1 : 0)
            
            Text("Abarca partes de los municipios de Tulum y Felipe Carrillo Puerto en Quintana Roo, México.")
                .font(.custom("Poppins-Regular", size: 15))
                .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                .frame(width: 350)
                .position(x: UISW * 0.28, y: UISH * 0.81)
                .opacity(isUbi ? 1 : 0)
                .offset(x: isUbi ? 0 : -50)
                .opacity(isManglar1 ? 1 : 0)
            
            Text("El Manglar de la Bahía de Chetumal se encuentra en el estado de Quintana Roo, en México, cerca de la frontera con Belice.")
                .font(.custom("Poppins-Regular", size: 15))
                .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                .frame(width: 350)
                .position(x: UISW * 0.28, y: UISH * 0.81)
                .opacity(isUbi ? 1 : 0)
                .offset(x: isUbi ? 0 : -50)
                .opacity(isManglar3 ? 1 : 0)
            
            Text("Se encuentran en el estado de Campeche, en la costa suroeste de la península de Yucatán, México.")
                .font(.custom("Poppins-Regular", size: 15))
                .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                .frame(width: 350)
                .position(x: UISW * 0.28, y: UISH * 0.81)
                .opacity(isUbi ? 1 : 0)
                .offset(x: isUbi ? 0 : -50)
                .opacity(isManglar4 ? 1 : 0)
            
            Text("Se encuentran en el estado de Oaxaca, en la costa sur de México, a lo largo del Océano Pacífico.")
                .font(.custom("Poppins-Regular", size: 15))
                .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                .frame(width: 350)
                .position(x: UISW * 0.28, y: UISH * 0.81)
                .opacity(isUbi ? 1 : 0)
                .offset(x: isUbi ? 0 : -50)
                .opacity(isManglar5 ? 1 : 0)
            
            Text("Se encuentra en el estado de Chiapas, en el sureste de México.")
                .font(.custom("Poppins-Regular", size: 15))
                .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                .frame(width: 350)
                .position(x: UISW * 0.28, y: UISH * 0.81)
                .opacity(isUbi ? 1 : 0)
                .offset(x: isUbi ? 0 : -50)
                .opacity(isManglar6 ? 1 : 0)
            
            Text("Área")
                .font(.custom("Poppins-Bold", size: 28))
                .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                .position(x: UISW * 0.22, y: UISH * 0.714)
                .opacity(isArea ? 1 : 0)
                .offset(x: !isArea ? 0 : -50)
            
            Image("area")
                .resizable()
                .scaledToFit()
                .frame(width: 40)
                .position(x: UISW * 0.28, y: UISH * 0.705)
                .opacity(isArea ? 1 : 0)
                .offset(x: !isArea ? 0 : -50)
            
            ZStack {
                Text("Cuenta con una superficie de ")
                    .font(.custom("Poppins-Regular", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                +  Text("528,148 ")
                    .font(.custom("Poppins-Bold", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                +  Text("hectáreas junto con el Área de Protección de Flora y Fauna Uaymil")
                    .font(.custom("Poppins-Regular", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                
            }.frame(width: 350)
                .position(x: UISW * 0.33, y: UISH * 0.81)
                .opacity(isArea ? 1 : 0)
                .offset(x: !isArea ? 0 : -50)
                .opacity(isManglar1 ? 1 : 0)
            
            ZStack {
                Text("La Reserva de la Biosfera Ría Celestún, donde se ubica el manglar, tiene una superficie total de aproximadamente ")
                    .font(.custom("Poppins-Regular", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                +  Text("146,000 ")
                    .font(.custom("Poppins-Bold", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                +  Text("hectáreas.")
                    .font(.custom("Poppins-Regular", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                
            }.frame(width: 350)
                .position(x: UISW * 0.33, y: UISH * 0.81)
                .opacity(isArea ? 1 : 0)
                .offset(x: !isArea ? 0 : -50)
                .opacity(isManglar2 ? 1 : 0)
            
            ZStack {
                Text("El manglar de la Bahía de Chetumal es un área extensa que abarca aproximadamente ")
                    .font(.custom("Poppins-Regular", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                +  Text("20,000 ")
                    .font(.custom("Poppins-Bold", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                +  Text("hectáreas de superficie.")
                    .font(.custom("Poppins-Regular", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                
            }.frame(width: 350)
                .position(x: UISW * 0.33, y: UISH * 0.81)
                .opacity(isArea ? 1 : 0)
                .offset(x: !isArea ? 0 : -50)
                .opacity(isManglar3 ? 1 : 0)
            
            ZStack {
                Text("La extensión total de los manglares en la Laguna de Términos es de aproximadamente ")
                    .font(.custom("Poppins-Regular", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                +  Text("705,000 ")
                    .font(.custom("Poppins-Bold", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                +  Text("hectáreas.")
                    .font(.custom("Poppins-Regular", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
            }.frame(width: 350)
                .position(x: UISW * 0.33, y: UISH * 0.81)
                .opacity(isArea ? 1 : 0)
                .offset(x: !isArea ? 0 : -50)
                .opacity(isManglar4 ? 1 : 0)
            
            ZStack {
                Text("La extensión total de los manglares en la Costa de Oaxaca varía, pero abarca varias áreas a lo largo de la costa, sumando una ")
                    .font(.custom("Poppins-Regular", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                +  Text("extensión significativa.")
                    .font(.custom("Poppins-Bold", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
            }.frame(width: 350)
                .position(x: UISW * 0.33, y: UISH * 0.81)
                .opacity(isArea ? 1 : 0)
                .offset(x: !isArea ? 0 : -50)
                .opacity(isManglar5 ? 1 : 0)
            
            ZStack {
                Text("La Reserva de la Biosfera La Encrucijada, que protege el manglar, abarca una superficie total de aproximadamente ")
                    .font(.custom("Poppins-Regular", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                +  Text("144,885 ")
                    .font(.custom("Poppins-Bold", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                +  Text("hectáreas.")
                    .font(.custom("Poppins-Regular", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
            }.frame(width: 350)
                .position(x: UISW * 0.33, y: UISH * 0.81)
                .opacity(isArea ? 1 : 0)
                .offset(x: !isArea ? 0 : -50)
                .opacity(isManglar6 ? 1 : 0)
            
            Text("Temperatura")
                .font(.custom("Poppins-Bold", size: 28))
                .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                .position(x: UISW * 0.222, y: UISH * 0.714)
                .opacity(isTemp ? 1 : 0)
                .offset(x: isTemp ? 0 : -50)
            
            Image("termometro")
                .resizable()
                .scaledToFit()
                .frame(width: 40)
                .position(x: UISW * 0.32, y: UISH * 0.705)
                .opacity(isTemp ? 1 : 0)
                .offset(x: isTemp ? 0 : -50)
            
            ZStack {
                Text("La temperatura promedio anual suele oscilar entre los ")
                    .font(.custom("Poppins-Regular", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                +  Text("25°C ")
                    .font(.custom("Poppins-Bold", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                +  Text("y los ")
                    .font(.custom("Poppins-Regular", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                +  Text("28°C")
                    .font(.custom("Poppins-Bold", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
            }.frame(width: 350)
                .position(x: UISW * 0.29, y: UISH * 0.81)
                .opacity(isTemp ? 1 : 0)
                .offset(x: isTemp ? 0 : -50)
                .opacity(isManglar1 ? 1 : 0)
            
            ZStack {
                Text("La temperatura promedio anual suele oscilar entre los ")
                    .font(.custom("Poppins-Regular", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                +  Text("25°C ")
                    .font(.custom("Poppins-Bold", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                +  Text("y los ")
                    .font(.custom("Poppins-Regular", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                +  Text("28°C")
                    .font(.custom("Poppins-Bold", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
            }.frame(width: 350)
                .position(x: UISW * 0.29, y: UISH * 0.81)
                .opacity(isTemp ? 1 : 0)
                .offset(x: isTemp ? 0 : -50)
                .opacity(isManglar3 ? 1 : 0)

            
            ZStack {
                Text("La temperatura promedio anual suele oscilar entre los ")
                    .font(.custom("Poppins-Regular", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                +  Text("25°C ")
                    .font(.custom("Poppins-Bold", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                +  Text("y los ")
                    .font(.custom("Poppins-Regular", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                +  Text("30°C")
                    .font(.custom("Poppins-Bold", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
            }.frame(width: 350)
                .position(x: UISW * 0.29, y: UISH * 0.81)
                .opacity(isTemp ? 1 : 0)
                .offset(x: isTemp ? 0 : -50)
                .opacity(isManglar2 ? 1 : 0)
            
            ZStack {
                Text("La temperatura promedio anual suele oscilar entre los ")
                    .font(.custom("Poppins-Regular", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                +  Text("20°C ")
                    .font(.custom("Poppins-Bold", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                +  Text("y los ")
                    .font(.custom("Poppins-Regular", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                +  Text("35°C")
                    .font(.custom("Poppins-Bold", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
            }.frame(width: 350)
                .position(x: UISW * 0.29, y: UISH * 0.81)
                .opacity(isTemp ? 1 : 0)
                .offset(x: isTemp ? 0 : -50)
                .opacity(isManglar4 ? 1 : 0)
            
            ZStack {
                Text("La temperatura promedio anual suele oscilar entre los ")
                    .font(.custom("Poppins-Regular", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                +  Text("25°C ")
                    .font(.custom("Poppins-Bold", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                +  Text("y los ")
                    .font(.custom("Poppins-Regular", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                +  Text("35°C")
                    .font(.custom("Poppins-Bold", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
            }.frame(width: 350)
                .position(x: UISW * 0.29, y: UISH * 0.81)
                .opacity(isTemp ? 1 : 0)
                .offset(x: isTemp ? 0 : -50)
                .opacity(isManglar5 ? 1 : 0)
            
            ZStack {
                Text("La temperatura promedio anual suele oscilar entre los ")
                    .font(.custom("Poppins-Regular", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                +  Text("25°C ")
                    .font(.custom("Poppins-Bold", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                +  Text("y los ")
                    .font(.custom("Poppins-Regular", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                +  Text("35°C")
                    .font(.custom("Poppins-Bold", size: 15))
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
            }.frame(width: 350)
                .position(x: UISW * 0.29, y: UISH * 0.81)
                .opacity(isTemp ? 1 : 0)
                .offset(x: isTemp ? 0 : -50)
                .opacity(isManglar6 ? 1 : 0)
            
            Button{
                withAnimation (.smooth(duration: 0.5)){
                    isUbi = false
                    isArea = true
                }
            }label: {
                ZStack {
                    Circle()
                        .foregroundColor(.white)
                        .frame(width: 49)
                    
                    Image(systemName: "arrowshape.right.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                }
            }.position(x: UISW * 0.49, y: UISH * 0.77)
                .opacity(isUbi ? 1 : 0)
            
            Button{
                withAnimation (.smooth(duration: 0.5)){
                    isArea = false
                    isTemp = true
                }
            }label: {
                ZStack {
                    Circle()
                        .foregroundColor(.white)
                        .frame(width: 49)
                    
                    Image(systemName: "arrowshape.right.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                }
            }.position(x: UISW * 0.49, y: UISH * 0.77)
                .opacity(isArea ? 1 : 0)
            
            Button{
                withAnimation (.smooth(duration: 0.5)){
                    isUbi = true
                    isArea = false
                }
            }label: {
                ZStack {
                    Circle()
                        .foregroundColor(.white)
                        .frame(width: 49)
                    
                    Image(systemName: "arrowshape.right.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .rotationEffect(.degrees(180))
                        .frame(width: 50)
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                }
            }.position(x: UISW * 0.11, y: UISH * 0.77)
                .opacity(isArea ? 1 : 0)
            
            Button{
                withAnimation (.smooth(duration: 0.5)){
                    isTemp = false
                    isArea = true
                }
            }label: {
                ZStack {
                    Circle()
                        .foregroundColor(.white)
                        .frame(width: 49)
                    
                    Image(systemName: "arrowshape.right.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .rotationEffect(.degrees(180))
                        .frame(width: 50)
                    .foregroundColor(Color(UIColor(red: 0.06, green: 0.13, blue: 0.09, alpha: 1.00)))
                }
            }.position(x: UISW * 0.11, y: UISH * 0.77)
                .opacity(isTemp ? 1 : 0)
            
        }.ignoresSafeArea()
    }
}

struct Conoce_Previews: PreviewProvider {
    static var previews: some View {
        let mapa = State(initialValue: false)
        return ConoceView(isAboutView: mapa.projectedValue)
    }
}
