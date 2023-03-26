//
//  LoaderView.swift
//  OtusAppSwiftUI001
//
//  Created by Sasha Navruzova on 26/03/2023.
//

import SwiftUI

struct LoaderView: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.startAnimating()
        return activityIndicatorView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) { }
}
