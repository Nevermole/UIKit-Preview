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
struct View_SwiftUI<C: UIView>: UIViewRepresentable {
    let view: C

    init(_ view: C) {
        self.view = view
    }

    func makeUIView(context: Context) -> UIView {
        return  view
    }
    
    func updateUIView(_ view: UIView, context: Context) {

    }
}
#endif
