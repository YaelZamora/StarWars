//
//  WatchView.swift
//  StarWars
//
//  Created by iOS Maquina 10 on 20/02/23.
//

import SwiftUI

struct WatchView: View {
    @State private var buscar = ""
    private var series = ["mandalorian", "boba", "clones"]
    private let nombre = ["The Mandalorian", "The book of Boba Fett", "Clone Wars"]
    let descripcion = [
        "Alone bounty hunter operanting in the Outer Rim.",
        "We meet the history of Boba Fett.",
        "The Clones enter in a war they can't win."
    ]
    let estreno = ["2019 • 3 Seasons", "2021 • 1 Season", "2008 • 7 Seasons"]
    
    var body: some View {
        ZStack {
            Color(hex: 0xff111111, alpha: 1).ignoresSafeArea()
            VStack(alignment: .leading){
                HStack{
                    Image(systemName: "magnifyingglass").foregroundColor(.gray)
                        .padding()
                    TextField("", text: $buscar).placeholder(when: buscar.isEmpty){
                        Text("Search").foregroundColor(.gray)
                    }
                }.background(Color(hex: 0xff222222, alpha: 1))
                    .cornerRadius(20)
                HStack{
                    Text("Films")
                        .font(Font.custom("Starjedi", size: 30))
                        .foregroundColor(.white)
                        .padding([.trailing], 20)
                    Text("series")
                        .font(Font.custom("Starjedi", size: 30))
                        .foregroundColor(.white)
                    Spacer()
                }
                VStack(alignment: .leading){
                    ScrollView(.horizontal){
                        HStack(spacing: 20) {
                            ForEach((0..<3)){index in
                                VStack(alignment: .leading) {
                                    ZStack{
                                        Image(series[index]).resizable()
                                        HStack{
                                            Image(systemName: "play.fill")
                                            Text("Play")
                                        }.padding([.vertical], 5)
                                            .padding([.horizontal], 10)
                                            .background(Color(hex: 0xffFFE81F, alpha: 1))
                                            .cornerRadius(10).position(x: 240, y: 350)
                                    }.frame(width: 300, height: 400).cornerRadius(30)
                                    Text(estreno[index])
                                        .foregroundColor(.white)
                                        .font(Font.custom("", size: 15))
                                    Text(nombre[index])
                                        .foregroundColor(.white)
                                        .padding([.vertical], 10)
                                        .font(Font.custom("", size: 25))
                                    Text(descripcion[index]).foregroundColor(.white)
                                }.frame(width: 300)
                            }
                        }
                        
                    }
                    Spacer()
                }
            }.padding()
        }
    }
}

struct WatchView_Previews: PreviewProvider {
    static var previews: some View {
        WatchView()
    }
}
