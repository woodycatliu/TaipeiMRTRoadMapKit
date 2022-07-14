//
//  ContentView.swift
//  TaipeiMRTRoadMapKitDemo
//
//  Created by Woody on 2022/6/17.
//

import SwiftUI
import TaipeiMRTRoadMapKit

struct ContentView: View {
    @State var stations: [PositionChecker] = []
    var body: some View {
        VStack {
            Text(stations.isEmpty ? "" : stations.map { $0.getStations().map { $0.id }.joined(separator: ", ") }.joined(separator: ", "))
                .lineLimit(2)
                .frame(width: nil, height: 60, alignment: .leading)
                .font(.largeTitle)
                .scaledToFit()
                .minimumScaleFactor(0.01)
            StationPicker(stations: $stations)
                .clipped()
                .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
