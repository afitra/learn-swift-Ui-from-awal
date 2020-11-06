//
//  Post.swift
//  testSwiftUi
//
//  Created by afitra mamor on 06/11/20.
//

import Foundation
import SwiftUI

struct Post : Codable, Identifiable {
    public var id:Int
    public var title:String
    public var body:String
    
}
