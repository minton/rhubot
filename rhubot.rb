class Rhubot
  script = ARGV[1]
  args = ARGV[2]
  script_path = File.dirname(__FILE__) + "/scripts"
  result = `ruby #{script_path}/#{script}.rb #{args}`.gsub /(?<!\n)\n(?!\n)/, ''
  puts result
end