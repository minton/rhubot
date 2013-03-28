class Hubot
  def self.status(txt)
    data = {:room => Options.hubot_room, :result => txt}
    RestClient.post Options.post_back, data.to_json, {:content_type => :json}
  end
end