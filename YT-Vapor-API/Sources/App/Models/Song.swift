//
//  Song.swift
//  
//
//  Created by Yeni Hwang on 2022/06/07.
//

import Fluent
import Vapor
import Foundation

// how we want to represent out data

// represent the "songs" table

// Model Song is part of Fluent so it has these functions inherently that it can use to talk to the database


 final class Song: Model, Content {
 /*
    // what schema(table) we are talking about
    static let schema = "songs"
    
    
    // telling fluent that this property of id matches the id property within our table
    @ID(key: .id)
    var id: UUID?
    // when we look at the migrations matches ... our property called title
    @Field(key: "title")
    var title: String
    
    // empty init : doesn't accept anything meaning have it'll have both of these
    init() {}
    
    init(id: UUID? = nil, title: String){
        self.id = id
        self.title = title
    }
*/
     static let schema = "songs"
     
     @ID(key: .id)
     var id: UUID?
     
     @Field(key: "title")
     var title: String
     
     init() { }
     
     init(id: UUID? = nil, title: String) {
         self.id = id
         self.title = title
     }
 }
