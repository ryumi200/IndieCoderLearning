/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
Storage for model data.
*/

import Foundation

@Observable
class ModelData {
    var landmarks: [Landmark] = load("landmarkData")
    var hikes: [Hike] = load("hikeData")
    
    var features: [Landmark] {
        landmarks.filter { landmark in landmark.isFeatured }
    }
    
    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmarks,
            by: { $0.category.rawValue }
            )
    }
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: "json")
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

