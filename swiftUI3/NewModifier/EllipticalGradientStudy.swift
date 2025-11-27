//
//  EllipticalGradient.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/11/27.
//

import SwiftUI

struct EllipticalGradientStudy: View {
    var body: some View {
        VStack{
            Rectangle()
                .frame(width: 200,height: 100)
            //椭圆形渐变 center渐变中心;startRadiusFraction渐变开始位置的半径占比（从椭圆中心开始）; endRadiusFraction 结束位置
                .foregroundStyle(EllipticalGradient(colors:[.orange,.green],center: .bottomLeading,startRadiusFraction: 0,endRadiusFraction: 1))
                
        }
    }
}

#Preview {
    EllipticalGradientStudy()
}
