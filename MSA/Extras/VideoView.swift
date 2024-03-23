//
//  VideoView.swift
//  MSA
//
//  Created by ADMIN UNACH on 07/03/24.
//

import SwiftUI
import AVKit

struct VideoView: View {
    
    @Binding var isVideo: Bool
    
    var UISW: CGFloat = UIScreen.main.bounds.width
    var UISH: CGFloat = UIScreen.main.bounds.height
    
    let player = AVPlayer(url: Bundle.main.url(forResource: "videoTest", withExtension: "mp4")!)
    
    var body: some View {
        ZStack{
            
            Rectangle()
                .foregroundColor(.black)
                .frame(width: UISW, height: UISH)
                .position(x: UISW * 0.5, y: UISH * 0.5)
                .opacity(0.7)
            
            
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
            
        }.ignoresSafeArea()
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        let isVid = State(initialValue: false)
        VideoView(isVideo: isVid.projectedValue)
    }
}

