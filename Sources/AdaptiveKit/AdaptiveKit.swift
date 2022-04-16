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

// MARK: GET VIEW
public extension View {
    
    public func adaptiveFontSize(base: BaseScreen = .height, _ fontSize: CGFloat) -> some View {
        self
            .font(.system(size: calculateResizing(base: base, fontSize)))
    }
    
    public func adaptiveFontSize(base: BaseScreen = .height, customFont: String, _ fontSize: CGFloat) -> some View {
        self
            .font(.custom(customFont, size: calculateResizing(base: base, fontSize)))
    }
    
    public func adaptivePadding(base: BaseScreen = .height, _ edge: Edge.Set, _ value: CGFloat) -> some View {
        self
            .padding(edge, calculateResizing(base: base, value))
    }
    
    public func adaptivePadding(base: BaseScreen = .height, _ value: CGFloat) -> some View {
        self
            .padding(calculateResizing(base: base, value))
    }
    
    public func adaptiveLineSpacing(base: BaseScreen = .height, _ value: CGFloat) -> some View {
        self
            .lineSpacing(calculateResizing(base: base, value))
    }
    
    public func adaptiveWidth(base: BaseScreen = .width, _ value: CGFloat, alignment: Alignment = .center) -> some View {
        self
            .frame(width: calculateResizing(base: base, value),
                   alignment: alignment)
    }
    
    public func adaptiveWidth(base: BaseScreen = .width,
                       minWidth: CGFloat? = nil,
                       idealWidth: CGFloat? = nil,
                       maxWidth: CGFloat? = nil,
                       alignment: Alignment = .center) -> some View {
        self
            .frame(minWidth: calculateResizing(base: base, minWidth ?? 0),
                   idealWidth: calculateResizing(base: base, idealWidth ?? 0),
                   maxWidth: calculateResizing(base: base, maxWidth ?? 0),
                   alignment: alignment)
    }
    
    public func adaptiveHeight(base: BaseScreen = .height, _ value: CGFloat, alignment: Alignment = .center) -> some View {
        self
            .frame(height: calculateResizing(base: base, value),
                   alignment: alignment)
    }
    
    public func adaptiveHeight(base: BaseScreen = .height,
                        minHeight: CGFloat? = nil,
                        idealHeight: CGFloat? = nil,
                        maxHeight: CGFloat? = nil,
                        alignment: Alignment = .center) -> some View {
        self
            .frame(minHeight: calculateResizing(base: base, minHeight ?? 0),
                   idealHeight: calculateResizing(base: base, idealHeight ?? 0),
                   maxHeight: calculateResizing(base: base, maxHeight ?? 0),
                   alignment: alignment)
    }
    
    public func adaptiveFrame(base: BaseScreen = .height, width: CGFloat, height: CGFloat, alignment: Alignment = .center) -> some View {
        self
            .frame(width: calculateResizing(base: base, width),
                   height: calculateResizing(base: base, height),
                   alignment: alignment)
    }
    
    public func adaptiveFrame(base: BaseScreen = .width,
                       minWidth: CGFloat? = nil,
                       idealWidth: CGFloat? = nil,
                       maxWidth: CGFloat? = nil,
                       minHeight: CGFloat? = nil,
                       idealHeight: CGFloat? = nil,
                       maxHeight: CGFloat? = nil,
                       alignment: Alignment = .center) -> some View {
        self
            .frame(minWidth: calculateResizing(base: base, minWidth ?? 0),
                   idealWidth: calculateResizing(base: base, idealWidth ?? 0),
                   maxWidth: calculateResizing(base: base, maxWidth ?? 0),
                   minHeight: calculateResizing(base: base, minHeight ?? 0),
                   idealHeight: calculateResizing(base: base, idealHeight ?? 0),
                   maxHeight: calculateResizing(base: base, maxHeight ?? 0),
                   alignment: alignment)
    }
    

    
}

// MARK: FUNCTIONS
extension View {
    
    public func adaptiveSpacing(base: BaseScreen = .height, _ value: CGFloat) -> CGFloat {
        calculateResizing(base: base, value)
    }
    
    public func adaptiveHSpacing(base: BaseScreen = .width, _ value: CGFloat) -> CGFloat {
        calculateResizing(base: base, value)
    }
    
    public func adaptiveVSpacing(base: BaseScreen = .height, _ value: CGFloat) -> CGFloat {
        calculateResizing(base: base, value)
    }
    
    public func calculateResizing(base: BaseScreen = .height, _ value: CGFloat) -> CGFloat {
        if base == .width {
            return abs((value * screenWidth) / standardWidth)
        } else {
            return abs((value * screenHeight) / standardHeight)
        }
    }
    
}
