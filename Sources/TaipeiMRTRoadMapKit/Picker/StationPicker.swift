//
//  ContentView.swift
//  MRTStationSelector
//
//  Created by Woody on 2022/6/14.
//

import SwiftUI

public struct StationPicker: View {
    public let stationSearcher: StationSearher
    @Binding public var stationsPositions: [PositionChecker]
    @State public var drawViews: [DrawOnImage<AnyView>] = []
    
    public init(_ searcher: StationSearher, stations: Binding<[PositionChecker]>) {
        self.stationSearcher = searcher
        self._stationsPositions = stations
    }
    
    public init(stations: Binding<[PositionChecker]>) {
        self.init(DefaultSearcher(selectedPolicy: MutiSelectedPolicy()), stations: stations)
    }
    
    public var body: some View {
            ImageZoomTapInsidePointView(drawViews: $drawViews, image: UIImage("routemap2020", ofType: "png")!, minimumScale: 1, maximumScale: 3) { location, size in
                Logger.touchLog(location, size)
//                stationsPositions = stationSearcher.findStation(Stations.StationPositions, point: location, size: size)
                if let station = stationSearcher.findStation(Stations.StationPositions, point: location, size: size) {
                    stationSearcher.updateSelected(store: &stationsPositions, selected: station)
                }
                
                drawViews = stationSearcher.drawOnStationRoadMap(stationsPositions.isEmpty ? [] : stationsPositions.map { $0.convertFrameFrromView(size: size) })
            }.onAppear(perform: {
                drawViews = stationSearcher.drawOnStationRoadMap(stationsPositions.isEmpty ? [] : stationsPositions.map { $0.convertFrameFrromView(size: OrignImgSize) })
            })
       
    }
}


struct StationPicker_Previews: PreviewProvider {
    @State var stations: [PositionChecker] = []
    static var previews: some View {
        StationPicker(stations: StationPicker_Previews().$stations)
    }
}

