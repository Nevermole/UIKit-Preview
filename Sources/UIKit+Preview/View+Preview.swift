//
//  View+Preview.swift
//  UIKit + Preview
//
//  Created by Daniel Rutkovsky on 02/10/2019.
//  Copyright © 2019 Synetech. All rights reserved.
//

#if compiler(>=5.0) && canImport(SwiftUI) && DEBUG
import SwiftUI

@available(iOS 13.0, *)
extension View {
    func previewOnAllSizes(height: CGFloat) -> some View {
        Group {
            self.previewLayout(.fixed(width: 414, height: height))
                .previewDisplayName("iPhone 8 Plus / Xs Max / 11 Pro Max / Xr / 11")
            self.previewLayout(.fixed(width: 375, height: height))
                .previewDisplayName("iPhone 8 / X / 11 Pro")
            self.previewLayout(.fixed(width: 320, height: height))
                .previewDisplayName("iPhone SE")
        }
    }

    func previewOnAllDevices() -> some View {
        Group {
            self.previewDevice(PreviewDevice("iPhone SE"))
            .previewDisplayName("iPhone SE")

            self.previewDevice(PreviewDevice("iPhone 8"))
                .previewDisplayName("iPhone 8")

            self.previewDevice(PreviewDevice("iPhone 11 Pro"))
                .previewDisplayName("iPhone 11 Pro")

            self.previewDevice(PreviewDevice("iPhone 11"))
                .previewDisplayName("iPhone 11")

            self.previewDevice(PreviewDevice("iPhone 8 Plus"))
                .previewDisplayName("iPhone 8 Plus")

            self.previewDevice(PreviewDevice("iPhone 11 Pro Max"))
                .previewDisplayName("iPhone 11 Pro Max")
        }
    }
}
#endif
