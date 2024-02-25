//
//  visionWallArtApp.swift
//  visionWallArt
//
//  Created by Dwight Benignus on 2/1/24.
//

import SwiftUI

@main
struct visionWallArtApp: App {
    
    @State private var viewModel = ViewModel()
    
    init(){
        ImpactParticleSystem.registerSystem()
        ProjectileComponent.registerComponent()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(viewModel)
        }.windowStyle(.plain)

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
                .environment(viewModel)
        }
        
        WindowGroup(id: "doodle_canvas") {
            DoodleView()
                .environment(viewModel)
        }
    }
}
