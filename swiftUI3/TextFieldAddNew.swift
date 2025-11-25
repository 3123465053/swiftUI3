//
//  TextFieldAddNew.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/11/25.
//

import SwiftUI

struct TextFieldAddNew: View {
    @State var text = ""
    
    var body: some View {
        TextField("请输入文本",text: $text)
            .textFieldStyle(.roundedBorder)
            .padding()
            //在键盘上添加一条工具按钮
            .toolbar(content:{
                ToolbarItemGroup(placement: .keyboard){
                    
                    Button("拷贝"){
                        
                    }
                    Button("剪切"){
                        
                    }
                    Button("删除"){
                        
                    }
                    
                    Button("粘贴"){
                        
                    }
                }
            })
    }
}

#Preview {
    TextFieldAddNew()
}
