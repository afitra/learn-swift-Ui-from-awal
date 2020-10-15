//
//  Product.swift
//  testSwiftUi
//
//  Created by afitra mamor on 14/10/20.
//

import Foundation

import SwiftUI


struct SepedaHomeView: View {
    
    
    
    let data:[ProductModel] = [
        ProductModel(id:1, namaProduk:"sepeda1", fotoProduk: "sepeda1", hargaProduk:200000, lokasi:"kediri", ratingCount:4,jumlahRating:56),
        ProductModel(id:2, namaProduk:"sepeda2", fotoProduk: "sepeda2", hargaProduk:100000, lokasi:"jombang", ratingCount:4,jumlahRating:56),
        ProductModel(id:3, namaProduk:"sepeda3", fotoProduk:"sepeda1", hargaProduk:250000, lokasi:"tuban", ratingCount:3,jumlahRating:56),
        ProductModel(id:4, namaProduk:"sepeda4", fotoProduk:"sepeda2", hargaProduk:270000, lokasi:"surabaya", ratingCount:2,jumlahRating:56),
        ProductModel(id:5, namaProduk:"sepeda5", fotoProduk:"sepeda1", hargaProduk:200000, lokasi:"kediri", ratingCount:4,jumlahRating:56),
        ProductModel(id:6, namaProduk:"sepeda6", fotoProduk:"sepeda2", hargaProduk:100000, lokasi:"jombang", ratingCount:1 ,jumlahRating:56),
        ProductModel(id:7, namaProduk:"sepeda7", fotoProduk:"sepeda1", hargaProduk:250000, lokasi:"tuban", ratingCount:3,jumlahRating:56),
        ProductModel(id:8, namaProduk:"sepeda8", fotoProduk:"sepeda2", hargaProduk:270000, lokasi:"surabaya", ratingCount:2,jumlahRating:56)
    ]
    @State var jumlahKeranjang:Int = 0
   
    @ObservedObject var jumlahSepedaHomeGlobal = GlobalObjectSepeda()
    var body: some View {
        
     
        NavigationView {
            ScrollView{
                ForEach(data){ row in
                    VStack(spacing:10){
                        ProductSepeda(data:row, jumlahProductSepedaBinding: $jumlahKeranjang, jumlahProductSepedaGlobal: jumlahSepedaHomeGlobal)
                        //                        ProductSepeda_Previews(data:row)
                    }
                }
            }
            .navigationBarTitle("sepeda MTB")
            .navigationBarItems(
                trailing:
                    HStack{
                        Button(action:{print("okoko")}){
                            Image(systemName:"person.fill")
                        }
//                        NavigationLink(destination : DetailViewSepeda(detailViewSepedaGlobal:jumlahSepedaHomeGlobal, detailViewSepedaBinding: $jumlahKeranjang)){
                        KeranjangView(  jumlahKeranjangViewBinding: $jumlahKeranjang, jumlahKeranjangViewGlobal: jumlahSepedaHomeGlobal)
//                        }
                        
                        
                       
                    }
            )
        }
        .accentColor(Color.secondary)
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct SepedaHomeView_Previews: PreviewProvider {
    static var previews: some View {
        SepedaHomeView()
    }
}
