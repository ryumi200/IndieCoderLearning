import UIKit
import SwiftUI
//
//var number: Int?
//if let suji = number {
//    print(suji)
//} else {
//    print("これがnilのときに出る文章ですよ")
//}
//
//var message: String? = "メッセージです"
//if let moji = message {
//    print(moji + "！！！")
//} else {
//    print("nilのときはこんな文章がでますよ")
//}
//
//message?.append("追加のメッセージです")
//
//
//struct ContentView: View {
//    @Environment(\.colorScheme) var colorScheme
//    
//    var body: some View {
//        if colorScheme == .dark {
//            Text("ダークモードです")
//        } else {
//            Text("ライトモードです")
//        }
//    }
//}
//
//var sample_flag: Bool = false
//print(sample_flag)
//print(sample_flag.toggle())


struct User {
    let id: Int
    let username: String
    let email: String
}

func getValue<T>(for keyPath: KeyPath<User, T>, from user: User) -> T {
    return user[keyPath: keyPath]
}

let user = User(id: 1, username: "swift_lover", email: "swift@example.com")
let user2 = User(id: 2, username: "Tim", email: "apple@example.com")

let id = getValue(for: \User.id, from: user)
let username = getValue(for: \User.username, from: user)
let email = getValue(for: \User.email, from: user)

print(id)       // 出力: 1
print(username) // 出力: swift_lover
print(email)    // 出力: swift@example.com

let tim_id = getValue(for: \User.id, from: user2)
let tim_username = getValue(for: \User.username, from: user2)
let tim_email = getValue(for: \User.email, from: user2)

print(tim_id)
print(t)
print(tim_email)

