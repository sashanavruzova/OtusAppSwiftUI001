//
//  Modifiers.swift
//  OtusAppSwiftUI001
//
//  Created by Sasha Navruzova on 26/03/2023.
//

import SwiftUI

struct ViewDidLoadModifier: ViewModifier {
    @State private var viewDidLoad: Bool = false
    let action: (() -> Void)?
    
    func body(content: Content) -> some View {
        content
            .onAppear {
                
                if viewDidLoad == false {
                    viewDidLoad = true
                    action?()
                }
            }
    }
}
