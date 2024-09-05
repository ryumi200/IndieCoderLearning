//
//  Badge.swift
//  Landmarks
//
//  Created by Ryu Miyake on 2024/09/05.
//  Copyright © 2024 Apple. All rights reserved.
//

import SwiftUI

struct Badge: View {
    var badgeSymbols: some View {
        ForEach(0..<8) { index in
        RotatedBadgeSymbol(
            angle: .degrees(Double(index) / Double(8) * 360)
        )
        }
        .opacity(0.4)
    }
    var body: some View {
        ZStack {
            BadgeBackground()
            
            GeometryReader { geometry in
                badgeSymbols
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(x: geometry.size.width / 2.0, y: (3.0 / 4.0) * geometry.size.height)
            }
        }
        .scaledToFit()
    }
}

#Preview {
    Badge()
}
