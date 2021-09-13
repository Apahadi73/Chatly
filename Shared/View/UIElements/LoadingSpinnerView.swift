//
//  LoadingSpinner.swift
//  Chatly (iOS)
//
//  Created by Amir Pahadi on 7/17/21.
//

import SwiftUI

struct LoadingSpinnerView: View {
    var body: some View {
        VStack{
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: .green))
                .scaleEffect(3)
        }
    }
}

struct LoadingSpinner_Previews: PreviewProvider {
    static var previews: some View {
        LoadingSpinnerView()
    }
}
