//
//  tintAndTextInput.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/11/26.
//

import SwiftUI

//.tint() 用来改变控件的“强调色 / 主题色”（按钮、Toggle、导航返回按钮、Link 等）
//  .foregroundStyle() 用来控制“前景内容本身的绘制颜色”（文字、图形、Shape、Icon 等）


struct tintAndTextInput: View {
    @State var input = ""
    
    var body: some View {
        VStack{
            Button("颜色"){
            }
            .tint(.red)
            
            TextField("输入",text: $input)
                .textFieldStyle(.roundedBorder)
                .textInputAutocapitalization(.never)   //不大写
//                .textInputAutocapitalization(.characters)   //每个字母大写
//                .textInputAutocapitalization(.sentences)  //句子首字母大写
//                .textInputAutocapitalization(.words)  //单词首字母大写
                
        }
        
    }
}

#Preview {
    tintAndTextInput()
}
