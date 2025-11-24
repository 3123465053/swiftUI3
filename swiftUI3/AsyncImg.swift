//
//  AsyncImg.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/11/24.
//
//加载网络图片
import SwiftUI

struct AsyncImg: View {
    var url = URL(string: "https://qcloud.dpfile.com/pc/TrdZpLN1zkXDV4oN2FH98LdVnvHj694NKQu0_KA3ul4eYxZWRPQ7CJuw-PqyZBS4.jpg")
    
    let transaction: Transaction = .init(animation: .linear)
    
    var body: some View {
        VStack{
            AsyncImage(url: url, content: {
                image in
                image.resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 300)
                    
            }, placeholder: {
                ProgressView()
            })
            
            //有加载失败的情况
            AsyncImage(url: url,transaction: transaction){
                phase in
                switch phase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image.resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 300)
                case .failure(let error):
                    Button("重新加载"){}
                @unknown default:
                    EmptyView()
                }
            }
                
        }
    }
}

#Preview {
    AsyncImg()
}
