//
//  KeyboardShortcut.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/11/27.
//

import SwiftUI

struct KeyboardShortcut: View {
    var body: some View {
        Button("快捷方式执行按钮操作"){
            print("Cmd+C")
        }
        //按下C+command 执行按钮的action
            .keyboardShortcut("C",modifiers: [.command])
    }
}

#Preview {
    KeyboardShortcut()
}
