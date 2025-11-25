//
//  ForEachAndList.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/11/25.
//

import SwiftUI

struct Person:Identifiable{
    let id = UUID()
    var name = ""
    var gender = false
}

//ForEach和List 可以传Binding 值
struct ForEachAndList: View {
    
    @State var persons = [
        Person(name: "张三",gender: true),
        Person(name: "李四",gender: true)
    ]
    
    var body: some View {
        VStack{
            //用List 也是一样的
            ForEach($persons){
                $person in
                PersonDetail(person: $person)
            }
        }
    }
}

struct PersonDetail:View {
    @Binding  var person:Person
    var body: some View {
        HStack{
            Text(person.name)
            TextField("",text: $person.name)
                .textFieldStyle(.roundedBorder)
            Toggle("",isOn: $person.gender)
        }
    }
}

#Preview {
    ForEachAndList()
}
