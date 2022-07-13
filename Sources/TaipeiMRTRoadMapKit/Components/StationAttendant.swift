//
//  StationAttendant.swift
//  ImageLocationPicker
//
//  Created by Woody on 2022/6/14.
//

import SwiftUI

extension CGRect {
   public init(_ center: CGPoint, _ size: CGSize) {
        let currentOrigin: CGPoint = CGPoint(x: center.x - size.width / 2, y: center.y - size.height / 2)
        self = CGRect(origin: currentOrigin, size: size)
    }
}

public struct StationLocation: Identifiable {
    public var id: String
    public var pointOfAbsolute: CGPoint
    public var sizeOFAbsolute: CGSize
}

extension StationLocation {
   public func convertFrameFrromView(size: CGSize)-> CGRect {
        let width: CGFloat = sizeOFAbsolute.width * size.width
        let height: CGFloat = sizeOFAbsolute.height * size.height
        let currentSize: CGSize = CGSize(width: width, height: height)
        let center: CGPoint = CGPoint(x: pointOfAbsolute.x * size.width, y: pointOfAbsolute.y * size.height)
        return CGRect(center, currentSize)
    }
}

public protocol PositionChecker {
    var id: String { get }
    func getStations()-> [StationLocation]
    func convertFrameFrromView(size: CGSize)-> CGRect
    func isContain(sizeOfView size: CGSize, touchPosition point: CGPoint)-> Bool
}

public extension PositionChecker {
    var id: String {
        return getStations().map { $0.id }.joined()
    }
}

public struct StationAttendant: PositionChecker {
    public let stations: [StationLocation]
    public func getStations() -> [StationLocation] {
        return stations
    }
    public func convertFrameFrromView(size: CGSize) -> CGRect {
        return stations.map { $0.convertFrameFrromView(size: size) }.reduce(CGRect.zero, {
            if $0 == .zero { return $1
            }
            return $0.union($1)
        })
    }
    public func isContain(sizeOfView size: CGSize, touchPosition point: CGPoint) -> Bool {
        return convertFrameFrromView(size: size).insetBy(dx: -5, dy: -5).contains(point)
    }
    
}
