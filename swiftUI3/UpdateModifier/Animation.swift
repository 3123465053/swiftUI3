//
//  Animation.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/12/1.
//

import SwiftUI

struct Animation: View {
    
    @State var scale = false
    var body: some View {
        Image(systemName: "heart")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 40)
            .scaleEffect(scale ? 2 : 1)
            .animation(.default, value: scale) // 现在要传入 value 是那个值在发生变化
            .onTapGesture {
                scale.toggle()
            }
        
    }
}

#Preview {
    Animation()
}
