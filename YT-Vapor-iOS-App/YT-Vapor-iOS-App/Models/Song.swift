//
//  Song.swift
//  YT-Vapor-iOS-App
//
//  Created by Yeni Hwang on 2022/06/08.
//

import Foundation

struct Song: Identifiable, Codable {
    let id: UUID?
    var title: String
}
