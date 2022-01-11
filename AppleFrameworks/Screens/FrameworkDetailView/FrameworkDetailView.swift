//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by M100-M1MacMini on 2021/12/29.
//

import SwiftUI

struct FrameworkDetailView: View {

    @ObservedObject var viewModel: FrameworkDetailViewModel
    
    var body: some View {
        VStack {
            XDismissButton(isShowing: $viewModel.isShowingDetailView.wrappedValue)

            Spacer()
            
            FrameworkIconView(framework: viewModel.framework)
            
            Text(viewModel.framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Link(destination: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com")!) {
                AFButton(title: "More Detail")
            }
            
//            Button {
//                viewModel.isShowingSafariView = true
//            } label: {
//                AFButton(title: "More Detail")
//            }
        }
//        .sheet(isPresented: $viewModel.isShowingSafariView) {
//            SafariView(url: URL(string: viewModel.framework.urlString)! )
//        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(viewModel:
                                FrameworkDetailViewModel(framework: MockData.sample,
                                                         isShowingDetailView: .constant(true)))
    }
}
