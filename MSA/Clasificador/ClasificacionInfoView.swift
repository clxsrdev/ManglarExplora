
import SwiftUI

struct ClasificacionInfoView: View {
    
    let infoDic: [Int: (clasificacion: String, color:Color, info:String, icon:String, title: String)] = [
        0: ("Papel", Color(UIColor(red: 231/255, green: 200/255, blue: 26/255, alpha: 1.00)), "La clasificación de color amarillo suele destinarse a la recoleccion de residuos de papel. Incluye periódicos, revistas, etc.Estos materiales pueden ser reciclados y utilizados para la fabricación de nuevos productos de papel contribuyendo significativamente a la reducción de la tala de árboles y la conservación de recursos naturales .", "memorandum", "Amarillo" ),
        1: ("Plastico",Color(UIColor(red: 0/255, green: 58/255, blue: 109/255, alpha: 1.00)),"La clasificación de color azul oscuro esta destinado para envases de plástico PET. Ejemplos de plásticos PET incluyen botellas de agua, botellas de refrescos, envases de productos alimenticios, etc. El plástico PET es ampliamente reciclado y puede utilizarse para fabricar nuevos envases, textiles y otros productos.", "botellaa", "Azul oscuro"),
        2: ("Metal",Color(UIColor(red: 54/255, green: 149/255, blue: 233/255, alpha: 1.00)), "La clasificacion de color azul claro se utiliza comúnmente para la recogida de envases de metal. Incluye latas de aluminio, latas de conserva, envases de aerosol, tapas metálicas, etc. Los metales reciclados pueden utilizarse para fabricar nuevos productos metálicos y reducir la dependencia de los recursos naturales.", "bote-de-pintura", "Azul claro"),
        3: ("Vidrio",Color(UIColor(red: 158/255, green: 206/255, blue: 249/255, alpha: 1.00)), "La clasficación de color azul agua puede identificar contenedores destinados a la recogida de vidrio.\nIncluye botellas de vidrio, frascos, tarros, envases de alimentos, etc.\nEl vidrio reciclado puede transformarse en nuevos envases de vidrio y otros productos de vidrio.", "beber", "Azul agua"),
        4: ("Cartón", Color(UIColor(red: 31/255, green: 171/255, blue: 19/255, alpha: 1.00)), "La clasificación de color verde está destinada a residuos orgánicos. El cartón reciclado tiene múltiples aplicaciones como la elaboración de materiales de embalaje sostenibles. Reciclar cartón ayuda a reducir los residuos enviados a vertederos y contribuye a la conservación de los recursos naturales y la protección del medio ambiente.", "cajas", "Verde"),
    ]
    
    
    @Binding var indexDic : Int
    @Binding var showInfo: Bool

    @State var opacityRetroceso1 = 0.0
    @State var opacityRetroceso2 = 0.1
    
   
    var body: some View {
        ZStack{
            Color.black
                .opacity(0.6)
            
            Rectangle()
                .frame(width: 700, height: 500)
                .foregroundColor(Color.white)
                .cornerRadius(30)
            
            
            Image(systemName: "xmark.circle")
                .resizable()
                .frame(width: 25, height: 25)
                .foregroundColor(.red)
                .position(x: 275, y:195)
                .onTapGesture {
                    showInfo.toggle()
                }
                
                
            Group{
                Circle()
                    .frame(width: 300)
                    .foregroundColor(infoDic[indexDic]?.color ?? .white)
                    .opacity(0.13)
                
                Circle()
                    .frame(width: 250)
                    .foregroundColor(infoDic[indexDic]?.color ?? .white)
                    .opacity(0.2)
                
                Circle()
                    .frame(width: 200)
                    .foregroundColor(infoDic[indexDic]?.color ?? .white)
                    .overlay{
                        VStack{
                            Image(infoDic[indexDic]?.icon ?? "")
                                .resizable()
                                .frame(width: 80, height: 80)
                            
                            Text(infoDic[indexDic]?.clasificacion ?? "")
                                .font(.custom("Poppins-SemiBold", size: 26))
                                .foregroundColor(.white)
                        }
                    }
            }.position(x:930 ,y:200)
                    
                    
            HStack{
                
                Image(systemName: "control")
                    .resizable()
                    .frame(width: 50, height: 25)
                    .rotationEffect(.degrees(-90))
                    .foregroundColor(.gray)
                    .opacity(opacityRetroceso1)
                    .position(x:280, y:430)
                    .onTapGesture {
                        opacityRetroceso2 = 0.1
                        if indexDic == 1 {
                            opacityRetroceso1 = 0
                        }
                        indexDic -= 1
                    }
                
                VStack{
                    Text(infoDic[indexDic]?.title ?? "")
                        .foregroundColor(infoDic[indexDic]?.color ?? .white)
                        .font(.custom("Poppins-Bold", size: 50))
                        .padding(.bottom)
                    
                    
                    Text(infoDic[indexDic]?.info ?? "")
                        .frame(width: 420)
                        .foregroundColor(Color.black)
                        .font(.custom("Poppins-Regular", size: 18))
                        .lineSpacing(10)
                        .multilineTextAlignment(.leading)
                    
                }
                    
                
                Image(systemName: "control")
                    .resizable()
                    .frame(width: 50, height: 25)
                    .rotationEffect(.degrees(90))
                    .foregroundColor(.gray)
                    .opacity(opacityRetroceso2)
                    .position(x:86, y:430)
                    .onTapGesture {
                        opacityRetroceso1 = 0.1
                        
                        indexDic += 1
                        if indexDic == infoDic.count-1 {
                            opacityRetroceso2 = 0
                        }
                    }
                
            }
            
        }.edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ClasificacionInfoView( indexDic: .constant(4), showInfo: .constant(false))
}
