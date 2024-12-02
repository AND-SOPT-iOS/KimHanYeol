//
//  FinancialView.swift
//  35-Seminar
//
//  Created by OneTen on 12/1/24.
//

import SwiftUI

enum Destination: Hashable {
    case Toss
}

struct AppView: View {
    var body: some View {
        NavigationStack{
            
            NavigationLink {
                FinancialView()
            } label: {
                Text("Go to Financial View!")
            }
            .navigationTitle("앱")
            
        }
    }
}

struct FinancialView: View {
    var body: some View {
        NavigationStack(){
            ScrollView{
                VStack(alignment: .leading, spacing: 15) {
                    FinancialFirstSection()
                    FinancialSecondSection()
                    FinancialThirdSection()
                    FinancialFourthSection()
                }
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
        AppView()
//    FinancialView()
}
