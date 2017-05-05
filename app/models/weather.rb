class Weather
  def self.get_weather(zip)
    response = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?zip=#{zip},us&APPID=#{ENV['WEATHER_KEY']}")
    parsed_response = response.parsed_response
    description = parsed_response["weather"][0]["description"]
    temp = to_farenheit(parsed_response["main"]["temp"])
    {description: description,
     temp: temp,
     image: image(description)}
  rescue
    {}
  end

  def self.to_farenheit(kelvin)
    (kelvin*9/5 - 459.67).round.to_s + "°";
  end

  def self.image(description)
    if description.include?('rain')
      "rain.png"
    elsif description.include?('snow')
      "snow.png"
    else
      "sun.png"
    end
  end
end
