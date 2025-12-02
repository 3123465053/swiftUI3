//
//  NetworkUtils.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/12/1.
//

import Foundation

class NetworkUtils{
    let jsonDecoder = JSONDecoder()
    let session:URLSession = URLSession.shared
    let url:URL
    
    init(url: String) {
        self.url = URL(string:url)!
    }
    //<T:Codable>要求类型 返回范型 ；通过范型来处理返回数据；async throws 可能会抛出异常 
    public func get<T:Codable>() async throws->T{
        let (data,_) = try await session.data(for: URLRequest(url: url),delegate: nil)
        let t = try jsonDecoder.decode(T.self, from: data)
        return t
    }
}
