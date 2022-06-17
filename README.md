# TaipeiMRTRoadMapKit
### SwiftUI

## 捷運路線圖選擇器  

### 功能  

### 台北捷運路線圖： 版本 2022-06-17 


## 主要元件

### View: StationPicker  
- 點擊站點回傳對應捷運站
- 支援點擊更新 UI 功能
#### init(_ searcher: StationSearher, station: Binding<PositionChecker?>)  

#### properties:  
 --- StationSearher: 
           |  
           --- func findStation: 站點搜尋  
           |
           --- func drawOnStationRoadMap: 搜尋到目標後要做的繪圖

 --- PositionChecker:
           |
           --- func getStations()-> [StationLocation] : 取得該站點包含的所有捷運站
           |
           --- func convertFrameFrromView(size: CGSize)-> CGRect : 該站點在 image 的 Frame
           |
           --- func isContain(sizeOfView size: CGSize, touchPosition point: CGPoint)-> Bool -> 點擊範圍是否在該站點範圍內
           
           
## 請參考 TaipeiMRTRoadMapKitDemo
