//
//  NavigationBarBackButtonTextHidden.swift
//  subscription-management-ios
//
//  Created by 工藤 海斗 on 2022/04/26.
//

import SwiftUI

struct NavigationBarBackButtonTextHidden: ViewModifier {
    @Environment(\.presentationMode) var presentation
    
    func body(content: Content) -> some View {
        content
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        presentation.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .foregroundColor(Color.blue)
                            .font(.system(size: 15, weight: Font.Weight.bold))
                    }
                }
            }
    }
}

extension View {
    func navigationBarBackButtonTextHidden() -> some View {
        return self.modifier(NavigationBarBackButtonTextHidden())
    }
}
