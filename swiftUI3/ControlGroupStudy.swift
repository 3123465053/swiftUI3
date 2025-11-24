//
//  ControlGroupStudy.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/11/24.
//
//将组件放在一起 组成一个整体
import SwiftUI

struct ControlGroupStudy: View {
    var body: some View {
        NavigationView{
            ControlGroup{
                Text("喜欢")
                Text("收藏")
            }
        }
        .frame(width: 150)
        .navigationTitle("ControlGroupStudy")
        .toolbar(content: {
                ControlGroup{
                    Button(action: {}, label: {
                        Image(systemName: "heart")
                            
                    })
                    
                    Button(action: {}, label: {
                        Image(systemName: "star")
                    })
                }
            })
    }
}

#Preview {
    ControlGroupStudy()
}
