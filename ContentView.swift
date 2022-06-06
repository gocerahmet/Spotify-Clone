//
//  ContentView.swift
//  Spotify
//
//  Created by Gocer on 30.05.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Background()
            VStack {
                Cover()
                VStack {
                    ArtistInfo()
                    Options()
                    Songs()
                    VStack{
                        Player()
                            .border(.black, width: 1)
                        Menu()
                    }.background(.tertiary)
                   
                }
                Spacer()
            }
            
        }.foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Background: View{
    
    let colors: [Color] = [Color(#colorLiteral(red: 0.1407667696, green: 0.5089942217, blue: 0.5972044468, alpha: 1)), Color(#colorLiteral(red: 0.1079011187, green: 0.3485074937, blue: 0.4073579013, alpha: 1)), Color(#colorLiteral(red: 0.09506385773, green: 0.2428356409, blue: 0.2807130218, alpha: 1)), Color(#colorLiteral(red: 0.08821473271, green: 0.1449819803, blue: 0.1618441939, alpha: 1)), Color(#colorLiteral(red: 0.07057534903, green: 0.07059564441, blue: 0.07057406753, alpha: 1)), Color(#colorLiteral(red: 0.07057534903, green: 0.07059564441, blue: 0.07057406753, alpha: 1)), Color(#colorLiteral(red: 0.07057534903, green: 0.07059564441, blue: 0.07057406753, alpha: 1)), Color(#colorLiteral(red: 0.07057534903, green: 0.07059564441, blue: 0.07057406753, alpha: 1))]
    
    var body: some View{
        LinearGradient(gradient: Gradient(colors: colors), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
    }
}

struct Cover: View {
    var body: some View
    {
        ZStack(alignment: .top, content: {
            Image("cover")
                .resizable()
                .frame(width: 220, height: 220)
                .shadow(radius: 5)
            
            Image(systemName: "chevron.left")
                .offset(x: -165)
                .font(.system(size: 20))
        })

    }
}

struct ArtistInfo : View {
    var body: some View{
      
        HStack {
            VStack(alignment: .leading){
                Text("Evolve")
                 .font(.system(size: 30))
                .fontWeight(.bold)
          HStack{
              Image("imaginedragons")
                  .resizable()
                  .frame(width: 40, height: 40)
              
              Text("Imagine Dragons")
                  .font(.system(size: 16)).fontWeight(.bold)
            }
                HStack{
                    Text("Album")
                    Circle()
                        .frame(width: 3, height: 3)
                    Text("2017")
                       
                }.opacity(0.70)
                
      }
            .padding([ .leading])
            
            Spacer() // Hstack ile sola hizalamak için.
        }
        

    }
}

struct Options : View {
    var body: some View {
        
        HStack {
            
            Image(systemName: "heart")
                .opacity(0.70)
            Image(systemName: "arrow.down.circle")
                .opacity(0.70)
            Image(systemName: "ellipsis")
                .rotationEffect(.degrees(-90))
                .opacity(0.70)
            
            Spacer()
            
            ZStack(alignment: .bottomTrailing){
                ZStack{
                    Circle()
                        .frame(width:60, height: 60)
                        .foregroundColor(.green)
                    Image(systemName: "arrowtriangle.right.fill")
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                }
                ZStack{
                    Circle()
                        .frame(width:20, height:20)
                    Image(systemName: "shuffle").resizable()
                        .frame(width:10, height: 10)
                        .foregroundColor(.green)

                }
            }
           
            
        }.padding(.horizontal).font(.system(size: 25))
        
        
    }
}

struct Songs : View{
    var body: some View{
        VStack{
            HStack{
                VStack(alignment: .leading){
                    Text("Next To Me")
                        .font(.system(size: 22))
                     
                    Text("Imagine Dragons")
                        .opacity(0.70)
                }
                Spacer()
                VStack{
                    Image(systemName: "ellipsis")
                        .rotationEffect(.degrees(-90))
                        .opacity(0.70)
                }.font(.system(size: 20)).opacity(0.90)
            }.padding(.bottom)
            // SONG 2
            HStack{
                VStack(alignment: .leading){
                    Text("I Don't Know Why")
                        .font(.system(size: 22))
                       
                    Text("Imagine Dragons")
                        .opacity(0.70)
                }
                Spacer()
                VStack{
                    Image(systemName: "ellipsis")
                        .rotationEffect(.degrees(-90))
                        .opacity(0.70)
                }.font(.system(size: 20)).opacity(0.90)
            }.padding(.bottom)
            
            //SONG 3
            
            HStack{
                VStack(alignment: .leading){
                    Text("Whatever It Takes")
                        .font(.system(size: 22))
                    
                    Text("Imagine Dragons")
                        .opacity(0.70)
                }
                Spacer()
                VStack{
                    Image(systemName: "ellipsis")
                        .rotationEffect(.degrees(-90))
                        .opacity(0.70)
                }.font(.system(size: 20)).opacity(0.90)
            }.padding(.bottom)
            
            //SONG 4
            
            HStack{
                VStack(alignment: .leading){
                    Text("Believer")
                     .font(.system(size: 22))
                    Text("Imagine Dragons")
                        .opacity(0.70)
                }
                Spacer()
                VStack{
                    Image(systemName: "ellipsis")
                        .rotationEffect(.degrees(-90))
                        .opacity(0.70)
                }.font(.system(size: 20)).opacity(0.90)
            }.padding(.bottom)
        }
        .padding(.horizontal)
    }
}

struct Player : View {
    var body: some View {
        HStack {
            Image("cover")
                .resizable()
                .frame(width: 40, height: 40)
            VStack(alignment: .leading){
                Text("Believer")
                    .font(.system(size: 20))
                Text("Imagine Dragons")
                    .opacity(0.70)
            }
            Spacer()
            Image(systemName: "airplayaudio.circle")
                .font(.system(size: 30))
            Image(systemName: "arrowtriangle.right.fill")
                .font(.system(size: 30))
        }
        .padding(.all)
        
    }
}

struct Menu : View {
    var body: some View {
        HStack {
            Spacer()
            VStack(alignment: .center){
                Image(systemName: "house")
                Text("Home")
            }.padding(.top).font(.system(size: 18))
            Spacer()
            VStack(alignment: .center){
                Image(systemName: "magnifyingglass")
                Text("Search")
            }.padding(.top).font(.system(size: 18)).foregroundColor(.white)
            Spacer()
            VStack(alignment: .center){
                Image(systemName: "text.justifyright")
                Text("Library")
            }.padding(.top).font(.system(size: 18))
            Spacer()
        }.padding([.leading, .bottom, .trailing]).foregroundColor(.gray)
    }
}


