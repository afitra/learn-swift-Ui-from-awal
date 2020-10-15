//
//  KeranjangVIew.swift
//  testSwiftUi
//
//  Created by afitra mamor on 14/10/20.
//

import Foundation
import SwiftUI

struct KeranjangView:View {
 
//    @Binding var binding: Bool
    @Binding var jumlahKeranjangViewBinding :Int
    @ObservedObject var jumlahKeranjangViewGlobal: GlobalObjectSepeda
    var body:some View{
        
        HStack{
       
        
          
                ZStack{
                   
                    Button(action:{  print("okoko")}){
                        NavigationLink(destination : DetailViewSepeda(detailViewSepedaGlobal:jumlahKeranjangViewGlobal, detailViewSepedaBinding: $jumlahKeranjangViewBinding )){
                            
                            Image(systemName:"cart.fill")
                                .resizable()
                                .frame(width: 20, height: 20, alignment: .center)
                        }
                    }
                    
                   
                    
                    
                    Text("\(jumlahKeranjangViewBinding)")
                        .foregroundColor(Color.white)
                        .frame(width:10,height:10)
                        .font(.body)
                        .padding(5)
                        .background(Color.red)
                        .clipShape(Circle())
                        .offset(x:10, y:-10)
                    
                }
           
       
   
          
            
            
            /// ini untk Global variable
            ZStack{
                Button(action:{print("okoko")}){
                    NavigationLink(destination : DetailViewSepeda(detailViewSepedaGlobal:jumlahKeranjangViewGlobal, detailViewSepedaBinding: $jumlahKeranjangViewBinding )){
                        
                        Image(systemName:"cart.fill")
                            .resizable()
                            .frame(width: 20, height: 20, alignment: .center)
                    }
                }
                
                
                Text("\(self.jumlahKeranjangViewGlobal.jumlahGlobal)")
                    .foregroundColor(Color.white)
                    .frame(width:10,height:10)
                    .font(.body)
                    .padding(5)
                    .background(Color.red)
                    .clipShape(Circle())
                    .offset(x:10, y:-10)
                
            }
        }
        
    }
    
}
