import SwiftUI

// WeatherShapeStyles library demonstrations and previews
// Provides weather-themed ShapeStyles for SwiftUI

// Public APIs are defined directly as public in each file, so re-export is not necessary

// MARK: - Previews

#Preview("Snow Border Styles") {
    VStack(spacing: 20) {
        Text("Default Snow Border")
            .padding()
            .border(.snowBorderShapeStyle, width: 4)
        
        Text("Custom Snow Border")
            .padding()
            .border(.snowBorder(depth: 4.0, softness: 0.8, irregularity: 0.6), width: 6)
        
        Rectangle()
            .fill(.blue.opacity(0.3))
            .frame(width: 150, height: 100)
            .border(.snowBorderShapeStyle, width: 5)
            .overlay {
                Text("Snowy Rectangle")
                    .foregroundColor(.white)
                    .font(.caption)
            }
        
        Circle()
            .fill(.red.opacity(0.4))
            .frame(width: 120, height: 120)
            .border(.snowBorder(depth: 3.0, softness: 0.9, irregularity: 0.3), width: 8)
            .overlay {
                Text("Snowy Circle")
                    .foregroundColor(.white)
                    .font(.caption)
            }
    }
    .padding()
    .background(.black.opacity(0.1))
}
