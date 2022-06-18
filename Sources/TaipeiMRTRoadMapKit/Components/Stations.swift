//
//  Stations.swift
//  MRTStationSelector
//
//  Created by Woody on 2022/6/17.
//

fileprivate typealias SL = StationLocation

public class Stations {
    public static var StationPositions: [PositionChecker] = SL.Red.AllStationPositions + SL.Blue.AllStationPositions + SL.Green.AllStationPositions + SL.Brown.AllStationPositions + SL.Yellow.AllStationPositions + SL.Orange.AllStationPositions
    
}

extension StationLocation {
    struct Red {}
    struct Blue {}
    struct Green {}
    struct Brown {}
    struct Yellow {}
    struct Orange {}
}

// MARK: Red
extension StationLocation.Red {
    static let AllStationPositions: [StationAttendant] = [StationAttendant(stations: [R02]), StationAttendant(stations: [R03]), StationAttendant(stations: [R04]), StationAttendant(stations: [R05, SL.Brown.BR09]), StationAttendant(stations: [R06]), StationAttendant(stations: [R07, SL.Orange.O06]), StationAttendant(stations: [R08, SL.Green.G10]), StationAttendant(stations: [R09]), StationAttendant(stations: [R10, SL.Blue.BL12]), StationAttendant(stations: [R11, SL.Green.G14]), StationAttendant(stations: [R12]), StationAttendant(stations: [R13, SL.Orange.O11]), StationAttendant(stations: [R14]), StationAttendant(stations: [R15]), StationAttendant(stations: [R16]), StationAttendant(stations: [R17]), StationAttendant(stations: [R18]), StationAttendant(stations: [R19]), StationAttendant(stations: [R20]), StationAttendant(stations: [R21]), StationAttendant(stations: [R22]), StationAttendant(stations: [R22A]), StationAttendant(stations: [R23]), StationAttendant(stations: [R24]), StationAttendant(stations: [R25]), StationAttendant(stations: [R26]), StationAttendant(stations: [R27])]
    
    static let All: [StationLocation] = [R02, R03, R04, R05, R06, R07, R08, R09, R10, R11, R12, R13, R14, R15, R16, R17, R18, R19, R20, R21, R22, R22A, R23, R24, R25, R26, R27]
    
    static let R02: StationLocation = StationLocation(id: "R02",
                                                      pointOfAbsolute: .init(x: 767.5 / 960.0, y: 848.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let R03: StationLocation = StationLocation(id: "R03",
                                                      pointOfAbsolute: .init(x: 714.0 / 960.0, y: 848.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let R04: StationLocation = StationLocation(id: "R04",
                                                      pointOfAbsolute: .init(x: 662.5 / 960.0, y: 848.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let R05: StationLocation = StationLocation(id: "R05",
                                                      pointOfAbsolute: .init(x: 586.0 / 960.0, y: 848.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let R06: StationLocation = StationLocation(id: "R06",
                                                      pointOfAbsolute: .init(x: 540.0 / 960.0, y: 848.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let R07: StationLocation = StationLocation(id: "R07",
                                                      pointOfAbsolute: .init(x: 477.0 / 960.0, y: 848.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let R08: StationLocation = StationLocation(id: "R08",
                                                      pointOfAbsolute: .init(x: 405.0 / 960.0, y: 848.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let R09: StationLocation = StationLocation(id: "R09",
                                                      pointOfAbsolute: .init(x: 396.5 / 960.0, y: 803.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let R10: StationLocation = StationLocation(id: "R10",
                                                      pointOfAbsolute: .init(x: 406.5 / 960.0, y: 758.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let R11: StationLocation = StationLocation(id: "R11",
                                                      pointOfAbsolute: .init(x: 406.5 / 960.0, y: 676.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let R12: StationLocation = StationLocation(id: "R12",
                                                      pointOfAbsolute: .init(x: 396.5 / 960.0, y: 630.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let R13: StationLocation = StationLocation(id: "R13",
                                                      pointOfAbsolute: .init(x: 406.5 / 960.0, y: 586.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let R14: StationLocation = StationLocation(id: "R14",
                                                      pointOfAbsolute: .init(x:396.5 / 960.0, y: 524.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let R15: StationLocation = StationLocation(id: "R15",
                                                      pointOfAbsolute: .init(x:396.5 / 960.0, y: 479.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let R16: StationLocation = StationLocation(id: "R16",
                                                      pointOfAbsolute: .init(x:396.5 / 960.0, y: 434.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let R17: StationLocation = StationLocation(id: "R17",
                                                      pointOfAbsolute: .init(x:396.5 / 960.0, y: 388.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let R18: StationLocation = StationLocation(id: "R18",
                                                      pointOfAbsolute: .init(x:396.5 / 960.0, y: 344.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let R19: StationLocation = StationLocation(id: "R19",
                                                      pointOfAbsolute: .init(x:396.5 / 960.0, y: 298.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let R20: StationLocation = StationLocation(id: "R20",
                                                      pointOfAbsolute: .init(x:362.0 / 960.0, y: 268.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let R21: StationLocation = StationLocation(id: "R21",
                                                      pointOfAbsolute: .init(x:313.5 / 960.0, y: 268.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let R22: StationLocation = StationLocation(id: "R22",
                                                      pointOfAbsolute: .init(x:270.5 / 960.0, y: 268.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let R22A: StationLocation = StationLocation(id: "R22A",
                                                       pointOfAbsolute: .init(x:270.5 / 960.0, y: 224 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let R23: StationLocation = StationLocation(id: "R23",
                                                      pointOfAbsolute: .init(x:224.5 / 960.0, y: 268.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let R24: StationLocation = StationLocation(id: "R24",
                                                      pointOfAbsolute: .init(x:179.5 / 960.0, y: 268.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let R25: StationLocation = StationLocation(id: "R25",
                                                      pointOfAbsolute: .init(x:156.5 / 960.0, y: 238 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let R26: StationLocation = StationLocation(id: "R26",
                                                      pointOfAbsolute: .init(x:156.5 / 960.0, y: 193 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let R27: StationLocation = StationLocation(id: "R27",
                                                      pointOfAbsolute: .init(x:156.5 / 960.0, y: 144 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let R28: StationLocation = StationLocation(id: "R28",
                                                      pointOfAbsolute: .init(x:156.5 / 960.0, y: 95 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
}

// MARK: Blue
extension StationLocation.Blue {
    // remove list:
    // BL12 with R10,
    static let AllStationPositions: [StationAttendant] = [StationAttendant(stations: [BL01]), StationAttendant(stations: [BL02]), StationAttendant(stations: [BL03]), StationAttendant(stations: [BL04]), StationAttendant(stations: [BL05]), StationAttendant(stations: [BL06]), StationAttendant(stations: [BL07]), StationAttendant(stations: [BL08]), StationAttendant(stations: [BL09]), StationAttendant(stations: [BL10]), StationAttendant(stations: [BL11, SL.Green.G12]), StationAttendant(stations: [BL13]), StationAttendant(stations: [BL14, SL.Orange.O07]), StationAttendant(stations: [BL15, SL.Brown.BR10]), StationAttendant(stations: [BL16]), StationAttendant(stations: [BL17]), StationAttendant(stations: [BL18]), StationAttendant(stations: [BL19]), StationAttendant(stations: [BL20]), StationAttendant(stations: [BL21]), StationAttendant(stations: [BL22]), StationAttendant(stations: [BL23, SL.Brown.BR24])]
    
    static let All: [StationLocation] = [BL01, BL02, BL03, BL04, BL05, BL06, BL07, BL08, BL09, BL10, BL11, BL12, BL13, BL14, BL15, BL16, BL17, BL18, BL19, BL20, BL21, BL22, BL23]
    
    static let BL01: StationLocation = StationLocation(id: "BL01",
                                                       pointOfAbsolute: .init(x:199.5 / 960.0, y: 1190 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BL02: StationLocation = StationLocation(id: "BL02",
                                                       pointOfAbsolute: .init(x:199.5 / 960.0, y: 1145 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BL03: StationLocation = StationLocation(id: "BL03",
                                                       pointOfAbsolute: .init(x:199.5 / 960.0, y: 1098 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BL04: StationLocation = StationLocation(id: "BL04",
                                                       pointOfAbsolute: .init(x:199.5 / 960.0, y: 1051 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BL05: StationLocation = StationLocation(id: "BL05",
                                                       pointOfAbsolute: .init(x:199.5 / 960.0, y: 1005.5 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BL06: StationLocation = StationLocation(id: "BL06",
                                                       pointOfAbsolute: .init(x:199.5 / 960.0, y: 958.5 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BL07: StationLocation = StationLocation(id: "BL07",
                                                       pointOfAbsolute: .init(x:199.5 / 960.0, y: 909.5 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BL08: StationLocation = StationLocation(id: "BL08",
                                                       pointOfAbsolute: .init(x:199.5 / 960.0, y: 857.5 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BL09: StationLocation = StationLocation(id: "BL09",
                                                       pointOfAbsolute: .init(x:199.5 / 960.0, y: 808.5 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BL10: StationLocation = StationLocation(id: "BL10",
                                                       pointOfAbsolute: .init(x:241.5 / 960.0, y: 759 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BL11: StationLocation = StationLocation(id: "BL11",
                                                       pointOfAbsolute: .init(x:316.5 / 960.0, y: 759 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BL12: StationLocation = StationLocation(id: "BL12",
                                                       pointOfAbsolute: .init(x:387.5 / 960.0, y: 759 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BL13: StationLocation = StationLocation(id: "BL13",
                                                       pointOfAbsolute: .init(x:448.5 / 960.0, y: 759 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BL14: StationLocation = StationLocation(id: "BL14",
                                                       pointOfAbsolute: .init(x:488 / 960.0, y: 759 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BL15: StationLocation = StationLocation(id: "BL15",
                                                       pointOfAbsolute: .init(x:586 / 960.0, y: 759 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BL16: StationLocation = StationLocation(id: "BL16",
                                                       pointOfAbsolute: .init(x:655.5 / 960.0, y: 759 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BL17: StationLocation = StationLocation(id: "BL17",
                                                       pointOfAbsolute: .init(x:707.0 / 960.0, y: 759 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BL18: StationLocation = StationLocation(id: "BL18",
                                                       pointOfAbsolute: .init(x:760 / 960.0, y: 759 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BL19: StationLocation = StationLocation(id: "BL19",
                                                       pointOfAbsolute: .init(x:811.5 / 960.0, y: 759 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BL20: StationLocation = StationLocation(id: "BL20",
                                                       pointOfAbsolute: .init(x:865.5 / 960.0, y: 759 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BL21: StationLocation = StationLocation(id: "BL21",
                                                       pointOfAbsolute: .init(x:902 / 960.0, y: 725 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BL22: StationLocation = StationLocation(id: "BL22",
                                                       pointOfAbsolute: .init(x:902 / 960.0, y: 676.5 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BL23: StationLocation = StationLocation(id: "BL23",
                                                       pointOfAbsolute: .init(x:893 / 960.0, y: 621 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
}

// MARK: Green
extension StationLocation.Green {
    
    // remove list
    // G10 with R08
    // G12 with BL11
    // G14 with R11
    static let AllStationPositions: [StationAttendant] = [StationAttendant(stations: [G01]), StationAttendant(stations: [G02]), StationAttendant(stations: [G03]), StationAttendant(stations: [G03A]), StationAttendant(stations: [G04, SL.Yellow.Y07]), StationAttendant(stations: [G05]), StationAttendant(stations: [G06]), StationAttendant(stations: [G07]), StationAttendant(stations: [G08]), StationAttendant(stations: [G09, SL.Orange.O05]), StationAttendant(stations: [G11]), StationAttendant(stations: [G13]), StationAttendant(stations: [G15, SL.Orange.O08]), StationAttendant(stations: [G16, SL.Brown.BR11]), StationAttendant(stations: [G17]), StationAttendant(stations: [G18]), StationAttendant(stations: [G19])]
    
    static let All: [StationLocation] = [G01, G02, G03, G03A, G04, G05, G06, G07, G08, G09, G10, G11, G12, G13, G14, G15, G16, G17, G18, G19]
    
    static let G01: StationLocation = StationLocation(id: "G01",
                                                      pointOfAbsolute: .init(x:572 / 960.0, y: 1228.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let G02: StationLocation = StationLocation(id: "G02",
                                                      pointOfAbsolute: .init(x:572 / 960.0, y: 1186.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let G03: StationLocation = StationLocation(id: "G03",
                                                      pointOfAbsolute: .init(x:572 / 960.0, y: 1143.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let G03A: StationLocation = StationLocation(id: "G03A",
                                                       pointOfAbsolute: .init(x:526 / 960.0, y: 1143.5 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let G04: StationLocation = StationLocation(id: "G04",
                                                      pointOfAbsolute: .init(x:581 / 960.0, y: 1089.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let G05: StationLocation = StationLocation(id: "G05",
                                                      pointOfAbsolute: .init(x:572 / 960.0, y: 1041 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let G06: StationLocation = StationLocation(id: "G06",
                                                      pointOfAbsolute: .init(x:544.5 / 960.0, y: 1001.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let G07: StationLocation = StationLocation(id: "G07",
                                                      pointOfAbsolute: .init(x:512 / 960.0, y: 967 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let G08: StationLocation = StationLocation(id: "G08",
                                                      pointOfAbsolute: .init(x:479.5 / 960.0, y: 934 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let G09: StationLocation = StationLocation(id: "G09",
                                                      pointOfAbsolute: .init(x:433 / 960.0, y: 896 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let G10: StationLocation = StationLocation(id: "G10",
                                                      pointOfAbsolute: .init(x:387.5 / 960.0, y: 849 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let G11: StationLocation = StationLocation(id: "G11",
                                                      pointOfAbsolute: .init(x:332.5 / 960.0, y: 841.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let G12: StationLocation = StationLocation(id: "G12",
                                                      pointOfAbsolute: .init(x:336 / 960.0, y: 758.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let G13: StationLocation = StationLocation(id: "G13",
                                                      pointOfAbsolute: .init(x:326 / 960.0, y: 710.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let G14: StationLocation = StationLocation(id: "G14",
                                                      pointOfAbsolute: .init(x:386.5 / 960.0, y: 676.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let G15: StationLocation = StationLocation(id: "G15",
                                                      pointOfAbsolute: .init(x:488 / 960.0, y: 676.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let G16: StationLocation = StationLocation(id: "G16",
                                                      pointOfAbsolute: .init(x:586 / 960.0, y: 676.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let G17: StationLocation = StationLocation(id: "G17",
                                                      pointOfAbsolute: .init(x:662 / 960.0, y: 676.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let G18: StationLocation = StationLocation(id: "G18",
                                                      pointOfAbsolute: .init(x:712 / 960.0, y: 676.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let G19: StationLocation = StationLocation(id: "G19",
                                                      pointOfAbsolute: .init(x:769 / 960.0, y: 676.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
}

// MARK: Brown
extension StationLocation.Brown {
    
    // remove list
    // BR09 with R05
    // BR10 with BL15
    // BR11 with G16
    static let AllStationPositions: [StationAttendant] = [StationAttendant(stations: [BR01]), StationAttendant(stations: [BR02]), StationAttendant(stations: [BR03]), StationAttendant(stations: [BR04]), StationAttendant(stations: [BR05]), StationAttendant(stations: [BR06]), StationAttendant(stations: [BR07]), StationAttendant(stations: [BR08]), StationAttendant(stations: [BR12]), StationAttendant(stations: [BR13]), StationAttendant(stations: [BR14]), StationAttendant(stations: [BR15]), StationAttendant(stations: [BR16]), StationAttendant(stations: [BR17]), StationAttendant(stations: [BR18]), StationAttendant(stations: [BR19]), StationAttendant(stations: [BR20]), StationAttendant(stations: [BR21]), StationAttendant(stations: [BR22]), StationAttendant(stations: [BR23])]
    
    static let All: [StationLocation] = [BR01, BR02, BR03, BR04, BR05, BR06, BR07, BR08, BR09, BR10, BR11, BR12, BR13, BR14, BR15, BR16, BR17, BR18, BR19, BR20, BR21, BR22, BR23, BR24]
    
    static let BR01: StationLocation = StationLocation(id: "BR01",
                                                       pointOfAbsolute: .init(x:820 / 960.0, y: 1076.5 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BR02: StationLocation = StationLocation(id: "BR02",
                                                       pointOfAbsolute: .init(x:771.5 / 960.0, y: 1076.5 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BR03: StationLocation = StationLocation(id: "BR03",
                                                       pointOfAbsolute: .init(x:731.5 / 960.0, y: 1049 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BR04: StationLocation = StationLocation(id: "BR04",
                                                       pointOfAbsolute: .init(x:731.5 / 960.0, y: 1001 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BR05: StationLocation = StationLocation(id: "BR05",
                                                       pointOfAbsolute: .init(x:731.5 / 960.0, y: 953.0 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BR06: StationLocation = StationLocation(id: "BR06",
                                                       pointOfAbsolute: .init(x:694 / 960.0, y: 919.5 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BR07: StationLocation = StationLocation(id: "BR07",
                                                       pointOfAbsolute: .init(x:642 / 960.0, y: 919.5 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BR08: StationLocation = StationLocation(id: "BR08",
                                                       pointOfAbsolute: .init(x:595 / 960.0, y: 900.5 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BR09: StationLocation = StationLocation(id: "BR09",
                                                       pointOfAbsolute: .init(x:605 / 960.0, y: 848.5 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BR10: StationLocation = StationLocation(id: "BR10",
                                                       pointOfAbsolute: .init(x:605 / 960.0, y: 759 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BR11: StationLocation = StationLocation(id: "BR11",
                                                       pointOfAbsolute: .init(x:605 / 960.0, y: 676.5 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BR12: StationLocation = StationLocation(id: "BR12",
                                                       pointOfAbsolute: .init(x:595 / 960.0, y: 616.5 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BR13: StationLocation = StationLocation(id: "BR13",
                                                       pointOfAbsolute: .init(x:595 / 960.0, y: 569.5 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BR14: StationLocation = StationLocation(id: "BR14",
                                                       pointOfAbsolute: .init(x:595 / 960.0, y: 522.5 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BR15: StationLocation = StationLocation(id: "BR15",
                                                       pointOfAbsolute: .init(x:598.5 / 960.0, y: 475.5 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BR16: StationLocation = StationLocation(id: "BR16",
                                                       pointOfAbsolute: .init(x:649.5 / 960.0, y: 470 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BR17: StationLocation = StationLocation(id: "BR17",
                                                       pointOfAbsolute: .init(x:700 / 960.0, y: 470 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BR18: StationLocation = StationLocation(id: "BR18",
                                                       pointOfAbsolute: .init(x:748 / 960.0, y: 470 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BR19: StationLocation = StationLocation(id: "BR19",
                                                       pointOfAbsolute: .init(x:796 / 960.0, y: 470 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BR20: StationLocation = StationLocation(id: "BR20",
                                                       pointOfAbsolute: .init(x:850 / 960.0, y: 470 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BR21: StationLocation = StationLocation(id: "BR21",
                                                       pointOfAbsolute: .init(x:898 / 960.0, y: 475.5 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BR22: StationLocation = StationLocation(id: "BR22",
                                                       pointOfAbsolute: .init(x:901.5 / 960.0, y: 523 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BR23: StationLocation = StationLocation(id: "BR23",
                                                       pointOfAbsolute: .init(x:901.5 / 960.0, y: 570 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let BR24: StationLocation = StationLocation(id: "BR24",
                                                       pointOfAbsolute: .init(x:911 / 960.0, y: 621 / 1286.0),
                                                       sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    
}

// MARK: Yellow
extension StationLocation.Yellow {
    
    // remove list
    // Y07 with G04
    static let AllStationPositions: [StationAttendant] = [StationAttendant(stations: [Y07]), StationAttendant(stations: [Y08]), StationAttendant(stations: [Y09]), StationAttendant(stations: [Y10]), StationAttendant(stations: [Y11, SL.Orange.O02]), StationAttendant(stations: [Y12]), StationAttendant(stations: [Y13]), StationAttendant(stations: [Y14]), StationAttendant(stations: [Y15]), StationAttendant(stations: [Y16]), StationAttendant(stations: [Y17]), StationAttendant(stations: [Y18, SL.Orange.O17]), StationAttendant(stations: [Y19]), StationAttendant(stations: [Y20])]
    
    static let All: [StationLocation] = [Y07, Y08, Y09, Y10, Y11, Y12, Y13, Y14, Y15, Y16, Y17, Y18, Y19, Y20]
    
    static let Y07: StationLocation = StationLocation(id: "Y07",
                                                      pointOfAbsolute: .init(x:563 / 960.0, y: 1089.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let Y08: StationLocation = StationLocation(id: "Y08",
                                                      pointOfAbsolute: .init(x:520.5 / 960.0, y: 1089.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let Y09: StationLocation = StationLocation(id: "Y09",
                                                      pointOfAbsolute: .init(x: 480 / 960.0, y: 1069 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let Y10: StationLocation = StationLocation(id: "Y10",
                                                      pointOfAbsolute: .init(x:441.5 / 960.0, y: 1046 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let Y11: StationLocation = StationLocation(id: "Y11",
                                                      pointOfAbsolute: .init(x:376.5 / 960.0, y: 1046 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let Y12: StationLocation = StationLocation(id: "Y12",
                                                      pointOfAbsolute: .init(x:325.5 / 960.0, y: 1046 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let Y13: StationLocation = StationLocation(id: "Y13",
                                                      pointOfAbsolute: .init(x:273.5 / 960.0, y: 1046 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let Y14: StationLocation = StationLocation(id: "Y14",
                                                      pointOfAbsolute: .init(x:263 / 960.0, y: 996 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let Y15: StationLocation = StationLocation(id: "Y15",
                                                      pointOfAbsolute: .init(x:263 / 960.0, y: 945.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let Y16: StationLocation = StationLocation(id: "Y16",
                                                      pointOfAbsolute: .init(x:224 / 960.0, y: 909.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let Y17: StationLocation = StationLocation(id: "Y17",
                                                      pointOfAbsolute: .init(x:173.5 / 960.0, y: 857.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let Y18: StationLocation = StationLocation(id: "Y18",
                                                      pointOfAbsolute: .init(x:104.5 / 960.0, y: 777.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let Y19: StationLocation = StationLocation(id: "Y19",
                                                      pointOfAbsolute: .init(x:60 / 960.0, y: 736 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let Y20: StationLocation = StationLocation(id: "Y20",
                                                      pointOfAbsolute: .init(x:60 / 960.0, y: 683 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    
}

// MARK: Orange
extension SL.Orange {
    // remove list
    // O02 with Y11
    // O05 with G09
    // O06 with R07
    // O07 with BL14
    // O08 with G15
    // O11 with R13
    // O17 with Y18
   static let AllStationPositions: [StationAttendant] = [StationAttendant(stations: [O01]), StationAttendant(stations: [O03]), StationAttendant(stations: [O04]), StationAttendant(stations: [O09]), StationAttendant(stations: [O10]), StationAttendant(stations: [O12]), StationAttendant(stations: [O13]), StationAttendant(stations: [O14]), StationAttendant(stations: [O15]), StationAttendant(stations: [O16]), StationAttendant(stations: [O17]), StationAttendant(stations: [O18]), StationAttendant(stations: [O19]), StationAttendant(stations: [O20]), StationAttendant(stations: [O21]), StationAttendant(stations: [O50]), StationAttendant(stations: [O51]), StationAttendant(stations: [O52]), StationAttendant(stations: [O53]), StationAttendant(stations: [O54])]
    
    static let All: [StationLocation] = [O01, O02, O03, O04, O05, O06, O07, O08, O09, O10, O11, O12, O13, O14, O15, O16, O17, O18, O19, O20, O21, O50, O51, O52, O53, O54]
    
    static let O01: StationLocation = StationLocation(id: "O01",
                                                      pointOfAbsolute: .init(x:386 / 960.0, y: 1092.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let O02: StationLocation = StationLocation(id: "O02",
                                                      pointOfAbsolute: .init(x:396 / 960.0, y: 1046 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let O03: StationLocation = StationLocation(id: "O03",
                                                      pointOfAbsolute: .init(x:386 / 960.0, y: 996 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let O04: StationLocation = StationLocation(id: "O04",
                                                      pointOfAbsolute: .init(x:386 / 960.0, y: 952.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let O05: StationLocation = StationLocation(id: "O05",
                                                      pointOfAbsolute: .init(x:451.5 / 960.0, y: 896 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let O06: StationLocation = StationLocation(id: "O06",
                                                      pointOfAbsolute: .init(x:496 / 960.0, y: 848.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let O07: StationLocation = StationLocation(id: "O07",
                                                      pointOfAbsolute: .init(x:507 / 960.0, y: 759 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let O08: StationLocation = StationLocation(id: "O08",
                                                      pointOfAbsolute: .init(x:507 / 960.0, y: 676.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let O09: StationLocation = StationLocation(id: "O09",
                                                      pointOfAbsolute: .init(x:497.5 / 960.0, y: 618 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let O10: StationLocation = StationLocation(id: "O10",
                                                      pointOfAbsolute: .init(x:463.5 / 960.0, y: 586.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let O11: StationLocation = StationLocation(id: "O11",
                                                      pointOfAbsolute: .init(x:387.5 / 960.0, y: 586.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1280))
    static let O12: StationLocation = StationLocation(id: "O12",
                                                      pointOfAbsolute: .init(x:325 / 960.0, y: 586.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let O13: StationLocation = StationLocation(id: "O13",
                                                      pointOfAbsolute: .init(x:247.5 / 960.0, y: 619.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let O14: StationLocation = StationLocation(id: "O14",
                                                      pointOfAbsolute: .init(x:211.5 / 960.0, y: 667.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let O15: StationLocation = StationLocation(id: "O15",
                                                      pointOfAbsolute: .init(x:175 / 960.0, y: 694 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let O16: StationLocation = StationLocation(id: "O16",
                                                      pointOfAbsolute: .init(x:138.5 / 960.0, y: 733.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let O17: StationLocation = StationLocation(id: "O17",
                                                      pointOfAbsolute: .init(x:86 / 960.0, y: 777.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let O18: StationLocation = StationLocation(id: "O18",
                                                      pointOfAbsolute: .init(x:48.5 / 960.0, y: 827 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let O19: StationLocation = StationLocation(id: "O19",
                                                      pointOfAbsolute: .init(x:43.5 / 960.0, y: 881 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let O20: StationLocation = StationLocation(id: "O20",
                                                      pointOfAbsolute: .init(x:43.5 / 960.0, y: 927 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let O21: StationLocation = StationLocation(id: "O21",
                                                      pointOfAbsolute: .init(x:43.5 / 960.0, y: 974.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let O50: StationLocation = StationLocation(id: "O50",
                                                      pointOfAbsolute: .init(x:247.5 / 960.0, y: 553.5 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let O51: StationLocation = StationLocation(id: "O51",
                                                      pointOfAbsolute: .init(x:215.5 / 960.0, y: 515 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let O52: StationLocation = StationLocation(id: "O52",
                                                      pointOfAbsolute: .init(x:193 / 960.0, y: 469 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let O53: StationLocation = StationLocation(id: "O53",
                                                      pointOfAbsolute: .init(x:193 / 960.0, y: 419 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    static let O54: StationLocation = StationLocation(id: "O54",
                                                      pointOfAbsolute: .init(x:193 / 960.0, y: 369 / 1286.0),
                                                      sizeOFAbsolute: .init(width: 20.0 / 960.0, height: 25.0 / 1286.0))
    
}
