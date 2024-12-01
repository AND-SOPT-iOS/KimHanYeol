//
//  AppTileImageView.swift
//  35-Seminar
//
//  Created by OneTen on 12/2/24.
//

import SwiftUI

struct AppTileImageView: View {
    let app: App
    
    var body: some View {
        VStack{
            Spacer()
            
            HStack(alignment: .center) {
                Image(uiImage: app.iconImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40)
                    .clipShape(.buttonBorder)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(app.title)
                        .foregroundStyle(.white)
                        .font(.system(size: 16, weight: .bold))
                        .lineLimit(1)
                    
                    Text(app.subTitle ?? app.category.rawValue)
                        .foregroundStyle(.white)
                        .font(.system(size: 14, weight: .regular))
                        .lineLimit(1)
                }
                
                Spacer()
                
                Button {
                    print("swiftui로 만든 뷰")
                } label: {
                    app.price == 0 ?
                    Text(app.downloadState.title ?? "") : Text("₩\(app.price)")
                }
                .frame(width: 80, height: 30)
                .font(.system(size: 16, weight: .bold))
                .background(.white.opacity(0.5))
                .foregroundStyle(.white)
                .clipShape(.capsule)
                .padding(.leading, 10)
            }
            .padding()

        }
        .frame(width: 300, height: 250)
        .background(
            LinearGradient(
                gradient: Gradient(
                    colors: [
                        .clear,
                        .black.opacity(
                            0.4
                        )
                    ]
                ),
                startPoint: .top,
                endPoint: .bottom
            )
            .frame(width: 350, height: 250)
        )
        .background(content: {
            Image(uiImage: app.backgroundImage!)
                .resizable()
                .aspectRatio(contentMode: .fill)
        })
    }
}

#Preview {
//    AppTileImageView(app: App.collectionViewApps[1])
    FinancialView()
}
