//
//  NewsView.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/12/2.
//

import SwiftUI
internal import Combine

class ViewModel: ObservableObject{
   
    @Published var news = [News]()
    var page = 1
    
    func getNews()async->[News]{
        do{
            let model:NewsModel = try await NetworkUtils(url: "https://v.juhe.cn/toutiao/index?type=top&key=d1287290b45a69656de361382bc56dcd&page=\(page)&page_size=10").get()
          //  news = model.result.data
            return model.result.data
        }
        catch{
            return []
        }
    }
    
}

struct ListRow:View {
    var news:News
    
    var newsImage:some View{
        AsyncImage(url: URL(string: news.thumbnail_pic_s)){phase in
        
            switch phase {
            case .empty:    //未加载
                ProgressView()
                    .frame(width: 100,height: 80,alignment: .center)
            case .success(let image):
                image.resizable()
                    .frame(width: 100,height: 80)
            case .failure(let error):
                Image(systemName: "photo")
                    .resizable()
                    .frame(width: 100,height: 80)
                    .foregroundStyle(.green)
            @unknown default:
                EmptyView()
            }
            
        }
    }
    
    var body: some View {
        HStack{
            newsImage
            
            VStack(alignment: .leading, content: {
                Text(news.title)
                    .font(.title3)
                    .foregroundStyle(.red)
                    .lineLimit(5)
                
                Spacer()
                
                HStack{
                    Text(news.author_name)
                        .font(.subheadline)
                        .foregroundStyle(.black)
                    
                    Spacer()
                    
                    Text(news.date.prefix(16).suffix(11))
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }
            })
        }.padding(8)
    }
}

struct NewsView: View {
    @StateObject var viewModel:ViewModel = ViewModel()
    

    var body: some View {
        NavigationView{
            List{
                ForEach(viewModel.news,id: \.self){news in
                ListRow(news: news)
                        .task {
                            //是最后一个就加载更多
                            if news == viewModel.news.last
                            {
                                viewModel.page += 1
                                viewModel.news += await viewModel.getNews()
                            }
                        }
                }
            }.task {
                viewModel.news = await viewModel.getNews();
            }
            .refreshable {
                viewModel.page = 1
                viewModel.news = await viewModel.getNews();
            }
            .navigationTitle("头条新闻")
        }
    }
}

#Preview {
    NewsView()
}
