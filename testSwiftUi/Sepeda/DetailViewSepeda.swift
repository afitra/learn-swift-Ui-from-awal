//
//  DetailView.swift
//  testSwiftUi
//
//  Created by afitra mamor on 15/10/20.
//

import Foundation


import SwiftUI

struct DetailViewSepeda : View {
    
    @ObservedObject var detailViewSepedaGlobal : GlobalObjectSepeda
    @Binding var detailViewSepedaBinding :Int
 
    
    var body : some View {
        NavigationView {
            Text("Detail")
                .navigationBarTitle("Detail")
                .navigationBarItems(
                    trailing:
                        HStack{
                            Button(action:{print("okoko")}){
                                Image(systemName:"person.fill")
                            }
                            
                            KeranjangView(   jumlahKeranjangViewBinding: $detailViewSepedaBinding, jumlahKeranjangViewGlobal:detailViewSepedaGlobal)
                        }
                    
                )
        }
    }
}
