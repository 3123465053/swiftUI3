//
//  Badge.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/12/1.
//

import SwiftUI

struct Badge: View {
    var body: some View {
        TabView{
            Text("首页").tabItem
            {
                Text("首页")
                Image(systemName: "house")
            }
            .badge(1)
            
            Text("消息").tabItem
            {
                Text("消息")
                Image(systemName: "message")
            }
            .badge("new")
            
            Text("通讯录").tabItem
            {
                Text("通讯录")
                Image(systemName: "person")
            }
            .badge("100")
        }
    }
}

#Preview {
    Badge()
}
