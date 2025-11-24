//
//  TimelineViewStudy.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/11/24.
//

import SwiftUI

struct TimelineViewStudy: View {
    var body: some View {
        //每一秒刷新一次
        TimelineView(.animation){context in
            Text(context.date.formatted(.dateTime.year().month().day().hour().minute().second().locale(Locale(identifier: "zh_CN"))))
        }
        
        //每分钟刷新一次
        TimelineView(.everyMinute){context in
            Text(context.date.formatted(.dateTime.year().month().day().hour().minute().second().locale(Locale(identifier: "zh_CN"))))}
        

        
        
    }
}

#Preview {
    TimelineViewStudy()
}
