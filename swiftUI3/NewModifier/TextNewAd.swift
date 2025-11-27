//
//  TextNewAd.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/11/26.
//

import SwiftUI

struct TextNewAd: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
           
        //允许拷贝 textField 默认是支持拷贝的
            .textSelection(.enabled)
    }
}

#Preview {
    TextNewAd()
}
