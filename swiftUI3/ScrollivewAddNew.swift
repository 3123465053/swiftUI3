//
//  ScrollivewAddNew.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/11/25.
//

import SwiftUI

struct ScrollivewAddNew: View {
    var body: some View {
        ScrollView{
            Color.orange
                .frame(width: UIScreen.main.bounds.width,height: 1500)
        }
        //在安全区域添加一些内容
        .safeAreaInset(edge: .top, content: {
            VStack{
                Text("顶部")
            }
        })
        .safeAreaInset(edge: .bottom, content:{
            Text("底部")
        })
        
    }
}

#Preview {
    ScrollivewAddNew()
}
