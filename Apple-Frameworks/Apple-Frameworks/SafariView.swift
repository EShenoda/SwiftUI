//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by emil shenoda on 9/26/23.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    
    
    let url: URL
    
    
    // Conform to UIViewControllerRepresentable
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) ->
    SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context:
                                UIViewControllerRepresentableContext<SafariView>) {}
    
}
