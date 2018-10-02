class Race < ApplicationRecord
  has_many :comments
  def self.get_races
    tracks = ["sr:stage:337641", "sr:stage:337859", "sr:stage:338077", "sr:stage:338295", "sr:stage:338513", "sr:stage:338731", "sr:stage:338949", "sr:stage:339167", "sr:stage:339385", "sr:stage:339603", "sr:stage:339821", "sr:stage:340039", "sr:stage:340257", "sr:stage:340475", "sr:stage:340693", "sr:stage:340911", "sr:stage:341129", "sr:stage:341347", "sr:stage:341565"]

    tracks.each do |track|
    sleep(1)
    response = RestClient.get("https://api.sportradar.us/motogp/trial/v2/en/sport_events/#{track}/summary.json?api_key=ar5hphc8fupd3ukfy5qq25h4")
    new_response = JSON.parse(response.body)
    venue_hash = new_response['stage']['venue']
      if venue_hash && new_response['stage']['competitors']
        Race.create(name: venue_hash['name'], city: venue_hash['city'], country: venue_hash['country'], length: venue_hash['length'], date: new_response['stage']['scheduled'], winner: new_response['stage']['competitors'][0]['name'], second: new_response['stage']['competitors'][1]['name'], third: new_response['stage']['competitors'][2]['name'])
      elsif new_response['stage']['competitors']
        Race.create(name: new_response['stage']['description'], date: new_response['stage']['scheduled'], winner: new_response['stage']['competitors'][0]['name'], second: new_response['stage']['competitors'][1]['name'], third: new_response['stage']['competitors'][2]['name'])
      else
        Race.create(name: new_response['stage']['description'], date: new_response['stage']['scheduled'])
      end
    end
  end

end
