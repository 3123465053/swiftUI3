//
//  BorderShapeAndControlSize.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/11/26.
//

import SwiftUI

struct BorderShapeAndControlSize: View {
    var body: some View {
        VStack{
            Button("按钮"){}
                .tint(.green)
                .buttonStyle(.bordered)
                .buttonBorderShape(.capsule)   //胶囊形式
            
            Button("按钮"){}
                .tint(.green)
                .buttonStyle(.bordered)
                .buttonBorderShape(.roundedRectangle)   //有圆角的矩形
            
            Button("按钮"){}
                .tint(.green)
                .buttonStyle(.bordered)
                .buttonBorderShape(.roundedRectangle(radius: 8))   //自定义圆角的矩形
            
            Button("按钮"){}
                .tint(.green)
                .buttonStyle(.bordered)
                .buttonBorderShape(.circle)   //圆角
            
            Button("按钮"){}
                .tint(.green)
                .buttonStyle(.bordered)
                .buttonBorderShape(.roundedRectangle(radius: 8))
                .controlSize(.large)   //可以设置按钮大小
            
            
            
            
        }
    }
}

#Preview {
    BorderShapeAndControlSize()
}
