//
//  NumbersForCount.swift
//  KidsCount
//
//  Created by Stanislav Testov on 16.10.2022.
//

import SwiftUI

struct NumbersForCount: View {
    @State var data = NumbersData()
    
    @State private var scale = 0.0
    @State private var showAlert = false
    
    var body: some View {
        
        
        HStack {
            Text(String(data.firstNumber))
                .foregroundColor(.red)
            Text(data.operation.rawValue)
            Text(String(data.secondNumber))
                .foregroundColor(data.operation == Operations.plus ? .red : .blue)
            Text("=")
            Image(systemName: "questionmark.circle.fill")
                .foregroundStyle(.indigo, .white)
                /*
                .scaleEffect(scale)
                .onAppear {
                    let animation = Animation.easeIn(duration: 1).delay(0.5).repeatForever(autoreverses: true)
                    
                    withAnimation(animation) {
                        scale = 1.5
                    }
                }
                */
                .onTapGesture {
                    showAlert = true
                    
                }
        }
        .onAppear {
            data.generateData()
        }
        .font(.system(size: 44))
        .fontWeight(.bold)
        .alert("Ha - ha!", isPresented: $showAlert) {
            Button("OK", role: .destructive) { }
            Button("\(data.rightAnswer)", role: .none) { print("ffff") }
        } message: {
            Text("Don't know!!!")
        }
        
    }
}

struct NumbersForCount_Previews: PreviewProvider {
    static var previews: some View {
        NumbersForCount()
    }
}
