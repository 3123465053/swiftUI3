//
//  AlertAndActionSheet.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/11/26.
//

import SwiftUI

struct AlertAndActionSheet: View {
    @State var show = false
    @State var showBottom = false
    var body: some View {
        VStack{
            Button("中间弹出"){
                show.toggle()
            }
            .alert("菜单", isPresented: $show, actions: {
                //默认有一个OK
                Button("YES"){
                    
                }
            
                Button("确认",role: .confirm){}
            })
            
            Button("底部弹出(当前点击的位置)"){
                showBottom.toggle()
            }
            .confirmationDialog("温馨提示", isPresented: $showBottom,titleVisibility: .visible ,actions: {
                Button("相机"){}
                Button("相册"){}
                Button("取消",role: .cancel){}
            })
        }
    }
}

#Preview {
    AlertAndActionSheet()
}
