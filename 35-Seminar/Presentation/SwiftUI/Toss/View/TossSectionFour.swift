//
//  TossSectionFour.swift
//  35-Seminar
//
//  Created by OneTen on 12/3/24.
//

import SwiftUI

struct TossSectionFour: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("토스뱅크, 토스증권 서비스를 이용하시려면 토스 앱 설치가 필요합니다.")
                .lineSpacing(8)
                .font(.system(size: 16))
                .padding(.trailing, 20)
                .padding(.bottom, 5)
            
            HStack(spacing: 3){
                Image(systemName: "circle.fill")
                Text("내 금융 현황을 한눈에, 홈,소비")
                    .font(.system(size: 16))
                
                Spacer()
                
                Button("더 보기"){}
            }
            .padding(.bottom, 20)
            
            HStack{
                VStack(alignment: .leading, spacing: 3){
                    Button("Viva Republica"){}
                    Text("개발자")
                        .font(.system(size: 16))
                        .foregroundStyle(.gray)
                }
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundStyle(.gray)
            }
            
        }
    }
}

#Preview {
    TossSectionFour()
}
