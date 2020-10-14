//
//  Product.swift
//  testSwiftUi
//
//  Created by afitra mamor on 14/10/20.
//

import Foundation



import SwiftUI
struct ProductSepeda: View {
    let data : ProductModel
    @Binding var jumlahProductSepedaBinding:Int
    @ObservedObject var jumlahProductSepedaGlobal : GlobalObjectSepeda
    var body: some View {
        
        VStack(alignment:.leading){
            ZStack(alignment:.topTrailing){
                Image(self.data.fotoProduk)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height:200)
                    .clipped()
                Button(action: {print("ok")}){
                    Image(systemName: "heart")
                        .padding()
                        .foregroundColor(Color.red)
                }
                
            }
            Text(self.data.namaProduk)
                .font(.title)
                .bold()
                .padding(.leading)
                .padding(.trailing)
            Text("Rp. \(self.data.hargaProduk)")
                .font(.title)
                .foregroundColor(Color.red)
                .bold()
                .padding(.leading)
                .padding(.trailing)
            
            HStack{
                Image(systemName: "mappin.circle")
                Text("Kota. \(self.data.lokasi)")
            }
            .padding(.leading)
            .padding(.trailing)
            HStack{
                //                HStack{
                ForEach(0..<self.data.ratingCount){
                    item in Image(systemName: "star.fill")
                        .foregroundColor(Color.yellow)
                }
       
                
                //            }
                
            }
            
       
            .padding(.leading, 15)
            .padding(.trailing)
            
            TambahKeranjang(jumlahTambahKeranjangBinding: $jumlahProductSepedaBinding, jumlahTambahKeranjangGlobal: jumlahProductSepedaGlobal )
        }
        .background(Color("back"))
        .cornerRadius(15)
        .padding(.all, 10)
    
    }
}



struct ProductSepeda_Previews: PreviewProvider {
//    var data =  ProductModel(id: <#Int#>, namaProduk: <#String#>, fotoProduk: <#String#>, hargaProduk: <#Int#>, lokasi: <#String#>, ratingCount: <#Int#>, jumlahRating: <#Int#>)
    static let data = ProductModel(id:1, namaProduk:"sepeda1", fotoProduk: "sepeda1", hargaProduk:200000, lokasi:"kediri", ratingCount:4,jumlahRating:56)
    
    static var previews: some View {
        Text("okoko")
//        ProductSepeda(data:data )
    }
}

 
