//
//  MenuNew.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/11/26.
//

import SwiftUI

struct MenuNew: View {
    @State var bgColor = Color.red
    
    var body: some View {
        ZStack{
            bgColor
            
            //加了primaryAction 要长按才能弹窗菜单
            Menu("菜单", content: {
                Button("蓝色"){
                    bgColor = Color.blue
                }
                
                Button("绿色"){
                    bgColor = Color.green
                }
            }, primaryAction: {
                bgColor = Color.gray
            })
        }
    }
}

#Preview {
    MenuNew()
}
