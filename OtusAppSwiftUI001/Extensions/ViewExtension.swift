//
//  ViewExtension.swift
//  OtusAppSwiftUI001
//
//  Created by Sasha Navruzova on 26/03/2023.
//

import SwiftUI

extension View {
    func onViewDidLoad(perform action: (() -> Void)? = nil) -> some View {
        self.modifier(ViewDidLoadModifier(action: action))
    }
}
