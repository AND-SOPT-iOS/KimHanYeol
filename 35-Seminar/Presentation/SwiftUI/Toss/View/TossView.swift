//
//  TossView.swift
//  35-Seminar
//
//  Created by OneTen on 12/2/24.
//

import SwiftUI

struct TossView: View {
    var body: some View {
        ScrollView(showsIndicators: false){
            TossSectionOne().padding(.bottom, 20)
            Divider()
            TossSectionTwo().padding(.bottom, 20)
            TossSectionThree()
            Divider().padding(.bottom, 20)
            TossSectionFour()
            TossSectionFive()
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 10)
    }
}

#Preview {
    TossView()
}
