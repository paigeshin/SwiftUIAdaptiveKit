# AdaptiveKit

When you work at the company as an iOS Developer, you will probably get screens with one device.  
This library is built for "One Screen That Fits All Devices".         
If you set device width and device height of your design, it will fit all devices proportionally. 

# Installation 

```bash
https://github.com/paigeshin/SwiftUIAdaptiveKit
```

# Usage

### Initialization

```swift
import SwiftUI
import AdaptiveKit

@main
struct TestProjApp: App {
    
    init() {
        AdaptiveKit.initialize(
            currentScreenWidth: UIScreen.main.bounds.width,
            currentScreenHeight: UIScreen.main.bounds.height,
            baseWidth: 375, //Based On iPHONE 13 MINI Width
            baseHeight: 812) //Based On iPHONE 13 MINI Height
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
```

This example is now initializing with 375 width and 812 height. 
375 width and 812 height are the size of iPhone 13 mini. 
If you received a design based on the iphone 13 mini, do this. 

# Examples

### `.adaptiveFontSize()`

```swift

```
