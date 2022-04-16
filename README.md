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

If you want to use this, you must initialize AdaptiveKit. Otherwise, unexpected behaviour might occur. You can add additional argument `width` when you want to resize your screen based on width.

# Examples

### `.adaptiveFontSize()`

Type: View Modifier 

Base Default: height

How it works: Proportionally resizing based on the height by default.

```swift
Text("Hello")
    .adaptiveFontSize(16)
    
Text("Hello")
    .adaptiveFontSize(customFont: "Futura", 16)
    
Text("Hello")
    .adaptiveFontSize(base: .width, 16) // You can change base. Default is height 
```

### `adaptiveSpacing()`

Type: Function 

Base Default: height

How it works: Proportionally resizing based on the height by default.

```swift
    VStack(spacing: adaptiveSpacing(8)) {
        
            
    }
    HStack(spacing: adaptiveSpacing(base: .width, 7)) {
        
    }
```

### `.adaptivePadding()`

Type: View Modifier 

Base Default: height

How it works: Proportionally resizing based on the height by default.

```swift
    VStack {
    }
    .adaptivePadding(36)
    .adaptivePadding(.top, 24)
    .adaptivePadding(base: .width, 16)
```

### `.adaptiveLineSpacing()`

Type: View Modifier 

Base Default: height

How it works: Proportionally resizing based on the height by default.

```swift
    Text("HelloWorld\nHelloWorld")
        .adaptiveLineSpacing(4)
```

### `.adaptiveHeight()`

Type: View Modifier 

Base Default: height

How it works: Proportionally resizing based on the height by default.

```swift
    VStack {
            
    }
    .adaptiveHeight(480)
```

### `.adapativeWidth()`

Type: View Modifier 

Base Default: width

How it works: Proportionally resizing based on the width by default.

```swift
    VStack {
            
    }
    .adaptiveWidth(480)
```

### `.adaptiveFrame()`

Type: View Modifier 

Base Default: width

How it works: Proportionally resizing based on the height by default.

```swift
    VStack {
        
    }
    .adaptiveFrame(base: .width, width: 480, height: 240, alignment: .leading)
```
