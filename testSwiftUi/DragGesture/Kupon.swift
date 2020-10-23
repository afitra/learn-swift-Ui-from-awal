//
//  Kupon.swift
//  testSwiftUi
//
//  Created by afitra mamor on 24/10/20.
//

import Foundation
import SwiftUI

struct Kupon :View{
    @Binding var showMenu:Int
    var body : some View{
        VStack{
            Text("Selamat anda mendapatkan klepon sebanyak 500 biji")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
            Button(action : {
                withAnimation{
                    showMenu = true
                }
            }){
                Text("Promo Merdeka")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(20)
            }
            
        }
    
        .frame(minWidth:0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(Color.red)
        .cornerRadius(20)
        .edgesIgnoringSafeArea(.bottom)
        
        
    }
}
