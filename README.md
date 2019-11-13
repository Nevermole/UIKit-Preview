# UIKit + Preview

This swift package contains wrapper for UIView and UIViewController to display them in SwiftUI Previews.

## Installation

Add this project as your swift package dependency in Xcode. How to from Apple is [here](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app).

## Usage

Use Xcode 11 and in your UIView or UIViewController add the following code to display preview.

### UIView

```swift
#if compiler(>=5.0) && canImport(SwiftUI) && DEBUG
import SwiftUI

@available(iOS 13.0, *)
struct YOUR_UIVIew_Class_Preview: PreviewProvider {
    static var previews: some View {
            View_SwiftUI(YOUR_UIVIew_Class())
    }
}
#endif
```


### UIViewController

```swift

#if compiler(>=5.0) && canImport(SwiftUI) && DEBUG
import SwiftUI

@available(iOS 13.0, *)
struct YOUR_UIVIewController_Class_Preview: PreviewProvider {
    static var previews: some View {
        ViewController_SwiftUI(controller: YOUR_UIVIewController_Class()
    }
}
#endif
```

That's it!

There are also two support methods that let you display the views on all device sizes.

1. `.previewOnAllDevices()` will display the View on all device sizes with devices bezels.
2. `.previewOnAllSizes(height: Number)` will display the View with provided height on all screen widths.
