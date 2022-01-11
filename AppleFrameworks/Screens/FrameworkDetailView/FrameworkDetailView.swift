//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by M100-M1MacMini on 2021/12/29.
//

import SwiftUI

struct FrameworkDetailView: View {

    let framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView: Bool = false
    
    var body: some View {
        VStack {
            XDismissButton(isShowing: $isShowingDetailView)

            Spacer()
            
            FrameworkIconView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "More Detail")
            }
        }
        .sheet(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString)! )
        }
        .padding()

    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sample, isShowingDetailView: .constant(true))
    }
}
