import ARKit
import SwiftUI
import RealityKit

struct VRView: View {
    
    @Binding var isVR: Bool
    
    var UISW: CGFloat = UIScreen.main.bounds.width
    var UISH: CGFloat = UIScreen.main.bounds.height
    
    var body: some View {
        ZStack{
            
            Color.black
            
            ARViewContainer()
                .edgesIgnoringSafeArea(.all)
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
            .position(x: UISW * 0.05, y: UISH * 0.08)
                .onTapGesture {
                    withAnimation(.spring(duration: 0.7)) {
                        isVR = false
                    }
                }
            
        }.ignoresSafeArea()
    }
}

struct ARViewContainer: UIViewRepresentable {
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        //Cargando el modelo
        let modelEntity = try? ModelEntity.load(named: "Manglar2")

        // Agregar luces de escena
        arView.automaticallyConfigureSession = true

        // Definiendo un plano horizontal
        let configuration = ARWorldTrackingConfiguration()
        configuration.planeDetection = [.horizontal]
        arView.session.run(configuration)
        
        // Crear un anclaje para el plano horizontal
        let anchorEntity = AnchorEntity(plane: .horizontal, classification: .any)
        anchorEntity.addChild(modelEntity!) //Añadiendo el modelo
        arView.scene.addAnchor(anchorEntity)
        
        return arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
}


struct VRView_Previews: PreviewProvider {
    static var previews: some View {
        let isVr = State(initialValue: false)
        VRView(isVR: isVr.projectedValue)
    }
}

