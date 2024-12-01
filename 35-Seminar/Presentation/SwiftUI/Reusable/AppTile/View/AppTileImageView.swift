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
                    .frame(width: 50)
                    .clipShape(.buttonBorder)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(app.title)
                        .foregroundStyle(.white)
                        .font(.system(size: 18, weight: .bold))
                        .lineLimit(1)
                    
                    Text(app.subTitle ?? app.category.rawValue)
                        .foregroundStyle(.white)
                        .font(.system(size: 16, weight: .regular))
                        .lineLimit(1)
                }
                
                Spacer()
                
                Button {
                    print("swiftui로 만든 뷰")
                } label: {
                    app.price == 0 ?
                    Text(app.downloadState.title ?? "") : Text("₩\(app.price)")
                }
                .frame(width: 110, height: 40)
                .font(.system(size: 20, weight: .bold))
                .background(.white.opacity(0.5))
                .foregroundStyle(.white)
                .clipShape(.capsule)
                .padding(.leading, 10)
            }
            .padding()

        }
        .frame(height: 250)
        .background(LinearGradient(gradient: Gradient(colors: [.clear, .black.opacity(0.4)]),
                                   startPoint: .top, endPoint: .bottom))
        .background(content: {
            Image(uiImage: app.backgroundImage!)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipShape(.buttonBorder)
        })
    }
}

#Preview {
    AppTileImageView(app: App.collectionViewApps[1])
}
