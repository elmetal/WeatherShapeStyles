import SwiftUI

/// A border style that creates snow-like visual effects.
/// Provides white borders with natural irregularities and fluffy softness that mimic accumulated snow.
public struct SnowBorderShapeStyle: ShapeStyle {
    
    /// The thickness/depth feeling of snow accumulation (default: 2.0)
    public let depth: Double
    
    /// The fluffiness level - edge softness (default: 0.6)
    public let softness: Double
    
    /// The irregularity of borders (default: 0.4)
    public let irregularity: Double
    
    /// Initializes SnowBorderShapeStyle with default settings
    public init(depth: Double = 2.0, softness: Double = 0.6, irregularity: Double = 0.4) {
        self.depth = depth
        self.softness = softness
        self.irregularity = irregularity
    }
    
    public func resolve(in environment: EnvironmentValues) -> some ShapeStyle {
        // Multi-layer gradient for snow accumulation effect
        // White base with light blue-white highlights
        LinearGradient(
            colors: [
                Color.white.opacity(0.95),
                Color(red: 0.98, green: 0.99, blue: 1.0), // Light blue-white
                Color.white.opacity(0.9),
                Color(red: 0.96, green: 0.97, blue: 0.99) // Subtle blue-gray
            ],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
    }

}

// MARK: - Convenient ShapeStyle Extensions

public extension ShapeStyle where Self == SnowBorderShapeStyle {
    /// Snow border style with default settings
    static var snowBorderShapeStyle: SnowBorderShapeStyle {
        SnowBorderShapeStyle()
    }
    
    /// Snow border style with custom settings
    /// - Parameters:
    ///   - depth: Snow accumulation thickness feeling (recommended: 1.0-5.0)
    ///   - softness: Fluffiness level (0.0-1.0)
    ///   - irregularity: Border irregularity (0.0-1.0)
    static func snowBorder(depth: Double = 2.0, softness: Double = 0.6, irregularity: Double = 0.4) -> SnowBorderShapeStyle {
        SnowBorderShapeStyle(depth: depth, softness: softness, irregularity: irregularity)
    }
}
