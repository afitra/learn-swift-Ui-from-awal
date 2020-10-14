//
//  ProductModel.swift
//  testSwiftUi
//
//  Created by afitra mamor on 14/10/20.
//

import Foundation

struct ProductModel:Identifiable{
    let id:Int
    let namaProduk:String
    let fotoProduk:String
    let hargaProduk:Int
    let lokasi:String
    let ratingCount:Int
    let jumlahRating:Int
    
    init(    id:Int,
           namaProduk:String,
           fotoProduk:String,
           hargaProduk:Int,
           lokasi:String,
           ratingCount:Int,
           jumlahRating:Int){
        
        self.id=id
        self.namaProduk = namaProduk
        self.fotoProduk = fotoProduk
        self.hargaProduk  = hargaProduk
        self.lokasi = lokasi
        self.ratingCount = ratingCount
        self.jumlahRating = jumlahRating
    }
    
}
