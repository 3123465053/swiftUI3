//
//  ImageAddNew.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/11/25.
//
//分层设置系统图片颜色
import SwiftUI

struct ImageAddNew: View {
    var body: some View {
        VStack{
            Image(systemName: "person.3.sequence")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
            //如果系统图片是三层的，则可以分开设置每层的颜色
                .foregroundStyle(.red,.green,.blue)
                .symbolRenderingMode(.palette)  //渲染模式
            
            // 通过symbolVariant(.circle) 设置图片不同的形态
            Image(systemName: "trash")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .symbolVariant(.circle)
            
            Image(systemName: "trash")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .symbolVariant(.fill)
            
        }
    }
}

#Preview {
    ImageAddNew()
}
