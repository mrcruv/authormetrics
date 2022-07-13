require 'google_search_results' 

params = {
  engine: "google_scholar_profiles",
  mauthors: "blizzard",
  api_key: "c7e57fcc425f53cda7a150c251ce9e223313a8bd9264d3e823a27fefca1aabdf"
}

search = GoogleSearch.new(params)
profiles = search.get_hash[:profiles]
File.write("profiles.json", profiles)