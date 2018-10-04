require 'pathname'
require 'yaml'
require 'dotenv/load'
require 'discordrb'
require 'fileutils'

module Intro_Name
	extend Discordrb::EventContainer
	
		member_join do |event|
		  join_message = 'What might your name be, new traveler? '
		  user_mention = event.user.mention
		  lab = event.server.channels.select{|x| x.id == 495045331692552202}
		  lab.first.send_message([join_message, user_mention].join(''))
		  temp = 1
		  event.user.await(:newname) do |change_name|
		  	name = change_name.message.content[0,31]
		  	event.user.nick=(name)
		  	print change_name.message.content
		  	welcome_message = "Welcome, "
		  	change_name.respond([welcome_message, user_mention].join(''))
		  	Dir.chdir("/home/tomat0/hdd/Ruby")
		  	profile = Hash.new
		  	profile["id"] = event.user.id.to_s
		  	profile["name"] = event.user.nick
		  	File.open([Dir.pwd, "/""players/", (event.user.id).to_s, ".yml"].join(""), "w"){|f| f.write(profile.to_yaml)}
		  end
	    end
	 end
conf = YAML.load(File.read("token.yaml"))
bot = Discordrb::Bot.new token: conf["token"]
bot.include! Intro_Name
bot.run
