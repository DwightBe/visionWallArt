//
//  visionWallArtApp.swift
//  visionWallArt
//
//  Created by Dwight Benignus on 2/1/24.
//

import SwiftUI

@main
struct visionWallArtApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
