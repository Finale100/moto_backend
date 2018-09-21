class Rider < ApplicationRecord

  def self.get_riders
    response = RestClient.get("https://api.sportradar.us/motogp/trial/v2/us/sport_events/sr:stage:337639/summary.json?api_key=ar5hphc8fupd3ukfy5qq25h4")
    new_response = JSON.parse(response.body)
    rider_hash = new_response['stage']['competitors']
    rider_hash.each_with_index do |rider, index|
      if new_response['stage']['competitors'][index]['team']
      Rider.create(name: rider['name'],
        team: rider['team']['name'],
        nationality: rider['nationality'],
        points: rider['result']['points'],
        bike: rider['result']['bike_number'],
        podiums: rider['result']['podiums'],
        pole: rider['result']['pole_positions'],
        victories: rider['result']['victories'])
      else
      Rider.create(name: rider['name'],
        nationality: rider['nationality'],
        points: rider['result']['points'],
        bike: rider['result']['bike_number'],
        podiums: rider['result']['podiums'],
        pole: rider['result']['pole_positions'],
        victories: rider['result']['victories'])
      end
    end
  end
end
