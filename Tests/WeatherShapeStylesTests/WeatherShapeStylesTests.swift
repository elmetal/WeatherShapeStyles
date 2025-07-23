import Testing
import SwiftUI
@testable import WeatherShapeStyles

@Test("SnowBorderShapeStyle initialization")
func snowBorderShapeStyleInitialization() {
    let defaultStyle = SnowBorderShapeStyle()
    #expect(defaultStyle.depth == 2.0)
    #expect(defaultStyle.softness == 0.6)
    #expect(defaultStyle.irregularity == 0.4)
    
    let customStyle = SnowBorderShapeStyle(depth: 3.0, softness: 0.8, irregularity: 0.2)
    #expect(customStyle.depth == 3.0)
    #expect(customStyle.softness == 0.8)
    #expect(customStyle.irregularity == 0.2)
}

@Test("SnowBorderShapeStyle static accessors")
func snowBorderShapeStyleStaticAccessors() {
    func testDefaultStyle() -> SnowBorderShapeStyle {
        return .snowBorderShapeStyle
    }
    let defaultStyle = testDefaultStyle()
    #expect(defaultStyle.depth == 2.0)
    #expect(defaultStyle.softness == 0.6)
    #expect(defaultStyle.irregularity == 0.4)
    
    func testCustomStyle() -> SnowBorderShapeStyle {
        return .snowBorder(depth: 4.0, softness: 0.9, irregularity: 0.1)
    }
    let customStyle = testCustomStyle()
    #expect(customStyle.depth == 4.0)
    #expect(customStyle.softness == 0.9)
    #expect(customStyle.irregularity == 0.1)
}

@Test("SnowBorderShapeStyle resolve functionality")
func snowBorderShapeStyleResolve() {
    let style = SnowBorderShapeStyle()
    let environment = EnvironmentValues()
    
    let resolvedStyle = style.resolve(in: environment)
    #expect(type(of: resolvedStyle) == LinearGradient.self)
}
