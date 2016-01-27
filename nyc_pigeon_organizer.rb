 pigeon_data = {
        :color => {
          :purple => ["Theo", "Peter Jr.", "Lucky"],
          :grey => ["Theo", "Peter Jr.", "Ms. K"],
          :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
          :brown => ["Queenie", "Alex"]
        },
        :gender => {
          :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
          :female => ["Queenie", "Ms. K"]
        },
        :lives => {
          "Subway" => ["Theo", "Queenie"],
          "Central Park" => ["Alex", "Ms. K", "Lucky"],
          "Library" => ["Peter Jr."],
          "City Hall" => ["Andrew"]
        }
      }


def nyc_pigeon_organizer(data)
  # write your code here!
  nyc_pigeons = {}
  data.each do |level1_k, level1_v|
    level1_v.each do |level2_k, pigeon_names|
      pigeon_names.each do |pigeon| 
        nyc_pigeons[pigeon] ||= {}
        nyc_pigeons[pigeon][level1_k] ||= [] 
        nyc_pigeons[pigeon][level1_k].push(level2_k.to_s)
      end
    end
  end
  nyc_pigeons
end


