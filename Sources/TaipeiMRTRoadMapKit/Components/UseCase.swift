//
//  UseCase.swift
//  MRTStationSelector
//
//  Created by Woody on 2022/6/17.
//

import SwiftUI
#if canImport(UIKit)

public protocol StationSearher: StationsSelectedPolicy {
    var selectedPolicy: StationsSelectedPolicy { get set }
    func findStation(_ stationPositions: [PositionChecker], point: CGPoint, size: CGSize)-> PositionChecker?
    func drawOnStationRoadMap(_ frames: [CGRect])-> [DrawOnImage<AnyView>]
}

public struct DefaultSearcher: StationSearher {
    public var selectedPolicy: StationsSelectedPolicy
    
    public func updateSelected(store stations: inout [PositionChecker], selected station: PositionChecker) {
        selectedPolicy.updateSelected(store: &stations, selected: station)
    }
    
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

public protocol StationsSelectedPolicy {
    func updateSelected(store stations: inout [PositionChecker], selected station: PositionChecker)
}

public struct SingleSelectedPolicy: StationsSelectedPolicy {
    public func updateSelected(store stations: inout [PositionChecker], selected station: PositionChecker) {
        let isSelected = stations.contains(where: { $0.id == station.id } )
        guard !isSelected else { return }
        stations.append(station)
    }
}

public struct MutiSelectedPolicy: StationsSelectedPolicy {
    public func updateSelected(store stations: inout [PositionChecker], selected station: PositionChecker) {
        let isSelected = stations.contains(where: { $0.id == station.id } )
        guard !isSelected else {
            stations.removeAll(where: { $0.id == station.id })
            return
        }
        stations.append(station)
    }
}


#endif
