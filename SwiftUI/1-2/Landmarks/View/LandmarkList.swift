//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Ryu Miyake on 2024/09/03.
//  Copyright © 2024 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) { (landmark: Landmark) -> LandmarkRow in
            LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
