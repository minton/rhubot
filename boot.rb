$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__))
require 'open3'
require 'rest_client'
require 'json'
require 'settings'
require 'hubot'

Options.config do
  script_path File.dirname(__FILE__) + "/scripts"
end