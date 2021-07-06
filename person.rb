class Person
	attr_reader :name, :hitpoint, :attack_damage, :chance
	def initialize(name, hitpoint, attack_damage, chance)
		@name = name
		@hitpoint = hitpoint
		@attack_damage = attack_damage
		@chance = chance
	end

	def to_s
		"#{@name} has #{@hitpoint} hitpoint and #{@attack_damage} attack damage"
	end

	
	def attack(other_person)
		puts "#{@name} attacks #{other_person.name} with #{@attack_damage} damage"
		other_person.take_damage(@attack_damage)
		
	
	end


	def take_damage(damage)
		if @chance > 0
			@hitpoint = @hitpoint - 0
			@chance = @chance - 1
			puts "#{@name} deflects the attack"
		else
		@hitpoint= @hitpoint- damage
	end
	end




	def die?
		if @hitpoint  <= 0
			puts "#{@name} dies"
			puts 
			true
		end
	end 
end




