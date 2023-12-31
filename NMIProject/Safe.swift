//
//  Safe.swift
//  Nammi,project
//
//  Created by Shahad Fuad Alabdrabalnabi on 07/06/1445 AH.
//

import SwiftUI

struct Safe: View {
    @State private var value: Int = 20
    @State private var results: String = "Safe"
    @State private var currentPage: Int = 2
    
   
    
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Text("Your child's results are1")
                    .font(.title)
                    .foregroundColor(.font)
                    .offset(CGSize(width: 0, height: -40))
                
               
                
                if value >= 18 && value <= 24 {
                    Group {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(.green)
                            .font(.system(size: 100))
                            .padding()
                        
                        Text("Safe1")
                            .font(.title)
                            .foregroundColor(.green)
                            .padding()
                        
                        HStack {
                            Spacer()
                            Image(systemName: "arrowshape.down.fill")
                                .foregroundColor(.black)
                                .bold()
                                .padding(.leading, 10)
                                .padding(.trailing, 60)
                        }
                        
                        Rectangle()
                            .foregroundColor(.white)
                            .overlay(
                                LinearGradient(colors: [.red, .green], startPoint: .leading, endPoint: .trailing)
                            )
                            .frame(width: 300, height: 20)
                            .padding()
                    }
                }
            }
        }
    }
}
struct Safe_Previews: PreviewProvider {
    static var previews: some View {
        Safe()
    }
}
