//
//  SectionAndLink.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/11/26.
//

import SwiftUI

struct SectionAndLink: View {
    var body: some View {
        VStack{
            //markDown 的形式
            Text("[Applle](https://www.apple.com)")
            
            Section {
                Text("数据1")
                Text("数据2")
            } header: {
                Text("头部")
            } footer: {
                Text("尾部")
            }

        }
    }
}

#Preview {
    SectionAndLink()
}
