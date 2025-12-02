//
//  Refreshable.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/12/1.
//

import SwiftUI

struct Refreshable: View {
    
    @State var names = ["zhangsan","Lisi","Wangwu"]
    
    var body: some View {
        List{
            ForEach(names,id: \.self){name in
            
            Text(name)
                
            }
        }.refreshable {
            await loadMore()
        }
    }
    
    func loadMore()async{
    // https://httpbin.org/delay/2 这个接口的作用只是添加了2秒的延迟 模拟接口请求
        guard let url = URL(string: "https://httpbin.org/delay/2") else {return }
        _ = try! await URLSession.shared.data(for: URLRequest(url: url),delegate: nil)
        names.append("zhaoliu")
    }
}

#Preview {
    Refreshable()
}
