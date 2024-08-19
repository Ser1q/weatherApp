//
//  ContentView.swift
//  WeatherApp
//
//  Created by Nuradil Serik on 18.08.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Text("Astana")
                    .font(.system(size: 48, weight: .bold))
                    .padding(.leading, 26)
                    .padding(.top, 34)
                    .foregroundColor(Color(.blackText))
                Spacer()
                
                ZStack{
                    Image(.bgIcon)
                    Image(.imageIcon)
                }
                .padding(.trailing, 40)
                .padding(.top, 38)
                .frame(width: 50, height: 50)
            }
            
            WeatherContainer(weekDay: "Today", weatherType: "Sunny", temp: "20℃", image: .sunny)
            
            VStack{
                HStack{
                    Text("Forecast for 5 days")
                        .foregroundColor(Color(.blackText))
                        .font(.system(size: 20, weight: .bold))
                    Spacer()
                }
                    .padding(.leading, 18)
                    .padding(.top, 49)
                    .padding(.bottom, 16)
                
                List{
                    Section{
                        WeatherContainer(weekDay: "Monday", weatherType: "Clear", temp: "6℃", image: .rain)
                        
                        WeatherContainer(weekDay: "Tuesday", weatherType: "Mostly Sunny", temp: "5℃", image: .sunny)
                        
                        WeatherContainer(weekDay: "Wednesday", weatherType: "Cloudy", temp: "-4℃", image: .snowy)
                    }
                    .listRowInsets(.init(top: 8, leading: 0, bottom: 8, trailing: 0))
                    .listRowSeparator(.hidden)
                }
                .listStyle(.plain)
                
            }
        }
        
    }
}

#Preview {
    ContentView()
}
