//
//  CanvasStudy.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/11/24.
//

import SwiftUI

struct CanvasStudy: View {
    var body: some View {
        VStack{
            //左上角为原点
            Canvas{ context,_ in
                context.draw(Text("绘制文本"), at: CGPoint(x: 100, y: 20))
            }
            
            //绘制图片
            Canvas{ context,_ in
                context.draw(Image(systemName: "heart"),in: CGRect(x: 0, y: 50, width: 100, height: 100))
            }
            
            //绘制路径-填充的形式
            Canvas{ context,size in
                context.fill(Path(ellipseIn: CGRect(origin: CGPoint.zero, size: size)), with: .color(Color.red))
            }
            .frame(width: 200,height: 100)
            .border(.blue)
            
            //绘制路径-描边的形式
            Canvas{
                context,size in
                context.stroke(Path(ellipseIn: CGRect(origin: .zero, size: size)), with: .color(Color.blue), lineWidth: 2)
            }
            .frame(width: 200,height: 100)
            .border(Color.red)
            
            
            
            
        }
    }
}

#Preview {
    CanvasStudy()
}
