//
//  TossSectionThree.swift
//  35-Seminar
//
//  Created by OneTen on 12/3/24.
//

import SwiftUI

struct TossSectionThree: View {
    var body: some View {
        VStack(alignment: .leading){
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    Image(.tosspreview01)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200)
                        .clipShape(.rect(cornerRadius: 5))
                    
                    Image(.tosspreview02)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200)
                        .clipShape(.rect(cornerRadius: 5))
                    
                    Image(.tosspreview03)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200)
                        .clipShape(.rect(cornerRadius: 5))
                    
                    Image(.tosspreview04)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200)
                        .clipShape(.rect(cornerRadius: 5))
                    
                    Image(.tosspreview05)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200)
                        .clipShape(.rect(cornerRadius: 5))
                }
            }
            
            HStack{
                Image(systemName: "iphone")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 20)
                
                Text("iPhone")
            }
            .padding()
            .foregroundStyle(.gray)
            
        }
        
    }
}

#Preview {
    TossSectionThree()
}
