import UIKit

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
