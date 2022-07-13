//
//  ContentView.swift
//  TaipeiMRTRoadMapKitDemo
//
//  Created by Woody on 2022/6/17.
//

import SwiftUI
import TaipeiMRTRoadMapKit

struct ContentView: View {
    @State var stations: [PositionChecker]
    var body: some View {
        NavigationView {
            StationPicker(stations: $stations)
                .clipped()
                .padding()
                .ignoresSafeArea()
                .navigationTitle(station == nil ? "" : station!.getStations().map { $0.id }.joined(separator: ", "))
                .navigationViewStyle(.automatic)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
