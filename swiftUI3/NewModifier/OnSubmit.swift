//
//  OnSubmit.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/11/27.
//

import SwiftUI

struct OnSubmit: View {
    
  @State var username = ""
  @State var password = ""
    
    var body: some View {
        VStack{
            TextField("请输入用户名",text: $username)
                .textFieldStyle(.roundedBorder)
                .submitScope(username.count < 6)  //submitScope 是否禁用onSubmit方法调用
                .padding()
            
            TextField("请输入密码",text: $password)
                .textFieldStyle(.roundedBorder)
                .padding()
        }
        //当点击键盘右下角 操作按钮时触发
        .onSubmit {
            print(username)
            print(password)
        }
    }
}

#Preview {
    OnSubmit()
}
