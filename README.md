# iOS Weather Application

## SetUp 
- replace the API key parameter on line 14 of Managers/WeatherManager with your own:
`        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=\(latitude)&lon=\(longitude)&appid=YOUR KEY HERE") else { fatalError("Missing URL")}`

