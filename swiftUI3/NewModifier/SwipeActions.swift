//
//  SwipeActions.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/12/1.
//

import SwiftUI

struct SwipeActions: View {
    var body: some View {
        List{
            ForEach(0..<10){
                index in
                Text("Item\(index)")
                //后面的操作按钮 allowsFullSwipe 当位true时 可以往右滑完 并且执行content 里面的第一个按钮的方法
                    .swipeActions(edge: .trailing,allowsFullSwipe: true, content: {
                        Button("删除",role: .destructive){
                            
                        }
                        
                        Button("取消",role: .cancel){
                            
                        }
                    })
                //前面的操作按钮
                    .swipeActions(edge: .leading,allowsFullSwipe: true, content: {
                        Button("收藏"){
                            
                        }
                        
                    
                    })
            }
        }
    }
}

#Preview {
    SwipeActions()
}
