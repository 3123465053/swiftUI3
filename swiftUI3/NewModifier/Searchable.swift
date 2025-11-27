//
//  Searchable.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/11/27.
//
//搜索框
import SwiftUI

struct Searchable: View {
    @State var names = ["zhangsan","Lisi","wangwu","zhangli"]
    @State var searchText = ""
    var filetNames:[String] {
        if(searchText.isEmpty){
            return names;
        }else {
            //返回包含搜素关键词的名字
            return names.filter{
                name in
                name.localizedStandardContains(searchText)
            }
        }
    }
    
    var body: some View {
        NavigationView{
            List(filetNames,id: \.self){
                name in
                Text(name)
            }.navigationTitle("搜索")
        }
        //placement一直显示 
        .searchable(text: $searchText,placement: .navigationBarDrawer(displayMode: .always),prompt: "请输入关键字",suggestions: {
            Text("zhangsan")
        })
    }
}

#Preview {
    Searchable()
}
