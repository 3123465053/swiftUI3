//
//  OpenURL.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/12/1.
//

import SwiftUI

struct OpenURL: View {
    var bd = URL(string: "https://www.baidu.com")
    var wwdc = URL(string: "https://apple.com")
    
    @Environment(\.openURL) var openURL
    var body: some View {
        VStack{
            //直接打开百度
            Link("百度",destination: bd!)
                .environment(\.openURL,OpenURLAction{
                    url in
                        .systemAction
                })
            
            //自己处理跳转 点击后不直接跳转到浏览器
            Link("百度",destination: bd!)
                .environment(\.openURL,OpenURLAction{
                    url in
                    //自己处理打开浏览器
                    handle(url: url)
                    return .handled
                })
            
            
            //感觉和 handled 差不多
            Link("Apple",destination:wwdc!)
                .environment(\.openURL,OpenURLAction{
                    url in
                    //自己处理打开浏览器
                    handle(url: url)
                    return .discarded
                })
            
            //重定向到QQ
            Link("Apple",destination: wwdc!)
                .environment(\.openURL,OpenURLAction{
                    url in
                       
                        .systemAction(URL(string: "https://qq.com")!)
                })
        }
    }
    
    func handle(url:URL){
        openURL.callAsFunction(url)
    }
}

#Preview {
    OpenURL()
}
