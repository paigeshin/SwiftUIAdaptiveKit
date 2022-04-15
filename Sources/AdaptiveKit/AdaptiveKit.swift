import SwiftUI

/// https://www.ios-resolution.com/

fileprivate var standardHeight: CGFloat = 844
fileprivate var standardWidth: CGFloat = 390


public struct AdaptiveKit {
    
    private init() {}
    
    public static func initialize(device: AppleDevice) {
        standardWidth = device.logicalWidth
        standardHeight = device.logicalHeight
    }
    
    public static func initialize(width: CGFloat, height: CGFloat) {
        standardWidth = width
        standardHeight = height
    }
    
}

enum BaseScreen {
    case width
    case height
}

#if !os(macOS)
public extension View {
    
    var screenWidth: CGFloat {
        #if os(iOS)
        UIScreen.main.bounds.width
        #elseif os(watchOS)
        WKInterfaceDevice.current().screenBounds.width
        #endif
    }
    
    var screenHeight: CGFloat {
        #if os(iOS)
        UIScreen.main.bounds.height
        #elseif os(watchOS)
        WKInterfaceDevice.current().screenBounds.height
        #endif
    }
    
    func adaptiveFontSize(_ fontSize: CGFloat) -> some View {
        self
            .font(.system(size: (fontSize * screenHeight) / standardHeight))
    }
    
    func adaptivePadding(base: BaseScreen = .height, _ edge: Edge.Set, _ value: CGFloat) -> some View {
        if base == .width {
            return self
                .padding(edge, (value * screenWidth) / standardWidth)
        } else {
            return self
                .padding(edge, (value * screenHeight) / standardHeight)
        }
    }
    
    func adaptivePadding(base: BaseScreen = .height, _ value: CGFloat) -> some View {
        if base == .width {
            return self
                .padding((value * screenWidth) / standardWidth)
        } else {
            return self
                .padding((value * screenHeight) / standardHeight)
        }
        
    }
    
    func adaptiveLineSpacing(_ value: CGFloat) -> some View {
        self
            .lineSpacing((value * screenHeight) / standardHeight)
    }
    
    func adaptiveHeight(_ value: CGFloat) -> some View {
        self
            .frame(height: (value * screenHeight) / standardHeight)
    }
    
    func adaptiveWidth(_ value: CGFloat) -> some View {
        self
            .frame(height: (value * screenWidth) / standardWidth)
    }
    
    func adaptiveFrame(base: BaseScreen = .height, width: CGFloat, height: CGFloat, alignment: Alignment = .leading) -> some View {
        if base == .width {
            return self
                .frame(width: (width * screenWidth) / standardWidth,
                       height: (width * screenWidth) / standardWidth,
                       alignment: alignment)
        } else {
            return self
                .frame(width: (height * screenHeight) / standardHeight,
                       height: (height * screenHeight) / standardHeight,
                       alignment: alignment)
        }
    }
    
    func adaptiveSpacing(base: BaseScreen = .height, _ value: CGFloat) -> CGFloat {
        if base == .width {
            return (value * screenWidth) / standardWidth
        } else {
            return (value * screenHeight) / standardHeight
        }
        
    }
    
}
#endif
