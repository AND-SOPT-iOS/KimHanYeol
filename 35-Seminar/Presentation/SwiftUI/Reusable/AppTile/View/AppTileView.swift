//
//  AppTileView.swift
//  35-Seminar
//
//  Created by OneTen on 12/1/24.
//

import SwiftUI

struct AppTileView: View {
    let app: App
    
    var body: some View {
        HStack(alignment: .center) {
            Image(uiImage: app.iconImage)
                .resizable()
                .scaledToFit()
                .frame(width: 60)
                .clipShape(.buttonBorder)
            
            Text(app.ranking.description)
                .font(.system(size: 16, weight: .bold))
                .padding(.bottom, 20)
                .padding(.horizontal, 5)
            
            VStack(alignment: .leading) {
                Text(app.title)
                    .font(.system(size: 18, weight: .bold))
                    .lineLimit(1)
                
                Text(app.subTitle ?? app.category.rawValue)
                    .font(.system(size: 16, weight: .regular))
                    .lineLimit(1)
            }
            
            Spacer()
            
            Button {
                print("swiftui로 만든 뷰")
            } label: {
                if app.downloadState.title == nil {
                    Image(systemName: "icloud.and.arrow.down")
                } else {
                    Text(app.downloadState.title ?? "")
                }
            }
            .frame(width: 80, height: 30)
            .background(.gray.opacity(0.2))
            .foregroundStyle(.blue)
            .clipShape(.capsule)
            .padding(.leading, 10)
        }
    }
}

#Preview {
    AppTileView(app: App.freeApps[0])
}
