import SwiftUI

struct NewsListView: View {
    @ObservedObject var viewModel = NewsViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.articles) { article in
                NavigationLink(destination: NewsDetailViewController(article: article)) {
                    NewsCell(article: article)
                }
            }
            .navigationTitle("News")
        }
        .onAppear {
            viewModel.fetchArticles()
        }
    }
}
