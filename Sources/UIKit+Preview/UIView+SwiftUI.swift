//
//  UIView+SwiftUI.swift
//  UIKit + Preview
//
//  Created by Daniel Rutkovsky on 02/10/2019.
//  Copyright © 2019 Synetech. All rights reserved.
//

import Foundation

#if canImport(SwiftUI) && DEBUG
import SwiftUI

@available(iOS 13.0, *)
public struct View_SwiftUI<C: UIView>: UIViewRepresentable {
    public let view: C

    public init(_ view: C) {
        self.view = view
    }

    public func makeUIView(context: Context) -> UIView {
        return  view
    }
    
    public func updateUIView(_ view: UIView, context: Context) {

    }
}
#endif
