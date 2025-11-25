//
//  TextAddNew2.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/11/25.
//
//字符串格式化
import SwiftUI

struct TextAddNew2: View {
    private let value = 12345
    private let percent = 25
    private let price = 100
    private let names = ["张三","李四"]
    //重量
    private let weight = Measurement(value: 100, unit: UnitMass.kilograms)
    
    var body: some View {
        VStack{
            
            Text(value,format: .number)
            //百分数
            Text(percent,format: .percent)
            
            //价格单位
            Text(price,format: .currency(code: "rmb"))
            
            Text(names,format: .list(type: .and))
            
            //重量
            Text(weight,format: .measurement(width: .wide))
        }
    }
}

#Preview {
    TextAddNew2()
}
