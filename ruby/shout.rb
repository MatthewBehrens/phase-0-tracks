# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(sentence)
#   	sentence + "!!!!!!!" + ":) YAY"
#   end
# end


module Shout
	def yelling_angrily(words)
  		p words + "!!!" + " :("
  	end

	def yelling_happily(sentence)
		p sentence + "!!!!!!!" + ":) YAY"
	end
end

class Human
	include Shout
end

class Robot
	include Shout
end

human = Human.new
human.yelling_happily("woohoo")
human.yelling_angrily("GRRRR")

robot = Robot.new
robot.yelling_happily("BEEPBOOP")
robot.yelling_angrily("BOOPBEEP")





