//
//  UseCase.swift
//  MRTStationSelector
//
//  Created by Woody on 2022/6/17.
//

import SwiftUI
#if canImport(UIKit)

public protocol StationSearher {
    func findStation(_ stationPositions: [PositionChecker], point: CGPoint, size: CGSize)-> PositionChecker?
    func drawOnStationRoadMap(_ frames: [CGRect])-> [DrawOnImage<AnyView>]
}

public struct DefaultSearcher: StationSearher {
    
    public func findStation(_ stationPositions: [PositionChecker], point: CGPoint, size: CGSize)-> PositionChecker? {
        return stationPositions.first(where: { $0.isContain(sizeOfView: size, touchPosition: point)})
    }
    
    public func drawOnStationRoadMap(_ frames: [CGRect])-> [DrawOnImage<AnyView>] {
        return frames.map {
            DrawOnImage(frame: $0, contentBuilder: {
                AnyView(Color.clear.border(Color.black, width: 1.5))
            })
        }
    }
}
#endif
