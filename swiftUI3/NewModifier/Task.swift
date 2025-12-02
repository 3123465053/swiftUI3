//
//  Task.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/12/1.
//

import SwiftUI

struct Task: View {
    @State var content = ""
    
    var body: some View {
        NavigationView{
            ScrollView{
                Text(content)
                //在这里进行一些耗时操作
                    .task {
                        //尝试 将String 类型的地址转成url能成功 就将值赋给url 不能就return
                        //  guard 作用类似于 if 但是比if 更简洁
                    guard let url = URL(string: "https://www.baidu.com") else {return }
                            
                            do{
                                let (data,_) = try await URLSession.shared.data(for: URLRequest(url: url),delegate: nil)
                                content = String(data:data,encoding: .utf8)!
                            }
                    catch{
                        content = "出现异常"
                    }
                }
            }
                .navigationTitle("搜索一下")
        }
    }
}

#Preview {
    Task()
}
