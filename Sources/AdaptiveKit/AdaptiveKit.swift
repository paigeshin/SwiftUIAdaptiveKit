import SwiftUI

fileprivate var screenWidth: CGFloat = 0
fileprivate var screenHeight: CGFloat = 0
fileprivate var standardHeight: CGFloat = 0
fileprivate var standardWidth: CGFloat = 0


public struct AdaptiveKit {
    
    private init() {}
    
    public static func initialize(currentScreenWidth: CGFloat,
                                  currentScreenHeight: CGFloat,
                                  baseWidth: CGFloat,
                                  baseHeight: CGFloat) {
        screenWidth = currentScreenWidth
        screenHeight = currentScreenHeight
        standardWidth = baseWidth
        standardHeight = baseHeight
    }
    
}

public enum BaseScreen {
    case width
    case height
}

public extension View {

    func adaptiveFontSize(base: BaseScreen = .height, _ fontSize: CGFloat) -> some View {
        if base == .width {
            return self
                .font(.system(size: (fontSize * screenWidth) / standardWidth))
        } else {
            return self
                .font(.system(size: (fontSize * screenHeight) / standardHeight))
        }

    }
    
    func adaptiveFontSize(base: BaseScreen = .height, customFont: String, _ fontSize: CGFloat) -> some View {
        if base == .width {
            return self
                .font(.custom(customFont, size: (fontSize * screenWidth) / standardWidth))
        } else {
            return self
                .font(.custom(customFont, size: (fontSize * screenHeight) / standardHeight))
        }

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
