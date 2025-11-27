//
//  SubmitLabel.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/11/27.
//

import SwiftUI

struct SubmitLabel: View {
    
    @State var text = ""
    var body: some View {
        TextField("",text: $text)
            .textFieldStyle(.roundedBorder)
            .padding()
            .submitLabel(.done)  //键盘右下角的提交(完成)按钮的文本显示
    }
}

#Preview {
    SubmitLabel()
}
