//
//  WeatherView.swift
//  WeatherApp
//
//  Created by Ellie Priestley on 06/10/2023.
//

import SwiftUI

struct WeatherView: View {
    var weather: ResponseBody
    
    var body: some View {
        ZStack(alignment: .leading) {
            VStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text(weather.name)
                        .bold().font(.title)
                    
                    Text("Today, \(Date().formatted(.dateTime.month().day().hour().minute()))").fontWeight(.light)
                    
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                
                Spacer()
                
                VStack {
                    HStack {
                        VStack(spacing: 20) {
                            Image(systemName: "cloud.fog")
                                .font(.system(size: 40))
                            
                            Text(weather.weather[0].main)
                        }
                        .frame(width: 150, alignment: .leading)
                        
                        Spacer()
                        
    
                        Text(weather.main.feels_like.roundDouble() + "°")
                            .font(.system(size: 90))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding()
                    }
                                        
                  
                    AsyncImage(url: URL(string: "https://img.freepik.com/premium-vector/night-sky-stars-clouds-silhouette-urban-city-buildings_24640-65958.jpg?w=360")) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 350)
                            .clipShape(Circle())
                        
                    
                    } placeholder: {
                        ProgressView()
                    }
                    
                    Spacer()
                    
                }
                .frame(maxWidth: .infinity)
                
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack {
                Spacer()
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Weather now")
                        .bold()
                    
                    HStack {
                        WeatherRow(logo: "thermometer.low", name: "Min temp", value: weather.main.tempMin.roundDouble() + "°")
                        Spacer()
                        WeatherRow(logo: "thermometer.high", name: "Max temp", value: weather.main.tempMax.roundDouble() + "°")
                    }
                    
                    HStack {
                        WeatherRow(logo: "wind", name: "Wind Speed", value: weather.wind.speed.roundDouble() + "m/s")
                        Spacer()
                        WeatherRow(logo: "humidity.fill", name: "Humidity", value: weather.main.humidity.roundDouble() + "%")
                    }
                    
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .padding()
                .padding(.bottom, 5)
                .padding(.horizontal, 5)
                .foregroundColor(Color(hue: 0.661, saturation: 0.631, brightness: 0.456))
                .background(.white)
                .cornerRadius(20, corners: [.topLeft, .topRight])
               
            }
            
        }
        .edgesIgnoringSafeArea(.bottom)
        .background(Color(hue: 0.661, saturation: 0.631, brightness: 0.456)).preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    WeatherView(weather: previewWeather)
}
