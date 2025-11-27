//
//  Focused.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/11/27.
//

import SwiftUI

enum Login:Hashable{
    case username
    case password
}

struct Focused: View {
    @State var username = ""
    @State var password = ""
    @FocusState var focusState:Login?
    var body: some View {
        VStack{
            TextField("请输入用户名",text: $username)
                .textFieldStyle(.roundedBorder)
                .padding()
                .focused($focusState,equals: .username)   //当 focusState 等于 username 时有焦点
            
            SecureField("请输入密码",text: $password)
                .textFieldStyle(.roundedBorder)
                .padding()
                .focused($focusState,equals: .password)
            
            //哪个为空 就将焦点对焦到哪个输入框
            Button("登录"){
                if username.isEmpty{
                    focusState = .username
                }else if password.isEmpty{
                    focusState = .password
                }else {
                    print(username)
                    print(password)
                }
            }.tint(.green)
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
        }
    }
}

#Preview {
    Focused()
}
