//
//  SeriesInfoView.swift
//  StarWars
//
//  Created by iOS Maquina 10 on 21/02/23.
//

import SwiftUI

struct SeriesInfoView: View {
    var body: some View {
        ZStack{
            Color(hex: 0xff111111, alpha: 1).ignoresSafeArea()
            VStack{
                ZStack{
                    Image("mandalorian").resizable()
                    HStack{
                        Image(systemName: "play.fill")
                        Text("Play")
                    }.padding([.vertical], 5)
                        .padding([.horizontal], 10)
                        .background(Color(hex: 0xffFFE81F, alpha: 1))
                        .cornerRadius(10).position(x: 340, y: 350)
                }.frame(width: 400, height: 400).cornerRadius(30)
                VStack(alignment: .leading){
                    Text("2019 • 2 Seasons")
                        .foregroundColor(.white)
                        .font(Font.custom("", size: 15))
                    Text("The Mandalorian")
                        .foregroundColor(.white)
                        .padding([.vertical], 10)
                        .font(Font.custom("", size: 25))
                    Text("Alone bounty hunter operanting in the Outer Rim.")
                        .foregroundColor(.white)
                }
                HStack{
                    Text("Season 1")
                        .font(Font.custom("Starjedi", size: 25))
                        .foregroundColor(.white)
                        .padding([.trailing], 20)
                    Text("Season 2")
                        .font(Font.custom("Starjedi", size: 25))
                        .foregroundColor(.white)
                }
                List{
                    ForEach((1...8), id: \.self){_ in
                        HStack{
                            ZStack{
                                Image("mandalorian").resizable()
                                Image(systemName: "play.circle")
                                    .font(Font.custom("", size: 50))
                            }.frame(width: 120, height: 80)
                                .background(.red)
                                .cornerRadius(20)
                            VStack (alignment: .leading){
                                Text("Chapter 1: The mandalorian")
                                    .font(Font.custom("", size: 15))
                                    .foregroundColor(.white)
                                Text("Alone bounty hunter operanting in the Outer Rim.")
                                    .font(Font.custom("", size: 12))
                                    .foregroundColor(.white)
                            }
                        }.listRowBackground(Color(hex: 0xff111111, alpha: 1))
                    }
                }.background(Color(hex: 0xff111111, alpha: 1))
                    .scrollContentBackground(.hidden)
                Spacer()
            }.ignoresSafeArea()
        }
    }
}

struct SeriesInfoView_Previews: PreviewProvider {
    static var previews: some View {
        SeriesInfoView()
    }
}
