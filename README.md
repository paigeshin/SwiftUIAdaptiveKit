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

# Warning

If you want to use this, you must initialize AdaptiveKit. Otherwise, unexpected behaviour will occur.

# Examples

### `.adaptiveFontSize()`

View Modifier proportionally resizing based on the height by default.

```swift
Text("Hello")
    .adaptiveFontSize(16)
    
Text("Hello")
    .adaptiveFontSize(customFont: "Futura", 16)
    
Text("Hello")
    .adaptiveFontSize(base: .width, 16) // You can change base. Default is height 
```

### `adaptiveSpacing()`

This is a function. Proportionally resizing based on the height by default. You can add additional argument `width` when you want to resize your screen based on width.

```swift
    VStack(spacing: adaptiveSpacing(8)) {
        
            
    }
    HStack(spacing: adaptiveSpacing(base: .width, 7)) {
        
    }
```

### `.adaptivePadding()`

View Modifier proportionally resizing based on the height by default. You can add additional argument `width` when you want to resize your screen based on width.

```swift
    VStack {
    }
    .adaptivePadding(36)
    .adaptivePadding(.top, 24)
    .adaptivePadding(base: .width, 16)
```

### `.adaptiveLineSpacing()`

View Modifier proportionally resizing based on the height by default. 

```swift
    Text("HelloWorld\nHelloWorld")
        .adaptiveLineSpacing(4)
```

### `.adaptiveHeight()`

View Modifier proportionally resizing based on the height. You can add additional argument `width` when you want to resize your screen based on width.

```swift
    VStack {
            
    }
    .adaptiveHeight(480)
```

### `.adapativeWidth()`

View Modifier proportionally resizing based on the width

```swift
    VStack {
            
    }
    .adaptiveWidth(480)
```

### `.adaptiveFrame()`

View Modifier proportionally resizing based on the height. You can add additional argument `width` when you want to resize your screen based on width.

```swift
    VStack {
        
    }
    .adaptiveFrame(base: .width, width: 480, height: 240, alignment: .leading)
```
