//
//  PopularViewSwiftUI.swift
//  35-Seminar
//
//  Created by OneTen on 11/26/24.
//

import UIKit
import SwiftUI

struct TossViewControllerWrapper: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> TossViewController {
        return TossViewController()
    }
    
    func updateUIViewController(_ uiViewController: TossViewController, context: Context) {
        
    }
}

struct PopularViewSwiftUI: View {
    let apps: [App] = App.freeApps
    
    var body: some View {
        NavigationView {
            List(apps) { app in
                if app.title == "토스" { // 특정 앱인 "토스"인 경우만 이동
                    tossAppRow(for: app)
                } else {
                    appRow(for: app) // "토스"가 아닌 경우 일반 행
                }
            }
            .navigationTitle("인기 차트")
            .navigationBarTitleDisplayMode(.inline)
            .listStyle(.plain)
        }
    }
    
    private func appRow(for app: App) -> some View {
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
    
    private func tossAppRow(for app: App) -> some View {
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
            
            ZStack{
                NavigationLink {
                    TossViewControllerWrapper()
                } label: {
                    EmptyView()
                }
                .opacity(0)

            }
            .frame(width: 20)
            
            Text(app.downloadState.title ?? "")
                .frame(width: 80, height: 30)
                .background(.gray.opacity(0.2))
                .foregroundStyle(.blue)
                .clipShape(.capsule)
                .padding(.leading, 10)

        }
    }
}

#Preview {
    PopularViewSwiftUI()
}
