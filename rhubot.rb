require File.dirname(__FILE__) + '/boot.rb'

class Rhubot
  Options.config do
    post_back ARGV[0]
    hubot_room ARGV[1]
  end
  script_name = ARGV[2]
  args = ARGV[3]
  script_dir = Options.script_path
  script_path = "#{script_dir}/#{script_name}.rb"

  script_path = "#{script_dir}/#{script_name}/#{script_name}.rb" unless File.exists?(script_path)

  if File.exists?(script_path)
    Hubot.status("Running #{script_name}...")
    result = `ruby #{script_path} #{args}`
    Hubot.status(result)
  else
    Hubot.status("#{script_name} not found.")
  end
end