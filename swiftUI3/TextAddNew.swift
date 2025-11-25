//
//  TextAddNew.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/11/25.
//

import SwiftUI

struct TextAddNew: View {
    // str 是AttributedString 类型 并进行初始化
    //可以在 初始化时为字符串设置一些属性 (计算属性)
    var str:AttributedString {
        var str = AttributedString("Hello SwiftUI")
        str.foregroundColor = .green
        //下划线
        str.underlineStyle = .init(color: .red)
        
        //将Swift 文本 设置其他属性
        //找出要设置的字符串的下标 在通过下标访问字符串为其设置属性
        if let range = str.range(of: "Swift"){
            str[range].font = .title
        }
        
        return str
    }
    
    var body: some View {
        VStack{
            /**---------支持MarkDown--------**/
            // 正常
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            //加粗
            Text("**Hello, World!**")
            //斜体
            Text("*Hello, World!*")
            //代码
            Text("`Hello, World!`")
            //删除线
            Text("~~Hello, World!~~")
            //超链接
            Text("[Hello, World!](https://www.apple.com)")
            
            Text(str)
            
        }
    }
}

#Preview {
    TextAddNew()
}
