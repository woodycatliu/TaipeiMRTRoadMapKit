//
//  ContentView.swift
//  MRTStationSelector
//
//  Created by Woody on 2022/6/14.
//

import SwiftUI

public struct StationPicker: View {
    public let stationSearcher: StationSearher
    @Binding public var stationsPosition: PositionChecker?
    @State public var drawViews: [DrawOnImage<AnyView>] = []
    
    public init(_ searcher: StationSearher, station: Binding<PositionChecker?>) {
        self.stationSearcher = searcher
        self._stationsPosition = station
    }
    
    public init(station: Binding<PositionChecker?>) {
        self.init(DefaultSearcher(), station: station)
    }
    
    public var body: some View {
            ImageZoomTapInsidePointView(drawViews: $drawViews, image: UIImage("routemap2020", ofType: "png")!, minimumScale: 1, maximumScale: 3) { location, size in
                Logger.touchLog(location, size)
                stationsPosition = stationSearcher.findStation(Stations.StationPositions, point: location, size: size)
                drawViews = stationSearcher.drawOnStationRoadMap(stationsPosition == nil ? [] : [stationsPosition!.convertFrameFrromView(size: size)])
            }
       
    }
}


struct StationPicker_Previews: PreviewProvider {
    @State var station: PositionChecker?
    static var previews: some View {
        StationPicker(station: StationPicker_Previews().$station)
    }
}

