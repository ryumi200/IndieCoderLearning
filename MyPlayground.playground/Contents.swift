import UIKit
import SwiftUI

var number: Int?
if let suji = number {
    print(suji)
} else {
    print("これがnilのときに出る文章ですよ")
}

var message: String? = "メッセージです"
if let moji = message {
    print(moji + "！！！")
} else {
    print("nilのときはこんな文章がでますよ")
}

message?.append("追加のメッセージです")


struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        if colorScheme == .dark {
            Text("ダークモードです")
        } else {
            Text("ライトモードです")
        }
    }
}
