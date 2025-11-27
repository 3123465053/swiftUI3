//
//  ForegroundStyle.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/11/26.
//

import SwiftUI

struct ForegroundStyle: View {
    @State  var isShow = false
    
    var body: some View {
        VStack{
            Text("Hello,world")
                .foregroundStyle(.red)
            
            //下面四个有渐变效果 四个等级
            Text("Hello,world")
                .foregroundStyle(.primary)
            
            Text("Hello,world")
                .foregroundStyle(.secondary)
            
            Text("Hello,world")
                .foregroundStyle(.tertiary)
            
            Text("Hello,world")
                .foregroundStyle(.quaternary)
            
            //渐变色
            Text("Hello,world")
                .foregroundStyle(LinearGradient(colors: [Color.green,Color.orange], startPoint: .leading, endPoint: .trailing))
            
            Button("切换样式"){
                isShow.toggle()
            }
            //不加 AnyShapeStyle 会报错 因为Color.red和LinearGradient是不同的类型
            Text("Hello,world")
                .foregroundStyle(isShow ? AnyShapeStyle(Color.red):AnyShapeStyle(LinearGradient(colors: [Color.green,Color.orange], startPoint: .leading, endPoint: .trailing)))
        }
    }
}

#Preview {
    ForegroundStyle()
}
