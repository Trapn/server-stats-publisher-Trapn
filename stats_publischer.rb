#!/usr/bin/env ruby

require 'rubygems'
require 'mqtt'
MQTT::Client.connect('labict.be') do |client|
client.publish('linux/stats/average_load' , File.read('avrg_load.json'))
end
