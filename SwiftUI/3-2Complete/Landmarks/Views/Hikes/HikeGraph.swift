/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
The elevation, heart rate, and pace of a hike plotted on a graph.
*/

import SwiftUI

extension Animation {
    static func ripple(index: Int) -> Animation {
        Animation.spring(dampingFraction: 0.5)
            .speed(2)
            .delay(0.03 * Double(index))
    }
}

struct HikeGraph: View {
    var hike: Hike
    var path: KeyPath<Hike.Observation, Range<Double>>

    var color: Color {
        switch path {
        case \.elevation:
            return .gray
        case \.heartRate:
            return Color(hue: 0, saturation: 0.5, brightness: 0.7)
        case \.pace:
            return Color(hue: 0.7, saturation: 0.4, brightness: 0.7)
        default:
            return .black
        }
    }

    var body: some View {
        let data = hike.observations
        let overallRange = rangeOfRanges(data.lazy.map { $0[keyPath: path] }) // 最小値と最大値の範囲を取得
        let maxMagnitude = data.map { magnitude(of: $0[keyPath: path]) }.max()! // 最大の振幅
        let heightRatio = 1 - CGFloat(maxMagnitude / magnitude(of: overallRange)) // 振幅の最大値に対する比率

        return GeometryReader { proxy in
            HStack(alignment: .bottom, spacing: proxy.size.width / 120) {
                ForEach(Array(data.enumerated()), id: \.offset) { index, observation in
                    GraphCapsule(
                        index: index, //ForEachの変数
                        color: color, //pathの内容でcase
                        height: proxy.size.height, // 親ビューの高さを取得
                        range: observation[keyPath: path], // observation: ForEachの変数
                        overallRange: overallRange // 最大値と最小値の範囲。縦幅のサイズに使う
                    )
                    .animation(.ripple(index: index))
                }
                .offset(x: 0, y: proxy.size.height * heightRatio)
            }
        }
    }
}

func rangeOfRanges<C: Collection>(_ ranges: C) -> Range<Double>
    where C.Element == Range<Double> {
    guard !ranges.isEmpty else { return 0..<0 }
    let low = ranges.lazy.map { $0.lowerBound }.min()!
    let high = ranges.lazy.map { $0.upperBound }.max()!
    return low..<high
}

func magnitude(of range: Range<Double>) -> Double {
    range.upperBound - range.lowerBound
}

#Preview {
    let hike = ModelData().hikes[0]
    return Group {
        HikeGraph(hike: hike, path: \.elevation)
            .frame(height: 200)
        HikeGraph(hike: hike, path: \.heartRate)
            .frame(height: 200)
        HikeGraph(hike: hike, path: \.pace)
            .frame(height: 200)
    }
}
