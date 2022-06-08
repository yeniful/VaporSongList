//
//  ContentView.swift
//  YT-Vapor-iOS-App
//
//  Created by Yeni Hwang on 2022/06/08.
//

import SwiftUI

struct SongList: View {
    
    @StateObject var viewModel = SongListViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.songs) {
                        song in
                        Button {
                            print("selected")
                        } label: {
                            Text(song.title)
                                .font(.title3)
                                .foregroundColor(Color(.label))
                    }
                }
            }
            .navigationTitle(Text("🎵 Songs"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SongList()
    }
}
