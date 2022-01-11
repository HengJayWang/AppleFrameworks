//
//  XDismissButton.swift
//  AppleFrameworks
//
//  Created by M100-M1MacMini on 2021/12/30.
//

import SwiftUI

struct XDismissButton: View {
    @Binding var isShowing: Bool
    var body: some View {
        HStack {
            Spacer()
            Button {
                isShowing = false
            } label: {
                Image(systemName: "xmark.circle")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 50, height: 50)
            }
        }
        .padding()
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton(isShowing: .constant(false))
    }
}
