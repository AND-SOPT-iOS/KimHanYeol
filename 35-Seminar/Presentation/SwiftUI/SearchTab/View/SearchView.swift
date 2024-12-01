//
//  SearchView.swift
//  35-Seminar
//
//  Created by OneTen on 12/1/24.
//

import SwiftUI

import RxSwift
import RxCocoa

struct SearchView: View {
    let apps: [App] = App.freeApps
    
    var body: some View {
        
        // 검색창 rx로 만들기
        
        List(apps) { index in
            AppTileView(app: index)
        }
        .listStyle(.inset)

    }
}

#Preview {
    SearchView()
}
