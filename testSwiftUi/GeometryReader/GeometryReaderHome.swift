//
//  GeometryReaderHome.swift
//  testSwiftUi
//
//  Created by afitra mamor on 20/10/20.
//

import Foundation
import SwiftUI
struct GeometryReaderHome : View {
    var body : some View {
    
        NavigationView{
            VStack{
                KolomGeometryReader(gambar1: "billgates", gambar2: "stevejob", gambar3: "billgates")
                KolomGeometryReader(gambar1: "billgates", gambar2: "stevejob", gambar3: "billgates")
                Text("Gallery Ssaya")
                    .background(Color.red)
            }
            .navigationTitle("Gallery")
            
        }
        .navigationViewStyle(StackNavigationViewStyle()) // agar aman ketika gi lancsape
      
        
        
    }
}




struct GeometryReaderHome_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderHome()
    }
}
