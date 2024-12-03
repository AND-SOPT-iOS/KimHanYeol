//
//  FinancialFourthSection.swift
//  35-Seminar
//
//  Created by OneTen on 12/3/24.
//

import SwiftUI

struct FinancialFourthSection: View {
    @ObservedObject var viewModel: FinancialViewModel
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text(viewModel.fourthSectionHeader)
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
                            AppTileView(app: viewModel.freeApps[(index*3) + 0])
                        }
                    }
                    
                    Divider()
                    
                    GridRow{
                        ForEach(0..<3, id: \.self) { index in
                            let app = (index * 3) + 1
                            if viewModel.freeApps[app].title == "토스" {
                                NavigationLink(destination: {
                                    TossView()
                                }, label: {
                                    AppTileView(app: viewModel.freeApps[app])
                                        .foregroundStyle(.black)
                                })
                            } else {
                                AppTileView(app: viewModel.freeApps[app])
                            }
                        }
                    }
                    
                    Divider()
                    
                    GridRow{
                        ForEach(0..<3, id: \.self) { index in
                            AppTileView(app: viewModel.freeApps[(index*3) + 2])
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
