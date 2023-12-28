import SwiftUI

struct UIViewControllerWrapper: UIViewControllerRepresentable {
    typealias UIViewControllerType = NewsDetailViewController
    
    let viewController: NewsDetailViewController
    
    func makeUIViewController(context: Context) -> NewsDetailViewController {
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: NewsDetailViewController, context: Context) {
    }
}
