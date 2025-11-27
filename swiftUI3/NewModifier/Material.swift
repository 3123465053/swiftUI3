//
//  Material.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/11/27.
//

import SwiftUI

struct Material: View {
    var body: some View {
        ZStack{
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 200,height: 200)
                .foregroundStyle(.red)
            
            HStack{
                
            }   .frame(width: 200,height: 200)
                .background(.thinMaterial)   //thinMaterial 添加模糊层
            
        }
    }
}

#Preview {
    Material()
}
