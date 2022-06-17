//
//  Stations.swift
//  MRTStationSelector
//
//  Created by Woody on 2022/6/17.
//

public class Stations {
    public static var StationPositions: [PositionChecker] = [
        StationAttendant(stations: [
        StationLocation(id: "R02", pointOfAbsolute: .init(x: 767.5 / 960, y: 848.5 / 1286), sizeOFAbsolute: .init(width: 0.0208333, height: 0.01944012))]),
        StationAttendant(stations: [
            StationLocation(id: "G14", pointOfAbsolute: .init(x: 386.5 / 960, y: 676.5 / 1286), sizeOFAbsolute: .init(width: 0.0208333, height: 0.01944012)),
            StationLocation(id: "R11", pointOfAbsolute: .init(x: 406.5 / 960, y: 676.5 / 1286), sizeOFAbsolute: .init(width: 0.0208333, height: 0.01944012))
        ])
    ]
}
