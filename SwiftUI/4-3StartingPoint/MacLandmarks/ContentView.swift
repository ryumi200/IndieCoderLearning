//
//  ContentView.swift
//  MacLandmarks
//
//  Created by Ryu Miyake on 2024/09/07.
//  Copyright © 2024 Apple. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
            .frame(minWidth: 700, minHeight: 300)
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
