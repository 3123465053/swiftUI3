//
//  NewsModel.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/12/1.
//

import Foundation

struct NewsModel:Codable{
    var reason:String
    var error_code:Int
    var  result:Result
}


struct Result:Codable{
    var stat:String
    var page:String
    var pageSize:String
    var data:[News]
}

struct News:Codable,Hashable{
    var uniquekey:String
    var title:String
    var date:String
    var category:String
    var url:String
    var thumbnail_pic_s:String
    var is_content:String
    var author_name:String
}
