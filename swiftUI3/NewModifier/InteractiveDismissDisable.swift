//
//  InteractiveDismissDisable.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/12/1.
//

import SwiftUI

struct InteractiveDismissDisable: View {
    @State var show = false
    
    var body: some View {
        Button("弹出新界面"){
            show.toggle();
        }.sheet(isPresented: $show, content: {
            DetailNew()
        })
    }
}

struct DetailNew :View {
//    @Environment(\.presentationMode) var presentationMode
    @Environment(\.dismiss) var dismiss   //可以直接这样使用 （新增的环境变量）
    var body: some View {
        Button("关闭"){
          //  presentationMode.wrappedValue.dismiss();
            dismiss()
        }
        .interactiveDismissDisabled(true)  //为true 不能通过手势下拉的方式关闭弹窗
    }
}

#Preview {
    InteractiveDismissDisable()
}
