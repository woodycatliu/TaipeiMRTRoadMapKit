//
//  File.swift
//  
//
//  Created by Woody on 2022/6/17.
//

import SwiftUI
#if canImport(UIKit)


extension Image {
    init(packageResource name: String, ofType type: String) {
        #if canImport(UIKit)
        guard let path = Bundle.module.path(forResource: name, ofType: type),
              let image = UIImage(contentsOfFile: path) else {
            self.init(name)
            return
        }
        self.init(uiImage: image)
        #elseif canImport(AppKit)
        guard let path = Bundle.module.path(forResource: name, ofType: type),
              let image = NSImage(contentsOfFile: path) else {
            self.init(name)
            return
        }
        self.init(nsImage: image)
        #else
        self.init(name)
        #endif
    }
}

extension UIImage {
    convenience init?(_ named: String, ofType type: String) {
        guard let path = Bundle.module.path(forResource: named, ofType: type) else {
            self.init()
            return
        }
        self.init(contentsOfFile: path)
    }
}

#endif
