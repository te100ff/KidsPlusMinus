//
//  AnswersView.swift
//  KidsCount
//
//  Created by Stanislav Testov on 21.10.2022.
//

import SwiftUI

struct AnswersView: View {
    let answers = [1, 2, 3, 4]
    
    var body: some View {
        HStack(alignment: .center) {
            Spacer()
            ForEach(answers, id: \.self) { answer in
                Button("\(answer)") {
                    
                }
                .controlSize(.large)
                //.clipShape(Capsule())
                .buttonStyle(.borderedProminent)
                .font(.system(size: 45))
                
                
                if answers.last != answer {
                    Spacer()
                }
            }
            
            
        
            
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding()
        
    }
    
}


struct AnswersView_Previews: PreviewProvider {
    static var previews: some View {
        AnswersView()
    }
}
