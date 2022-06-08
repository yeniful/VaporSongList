//
//  SongController.swift
//  
//
//  Created by Yeni Hwang on 2022/06/07.
//

import Fluent
import Vapor

/*
class SongController: RouteCollection {
    // when we go to the root route
    // everything that grouped under this will go to that
    func boot(routes: RoutesBuilder) throws {
        let songs = routes.grouped("songs")
        // get, post are different http methods
        songs.get(use: index)
        songs.post(use: create)
    }
    
    // /songs route
    func index(req: Request) throws -> EventLoopFuture<[Song]> {
        return Song.query(on: req.db).all()
    }
    
    func create(req: Request) throws -> EventLoopFuture<HTTPStatus> {
        let song = try req.content.decode(Song.self)
        // song to database. if it goes well we ransform it to okay
        return song.save(on: req.db).transform(to: .ok)
    }
    
}
*/

struct SongController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        let songs = routes.grouped("songs")
        songs.get(use: index)
        songs.post(use: create)
    }
    
    
    // GET Request /songs route
    func index(req: Request) throws -> EventLoopFuture<[Song]> {
        return Song.query(on: req.db).all()
    }
    
    // POST Request /songs route
    func create(req: Request) throws -> EventLoopFuture<HTTPStatus> {
        let song = try req.content.decode(Song.self)
        return song.save(on: req.db).transform(to: .ok)
    }
}
