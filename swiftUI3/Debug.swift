//
//  Debug.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/11/25.
//

import SwiftUI
internal import Combine



class TestDebug:ObservableObject{
    
    @Published var count = 0
    
    var timer:Timer!
    
    init() {
        //3秒后执行 是否重复
        timer = Timer(timeInterval: 3, repeats: true, block: {_ in
            self.count += 1;
        })
        
        //要添加到这里才能执行
        RunLoop.current.add(timer, forMode: .common)
    }
}

struct Debug: View {
    @ObservedObject var debug = TestDebug()
    
    var body: some View {
        //用这个来打印当前UI刷新
        Self._printChanges()
       return  Text("发生了\(debug.count)变化")
    }
}

#Preview {
    Debug()
}
