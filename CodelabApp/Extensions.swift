//
//  Extensiones.swift
//  Notes
//
//  Created by Mahmoud Emad on 25/12/2025.
//

import Foundation
import SwiftUI

extension View {
    func roundedCorners(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorners(radius: radius,corners: corners))
    }
}

struct RoundedCorners: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension Int {
    func formattedString() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 1
        let thousand = 1000
        let million = thousand * thousand
        
        if self >= million {
            let formattedNumber = Double(self) / Double(million)
            return "\(formatter.string(from: NSNumber(value: formattedNumber)) ?? "")M"
        }else if self >= thousand {
            let formattedNumber = Double(self) / Double(million)
            return "\(formatter.string(from: NSNumber(value: formattedNumber)) ?? "")k"
        }else{
            return "\(self)"
        }
    }
}
