//
//  ContentView.swift
//  visionWallArt
//
//  Created by Dwight Benignus on 2/1/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace


    var body: some View {
        VStack(alignment: .leading) {
                   Text("Welcome to Generative Doodle Art in Vision Pro")
                       .font(.extraLargeTitle2)
               }
               .padding(50)
               .glassBackgroundEffect()
               .onAppear {
                   Task {
                       await openImmersiveSpace(id: "ImmersiveSpace")
                   }
               }
        
    }
}

#Preview {
    ContentView() 
        .environment(ViewModel())
}
