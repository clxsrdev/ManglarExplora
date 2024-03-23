import SwiftUI

struct MLClasificadorView: View {
    
    @Binding var isClassifier: Bool
    
    @State var isPresenting: Bool = false
    @State var uiImage: UIImage?
    @State var sourceType: UIImagePickerController.SourceType = .photoLibrary
    
//    @ObservedObject var classifier: ImageClassifier
    @StateObject private var classifier = ImageClassifier()
    @State var opacidadVisible : Double = 0
    
    let colorDictionary: [String: (color: Color, numInfo: Int)] = [
        "vidrio": (Color(UIColor(red: 158/255, green: 206/255, blue: 249/255, alpha: 1.00)), 3),
        "papel": (Color(UIColor(red: 231/255, green: 200/255, blue: 26/255, alpha: 1.00)),0),
        "carton": (Color(UIColor(red: 31/255, green: 171/255, blue: 19/255, alpha: 1.00)), 4),
        "plastico": (Color(UIColor(red: 0/255, green: 58/255, blue: 109/255, alpha: 1.00)), 1),
        "metal": (Color(UIColor(red: 54/255, green: 149/255, blue: 233/255, alpha: 1.00)), 2),
        
    ]
    
    //Variables para presentar pop up de ClasificacionInfoView
    @State var showInfoView : Bool = false
    @State var numSendView : Int = 0 //Numero de la info del dic segun el resultado
    
    var body: some View {
        ZStack{
            Color.white
            
            VStack{
                ZStack{
                    HStack{
                        Group{
                            Image(systemName: "arrowshape.turn.up.backward")
                                .resizable()
                                .offset(x: -520, y: -10)
                                .onTapGesture {
                                    withAnimation (.spring(duration: 0.5)){
                                        isClassifier = false
                                    }
                                }
                            
                            if uiImage != nil{
                                Image(systemName: "trash")
                                    .resizable()
                                    .offset(x: 520, y: -10)
                                    .onTapGesture {
                                        uiImage = nil
                                        opacidadVisible = 0
                                    }
                            }
                        }.frame(width: 30, height: 30)
                        .foregroundColor(Color(UIColor(red: 16/255, green: 34/255, blue: 23/255, alpha: 1.00)))
                    }
                    
                    Text("Clasificador de objetos")
                        .font(.custom("Poppins-Bold", size: 55))
                        .foregroundColor(Color(UIColor(red: 16/255, green: 34/255, blue: 23/255, alpha: 1.00)))
                    
                }
//                .offset(x:0, y: -30)
                    
                
                if uiImage == nil{
                    HStack(spacing:60){
                        ZStack{
                            Group{
                                Rectangle()
                                    .frame(width: 300,height: 400)
                                    .foregroundColor(Color(UIColor(red: 16/255, green: 34/255, blue: 23/255, alpha: 1.00)))
                                    .cornerRadius(25)
                                
                                VStack{
                                    ZStack{
                                        Circle()
                                            .frame(width: 100, height: 100)
                                            .foregroundColor(Color(UIColor(red: 48/255, green: 73/255, blue: 48/255, alpha: 1)))
                                            .opacity(0.75)
                                        
                                        Image(systemName: "camera")
                                            .resizable()
                                            .frame(width: 45, height: 35)
                                            .foregroundColor(Color(UIColor(red: 254/255, green: 241/255, blue: 214/255, alpha: 1)))
                                    }.padding(10)
                                    
                                    Text("Tomar foto")
                                        .frame(width: 200)
                                        .foregroundColor(Color.white)
                                        .font(.custom("Poppins-Medium", size: 14.5))
                                }
                            }.onTapGesture {
                                isPresenting = true
                                sourceType = .camera
                                opacidadVisible = 1
                            }
                        }
                        
                        ZStack{
                            Group{
                                Rectangle()
                                    .frame(width: 300,height: 400)
                                    .foregroundColor(Color(UIColor(red: 254/255, green: 241/255, blue: 214/255, alpha: 1)))
                                    .cornerRadius(25)
                                
                                VStack{
                                    ZStack{
                                        Circle()
                                            .frame(width: 100, height: 100)
                                            .foregroundColor(Color.white)
                                        
                                        Image(systemName: "photo")
                                            .resizable()
                                            .foregroundColor(Color(UIColor(red: 16/255, green: 34/255, blue: 23/255, alpha: 1.00)))
                                            .frame(width: 50, height: 40)
                                    }.padding(10)
                                    
                                    Text("Elegir de galería")
                                        .frame(width: 200)
                                        .foregroundColor(Color(UIColor(red: 16/255, green: 34/255, blue: 23/255, alpha: 1.00)))
                                        .font(.custom("Poppins-Medium", size: 14.5))
                                        
                                }
                            }.onTapGesture {
                                isPresenting = true
                                sourceType = .photoLibrary
                                opacidadVisible = 1
                            }
                        }
                      
                    }
                }else{
                    
                    Image(uiImage: uiImage!)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 400, height: 400)
                        .clipped()
                    
                }
                
                    
                Group {
                    HStack{
                        HStack{
                            Text("MATERIAL: ")
                                .foregroundColor(Color(UIColor(red: 16/255, green: 34/255, blue: 23/255, alpha: 1.00)))
                                .font(.custom("Poppins-SemiBold", size: 20))
                            
                            if let imageClass = classifier.imageClass {
                                Text(imageClass.uppercased())
                                    .font(.custom("Poppins-SemiBold", size: 20))
                                    .foregroundColor(colorDictionary[imageClass]?.color ?? .white)
                                    .padding(.trailing,80)
                                
                            }
                            
                            Text("CLASIFICACION:")
                                .foregroundColor(Color(UIColor(red: 16/255, green: 34/255, blue: 23/255, alpha: 1.00)))
                                .font(.custom("Poppins-SemiBold", size: 20))
                            
                            if let imageClass = classifier.imageClass {
                                Circle()
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(colorDictionary[imageClass]?.color ?? .white)
                                    .overlay {
                                        Circle()
                                            .stroke(Color.white, lineWidth: 3)
                                    }
                                    .onAppear(){
                                        numSendView = colorDictionary[imageClass]?.numInfo ?? 0
                                    }
                            }
                        }
                        
                    }
                    .frame(width: 665, height: 60)
                    .background(Color(UIColor(red: 226/255, green: 231/255, blue: 233/255, alpha: 1.00)))
                    .cornerRadius(25)
                    .opacity(opacidadVisible)
                    
                }
                .padding(.top, 30)
                
                Text("Saber mas...")
                    .font(.custom("Poppins-Regular", size: 15))
                    .foregroundColor(Color(UIColor(red: 16/255, green: 34/255, blue: 23/255, alpha: 1.00)))
                    .padding(.bottom,-30)
                    .padding(.top,10)
                    .opacity(opacidadVisible)
                    .onTapGesture {
                        withAnimation (.spring(duration: 0.5)){
                            showInfoView = true
                        }
                    }
                
            }
            
            ClasificacionInfoView( indexDic: $numSendView, showInfo: $showInfoView)
                .offset(y: showInfoView ? 0 : UIScreen.main.bounds.width * 2)
            
        }.edgesIgnoringSafeArea(.all)
        
        
        
        .sheet(isPresented: $isPresenting){
            ImagePicker(uiImage: $uiImage, isPresenting:  $isPresenting, sourceType: $sourceType)
                .onDisappear{
                    if uiImage != nil {
                        classifier.detect(uiImage: uiImage!)
                    }
                }
            
        }
    }
}

struct MLCla_Previews: PreviewProvider {
    static var previews: some View {
        let clas = State(initialValue: false)
        return MLClasificadorView(isClassifier: clas.projectedValue)
    }
}


