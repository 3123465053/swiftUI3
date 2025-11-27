//
//  PrivacySensitive.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/11/27.
//

import SwiftUI

struct PrivacySensitive: View {
    var body: some View {
        //当app在后台时 就被隐藏掉了
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .privacySensitive()
    }
}

#Preview {
    PrivacySensitive()
}
