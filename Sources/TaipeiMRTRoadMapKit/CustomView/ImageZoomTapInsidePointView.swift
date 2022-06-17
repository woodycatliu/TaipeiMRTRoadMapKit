//
//  ImageZoomView.swift
//  MRTStationSelector
//
//  Created by Woody on 2022/6/14.
//

import SwiftUI
#if canImport(UIKit)

public struct DrawOnImage<Content: View>: View, Identifiable {
    public let id: String = UUID().uuidString
    public let content: Content
    public let frame: CGRect
    init(frame: CGRect, @ViewBuilder contentBuilder: ()-> Content) {
        self.frame = frame
        self.content = contentBuilder()
    }
    public var body: some View {
        content
            .frame(width: frame.width, height: frame.height, alignment: .center)
            .position(x: frame.midX, y: frame.midY)
    }
}


public struct ImageZoomTapInsidePointView: View {
   public let image: UIImage
    public var perform: ((CGPoint, CGSize) -> Void)?
    /// 最小縮小比例
    public let minimumScale: CGFloat
    /// 最大縮小比例
    public let maximumScale: CGFloat
    
    
    @State public var magScale: CGFloat = 1
    @State public var progressingScale: CGFloat = 1
    @State private var dragged = CGSize.zero
    @State private var accumulated = CGSize.zero
    
    @Binding var drawViews: [DrawOnImage<AnyView>]
    
    
    @State public var point: CGPoint?
    
    init(drawViews: Binding<[DrawOnImage<AnyView>]>? , image: UIImage, minimumScale: CGFloat = 1, maximumScale: CGFloat = 1,_ perform: @escaping (CGPoint, CGSize) -> Void ) {
        self.image = image
        self.minimumScale = minimumScale
        self.maximumScale = maximumScale
        self.perform = perform
        self._drawViews = drawViews ?? Binding<[DrawOnImage<AnyView>]>.init(get: Self.DefautGet, set: Self.DefaultSet)
    }
    
    
    private var magnification: some Gesture {
        MagnificationGesture()
            .onChanged {
                guard magScale * $0 <= maximumScale && magScale * $0 >= minimumScale else { return }
                progressingScale = $0
            }
            .onEnded {
                
                if $0 * magScale <= minimumScale || $0 * magScale >= maximumScale {
                    magScale *= progressingScale
                } else {
                    magScale *= $0
                }
                
                progressingScale = 1
            }
    }
    
    
    private var dragGest: some Gesture {
        DragGesture(minimumDistance: 10)
            .onChanged { value in
                dragged = CGSize(width: value.translation.width + accumulated.width, height: value.translation.height + accumulated.height)
            }
            .onEnded { value in
                dragged = CGSize(width: value.translation.width + self.accumulated.width, height: value.translation.height + self.accumulated.height)
                accumulated = dragged
            }
    }
    
    public var body: some View {
        Image(uiImage: image)
            .resizable()
            .scaledToFit()
            .onTouch(type: .ended,perform: updateLocation)
            .overlay(
                self.drawViews.isEmpty ? nil :
                    ZStack {
                        ForEach(drawViews) {
                            $0
                        }
                    }
            )
            .scaleEffect(magScale * progressingScale)
            .offset(dragged)
            .gesture(dragGest)
            .gesture(magnification)
    }
    
    private func updateLocation(_ location: CGPoint, _ size: CGSize) {
        point = location
        perform?(location, size)
    }
    
    static public var DefautGet: ()-> [DrawOnImage<AnyView>] {
        return { [] }
    }
    
    static public var DefaultSet: ([DrawOnImage<AnyView>], Transaction)-> () {
        return { _,_ in }
    }
}


#endif
