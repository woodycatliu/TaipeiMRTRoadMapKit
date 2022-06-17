//
//  StationMapLogger.swift
//  MRTStationSelector
//
//  Created by Woody on 2022/6/17.
//

import SwiftUI

struct Logger {
    static var ShowLog: Bool = true
}
extension Logger {
    static func touchLog(_ location: CGPoint, _ size: CGSize) {
        guard ShowLog else { return }
        #if DEBUG
        print("Date: ", Date())
        print("Touch Point: ", location)
        print("ImageView Size: ", size)
        #endif
    }
}
