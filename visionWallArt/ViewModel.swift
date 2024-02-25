//
//  ViewModel.swift
//  visionWallArt
//
//  Created by Dwight Benignus on 2/1/24.
//

import Foundation
import Observation

enum FlowState {
    case idle
    case intro
    case projectileFlying
    case updateWallArt
}

@Observable
class ViewModel {
    var flowState = FlowState.idle
}
