//
//  DrawShapeHomeView.swift
//  testSwiftUi
//
//  Created by afitra mamor on 28/10/20.
//

import Foundation

import SwiftUI

struct DrawShapeHomeView : View {
    
    var body : some View {
        VStack{
            //            Circle()
            //                .fill(Color.red)
            //                .offset(x:50, y:0)
            //
            //            Circle()
            //                .overlay(Circle().stroke(Color.green, lineWidth: 5))
            //                .foregroundColor(.blue)
            //
            //
            //            Capsule()
            //                .stroke(Color.green, lineWidth: 5)
            //            Capsule() // shape tidak bisa menggunaka border sebagi garis tepi , stroke untuk memberikan garis tepi
            //                .fill(Color.red)
            //            Ellipse()
            //                .trim(from: 0.1, to: 0.5) // memotong bagian  agak ambigu belum paham
            //                .rotation(Angle(degrees: 50))
            //                .foregroundColor(.green)
            //            RoundedRectangle(cornerRadius: 30, style: .circular)
            //                .size(width:800, height:50)
            //                .scale(0.5, anchor: .top) // scale 0.5 untuk  membuat ukuran 0.5 lebih kecil // anchor untuk menentukan posisi shape
            //                .offset(x:50, y:0) // menentukan kordinat shape
            //                .rotation(Angle(degrees: 50)) // untuk merotasi objek
            //
            //                .overlay(Circle().stroke(Color.green, lineWidth: 5))
            
            Image("stevejob")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width:180 , height:100)
                .offset(x:0, y:50)
                .clipShape(
                    Ellipse()
                        .rotation(Angle(degrees: 30))
                )
                .overlay(
                    Ellipse()
                        .rotation(Angle(degrees: 30))
                        .stroke(Color.green, lineWidth: 5)
                )
            
        }.padding(.all, 60)
        
    }
}



struct DrawShapeHomeViewView_Previews: PreviewProvider {
    static var previews: some View {
        DrawShapeHomeView()
    }
}


