//
//  TouchEventView.swift
//  MRTStationSelector
//
//  Created by Woody on 2022/6/14.
//

import SwiftUI
#if canImport(UIKit)
import UIKit



// Our UIKit to SwiftUI wrapper view
public struct TouchLocatingView: UIViewRepresentable {
    // The types of touches users want to be notified about
    public struct TouchType: OptionSet {
        public let rawValue: Int
        
        public init(rawValue: Int) {
            self.rawValue = rawValue
        }
        static public let started = TouchType(rawValue: 1 << 0)
        static public let moved = TouchType(rawValue: 1 << 1)
        static public let ended = TouchType(rawValue: 1 << 2)
        static public let cancelled = TouchType(rawValue: 1 << 3)
        static public let all: TouchType = [.started, .moved, .ended, cancelled]
    }
    
    // A closure to call when touch data has arrived
    public var onUpdate: (CGPoint, CGSize) -> Void
    
    // The list of touch types to be notified of
    public var types = TouchType.all
    
    // Whether touch information should continue after the user's finger has left the view
    public var limitToBounds = true
    
    public func makeUIView(context: Context) -> TouchLocatingUIView {
        // Create the underlying UIView, passing in our configuration
        let view = TouchLocatingUIView()
        view.onUpdate = onUpdate
        view.touchTypes = types
        view.limitToBounds = limitToBounds
        return view
    }
    
    public func updateUIView(_ uiView: TouchLocatingUIView, context: Context) {
    }
    
    // The internal UIView responsible for catching taps
    public class TouchLocatingUIView: UIView {
        // Internal copies of our settings
        public var onUpdate: ((CGPoint, CGSize) -> Void)?
        public var touchTypes: TouchLocatingView.TouchType = .all
        public var limitToBounds = true
        
        // Our main initializer, making sure interaction is enabled.
        public override init(frame: CGRect) {
            super.init(frame: frame)
            isUserInteractionEnabled = true
        }
        
        // Just in case you're using storyboards!
        public required init?(coder: NSCoder) {
            super.init(coder: coder)
            isUserInteractionEnabled = true
        }
        
        // Triggered when a touch starts.
        public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            guard let touch = touches.first else { return }
            let location = touch.location(in: self)
            send(location, forEvent: .started)
        }
        
        // Triggered when an existing touch moves.
        public override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
            guard let touch = touches.first else { return }
            let location = touch.location(in: self)
            send(location, forEvent: .moved)
        }
        
        // Triggered when the user lifts a finger.
        public override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
            guard let touch = touches.first else { return }
            let location = touch.location(in: self)
            send(location, forEvent: .ended)
        }
        
        // Triggered when the user's touch is interrupted, e.g. by a low battery alert.
        public override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
            guard let touch = touches.first else { return }
            let location = touch.location(in: self)
            send(location, forEvent: .cancelled)
        }
        
        // Send a touch location only if the user asked for it
        public func send(_ location: CGPoint, forEvent event: TouchLocatingView.TouchType) {
            guard touchTypes.contains(event) else {
                return
            }
            
            if limitToBounds == false || bounds.contains(location) {
                print("location:", location)
                onUpdate?(CGPoint(x: round(location.x), y: round(location.y)), bounds.size)
            }
        }
    }
}

// A custom SwiftUI view modifier that overlays a view with our UIView subclass.
struct TouchLocater: ViewModifier {
    public var type: TouchLocatingView.TouchType = .all
    public var limitToBounds = true
    public let perform: (CGPoint, CGSize) -> Void
    
    public func body(content: Content) -> some View {
        content
            .overlay(
                TouchLocatingView(onUpdate: perform, types: type, limitToBounds: limitToBounds)
            )
    }
}

// A new method on View that makes it easier to apply our touch locater view.
extension View {
    public func onTouch(type: TouchLocatingView.TouchType = .all, limitToBounds: Bool = true, perform: @escaping (CGPoint, CGSize) -> Void) -> some View {
        self.modifier(TouchLocater(type: type, limitToBounds: limitToBounds, perform: perform))
    }
}
#endif
