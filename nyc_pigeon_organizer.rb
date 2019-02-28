def nyc_pigeon_organizer(data)
  hash = {}
  data.each do |key, parameters|
    parameters.each do |descriptions, names|
      names.each do |name|
        hash[name] ||= {}
        hash[name][key] ||= []
        hash[name][key].push(descriptions.to_s)
      end
    end
  end
  hash
end