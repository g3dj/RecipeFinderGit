class Recipe
  	include HTTParty # gem file takse care of this

  	key_value = ENV['FOOD2FORK_KEY']
  	hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
  	base_uri "http://#{hostport}/api"
  	#base_uri "http://food2fork.com/api"
  	default_params key: key_value , fields: "source_url,image_url,title,social_rank"
  	#default_params key: ENV["FOOD2FORK_KEY"] , fields: "source_url,image_url,title,social_rank"
  	format :json
  	default_options.update(verify: false)
  def self.for (keyword)
    get("/search", query: {q: keyword})["recipes"]
  end
end