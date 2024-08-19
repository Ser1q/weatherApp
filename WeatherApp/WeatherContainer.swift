//
//  WeatherContainer.swift
//  WeatherApp
//
//  Created by Nuradil Serik on 18.08.2024.
//

import SwiftUI

struct WeatherContainer: View {
    var weekDay = ""
    var weatherType = ""
    var temp = ""
    var image: UIImage = .sunny
    var body: some View {
        HStack{
            VStack{
                Text(weekDay)
                    .padding(.leading, 16)
                    .padding(.top, 46)
                    .padding(.bottom, 26)
                    .foregroundColor(.white)
                    .font(.system(size: 28))
                    
                Text(weatherType)
                    .padding(.bottom, 16)
                    .padding(.leading, 16)
                    .foregroundColor(.white)
                    .font(.system(size: 18))
                    .frame(alignment: .leading)
            }
            Spacer()
            
            VStack{
                Image(uiImage: image)
                    .padding(.trailing, 19)
                    .padding(.top, 33)
                
                Text(temp)
                    .padding(.bottom, 16)
                    .padding(.trailing, 14)
                    .foregroundColor(.white)
                    .font(.system(size: 18))
                    
            }
        }
        .background(Color(.containerWeather))
        .cornerRadius(30)
        .padding(.horizontal, 26)
    }
}

#Preview {
    WeatherContainer()
}
