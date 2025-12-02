//
//  ListRowAndListSection.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/12/1.
//

import SwiftUI

struct ListRowAndListSection: View {
    var body: some View {
//        List(0..<10){
//            index in
//            Text("item\(index)")
//                .listRowSeparatorTint(.green)   //分割线颜色
//            //隐藏分隔线
////                .listRowSeparator(.hidden)
//        }
        List{
            Section{
                ForEach(0..<5, content: {
                    index in
                    Text("item\(index)")
                })
            }
            
            Section{
                ForEach(5..<10, content: {
                    index in
                    Text("item\(index)")
                })
            }.listSectionSeparatorTint(.red,edges: .bottom)
        }
        .listStyle(.grouped)  //设置这样样式 listSectionSeparatorTint 才有效果
        
    }
}

#Preview {
    ListRowAndListSection()
}
