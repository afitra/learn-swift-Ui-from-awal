//
//  TambahKeranjang.swift
//  testSwiftUi
//
//  Created by afitra mamor on 14/10/20.
//

import Foundation
import SwiftUI
struct TambahKeranjang: View {
    @Binding var jumlahTambahKeranjangBinding: Int
    @ObservedObject var jumlahTambahKeranjangGlobal : GlobalObjectSepeda
    var body:some View{
        VStack{
            Button(action:{self.jumlahTambahKeranjangBinding += 1}){
                HStack(alignment:.center){
                    Spacer()
    //                    HStack{
                    Image(systemName: "cart")
                    Text("Tambah via Binding")
                        .font(.callout)
                        .padding()
    //                }
                    Spacer()
                    
                }
                
            }
            .background(Color.green)
            .foregroundColor(Color.white)
            .cornerRadius(10)
//            .padding(.all, 10)
            .padding(.trailing, 10)
            .padding(.leading, 10)
            .padding(.top, 3)
                .padding(.bottom, 0)
            Button(action:{self.jumlahTambahKeranjangGlobal.jumlahGlobal += 1}){
                HStack(alignment:.center){
                    Spacer()
    //                    HStack{
                    Image(systemName: "cart")
                    Text("Tambah via GLobalVariableSepeda")
                        .font(.callout)
                        .padding()
    //                }
                    Spacer()
                    
                }
                
            }
            .background(Color.green)
            .foregroundColor(Color.white)
            .cornerRadius(10)
//            .padding(.all, 10)
            .padding(.trailing, 10)
            .padding(.leading, 10)
            .padding(.top, 3)
                .padding(.bottom, 10)
        }
    }
}
