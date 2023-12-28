import SwiftUI

struct NewsCell: UIViewRepresentable {
    var article: Article

    func makeUIView(context: Context) -> some UIView {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text = article.title
        cell.detailTextLabel?.text = article.publishedAt
        
  
        return cell
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {
        guard let cell = uiView as? UITableViewCell else { return }
        cell.textLabel?.text = article.title
        cell.detailTextLabel?.text = article.publishedAt
        
    }
}
