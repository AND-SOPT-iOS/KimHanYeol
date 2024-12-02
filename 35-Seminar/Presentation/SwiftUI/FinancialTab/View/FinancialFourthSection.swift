//
//  FinancialFourthSection.swift
//  35-Seminar
//
//  Created by OneTen on 12/3/24.
//

import SwiftUI

struct FinancialFourthSection: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("무료 순위")
                    .font(.system(size: 26, weight: .semibold))
                
                NavigationLink {
                    PopularView()
                } label: {
                    Image(systemName: "chevron.right")
                        .foregroundStyle(.gray)
                        .bold()
                }

            }
            
            ScrollView(.horizontal, showsIndicators: false){
                Grid(horizontalSpacing: 15){
                    GridRow{
                        ForEach(0..<3, id: \.self) { index in
                            AppTileView(app: App.freeApps[(index*3) + 0])
                        }
                    }
                    
                    Divider()
                    
                    GridRow{
                        ForEach(0..<3, id: \.self) { index in
                            let app = (index * 3) + 1
                            if App.freeApps[app].title == "토스" {
                                NavigationLink(destination: {
                                    TossView()
                                }, label: {
                                    AppTileView(app: App.freeApps[app])
                                        .foregroundStyle(.black)
                                })
                            } else {
                                AppTileView(app: App.freeApps[app])
                            }
                        }
                    }
                    
                    Divider()
                    
                    GridRow{
                        ForEach(0..<3, id: \.self) { index in
                            AppTileView(app: App.freeApps[(index*3) + 2])
                        }
                    }
                    
                }
            }
            .scrollTargetBehavior(.paging)
        }
        .padding(20)
        .navigationTitle("금융")
    }
}

#Preview {
    FinancialFourthSection()
}
