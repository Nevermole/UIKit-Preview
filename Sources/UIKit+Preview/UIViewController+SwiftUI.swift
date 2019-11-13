//
//  UIViewController+SwiftUI.swift
//  UIKit + Preview
//
//  Created by Daniel Rutkovsky on 01/10/2019.
//  Copyright © 2019 Synetech. All rights reserved.
//

import Foundation

#if canImport(SwiftUI) && DEBUG
import SwiftUI

@available(iOS 13.0, *)
struct ViewController_SwiftUI<C: UIViewController>: UIViewRepresentable {
    let controller: C

    func makeUIView(context: Context) -> UIView {
        let navigation = UINavigationController(rootViewController: controller)
        navigation.navigationBar.isHidden = false
        return navigation.topViewController!.view
    }

    func updateUIView(_ view: UIView, context: Context) {

    }
}
#endif
