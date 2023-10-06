# iOS Weather Application

## 💬 About 
Solo Hobby Project built to broaden my understanding of Swift and SwiftUI. This weather app makes use of Apple's CoreLocation framework to retrieve the user's location coordinates. It then makes a call to the [Open Weather API](https://openweathermap.org/) to retrieve the user's current weather information and displays it in a user-friendly and attractive UI.

## 🚀 Tech Stack 
![Swift](https://img.shields.io/badge/swift-F54A2A?style=for-the-badge&logo=swift&logoColor=white)

## 📲 SetUp 
- Fork and clone this Repo to your local machine
- If you don't already have a free account with Open Weather API, you can do so [here](https://home.openweathermap.org/users/sign_up)
- After signing up/logging in, create an API Key by going clicking on your username, and then 'My API Keys' in the dropdown
- Replace `YOURAPIKEY` on line 14 of Managers/WeatherManager with your own API Key from OpenWeather API: <br>
`guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=\(latitude)&lon=\(longitude)&appid={YOURAPIKEY}&units=metric") else { fatalError("Missing URL")}`
- The App is now ready to test on your own iOS device through Xcode's 'Devices and Simulators' feature

## ✅ To Do / Future Scope

- [x] Build MVP 
- [ ] Add app icons
- [ ] Edit Weather View to add dynamic icon for current weather condition (currently hard-coded with SF symbol)
- [ ] Add dynamic background to Weather View, depending on current weather condition or time of day

## 🔍 Showcase Graphics

<img src= "/Showcase_Graphics/Welcome_View"> 
<img src= "/Showcase_Graphics/Weather_View"> 
