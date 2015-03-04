class Spaceship
	attr_accessor :destination

	@thruster_count = 2 # Class instance variable

	def initialize(name, cargo_module_count)
		@name = name
		@cargo_hold = cargo_module_count
		@power_level = 100
	end

	def launch(destination)
		@destination = destination
		batten_hatches
		# go towards destination
	end

	def cancel_launch
		self.destination = "-"
	end

	def self.thruster_count
		@thruster_count
	end

	private #visibility decoration
	def batten_hatches
		puts "Batten the hatches!"
	end

end

class SpritelySpaceship < Spaceship
	@thruster_count = 4

	def initialize
		batten_hatches # this ship is always ready to go
	end
end

class EconolineSpaceship < Spaceship
	@thruster_count = 1
end



class Probe
	def deploy(deploy_time)
		puts "deploy the probe at #{deploy_time.strftime('%H:%M:%S')}"
	end
	def take_sample
		puts "do generic sampling"
	end
end

class MineralProbe < Probe
	def deploy(deploy_time)
		puts "preparing sample chamber"
		super
	end
	def take_sample
		puts "take a mineral sample"
	end
end

class AtmosphericProbe < Probe
	def take_sample
		puts "take an atmosphere sample"
	end
end







ship = Spaceship.new('Galactica',300)
ship.launch("Earth")

#puts ship.inspect
#p ship

puts ship.destination
ship.destination = "Mars"
puts ship.destination
ship.cancel_launch
puts ship.destination
puts

puts "Spaceship thrusters : #{Spaceship.thruster_count}"
puts "SpritelySpaceship thrusters : #{SpritelySpaceship.thruster_count}"
puts "EconolineSpaceship thrusters : #{EconolineSpaceship.thruster_count}"
puts

pm = MineralProbe.new
pm.deploy(Time.now)
pm.take_sample
pa = AtmosphericProbe.new
pa.deploy(Time.now + 2 * 60 * 60)
pa.take_sample
puts
