//
//  ButtonAndToggle.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/11/25.
//

import SwiftUI

//button 和toggle设置样式
struct ButtonAndToggle: View {
    @State var isOn = false;
    
    var body: some View {
        VStack{
            
            Button(action: {}, label: {
                Label("喜欢",systemImage: "heart")
            })
            
            
            Button(action: {}, label: {
                Label("喜欢",systemImage: "heart")
            })
            //设置button 样式
            .buttonStyle(.bordered)
            
            Button(action: {}, label: {
                Label("喜欢",systemImage: "heart")
            })
            //没有边框
            .buttonStyle(.borderless)
            
            Button(action: {}, label: {
                Label("喜欢",systemImage: "heart")
            })
            //设置颜色
            .tint(.red)
            //设置button 样式
            .buttonStyle(.borderedProminent)
            
            // 通过button 角色改变样式
            Button("cancel",role: .cancel){
                
            }
            
            
            // 通过button 角色改变样式
            Button("delete",role: .destructive){
                
            }
            
            Toggle("开关",isOn: $isOn)
            //变成按钮的样式
                .toggleStyle(.button)
        }
    }
}

#Preview {
    ButtonAndToggle()
}
