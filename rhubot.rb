require File.dirname(__FILE__) + '/boot.rb'

class Rhubot
  Options.config do
    post_back ARGV[0]
    hubot_room ARGV[1]
  end
  script = ARGV[2] + ".rb"
  args = ARGV[3]


  Hubot.status("Running #{script}...")

  script_dir = Options.script_path
  if script.include?("/")
    script_dir +="/#{File.dirname(script)}"
    script = File.basename(script)
  end

  cmd = "cd #{script_dir} && ruby #{script} #{args}" #.gsub /(?<!\n)\n(?!\n)/, ''
  result = `ruby #{script_dir}/#{script} #{args}`

  Hubot.status(result)
  
end