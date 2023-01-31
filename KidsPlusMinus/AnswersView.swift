//
//  AnswersView.swift
//  KidsCount
//
//  Created by Stanislav Testov on 21.10.2022.
//

import SwiftUI

struct AnswersView: View {
    @State var data = NumbersData()
    
    var body: some View {
        HStack(alignment: .center) {
            Spacer()
            ForEach(data.answers, id: \.self) { answer in
                Button("\(answer)") {
                    
                }
                .controlSize(.large)
                //.clipShape(Capsule())
                .buttonStyle(.borderedProminent)
                .font(.system(size: 45))
                
                
                if data.answers.last != answer {
                    Spacer()
                }
                
            }
            
            
        
            
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding()
        .onAppear {
            data.generateData()
        }
        
    }
    
}


struct AnswersView_Previews: PreviewProvider {
    static var previews: some View {
        AnswersView()
    }
}
