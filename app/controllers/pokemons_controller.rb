class PokemonsController < ApplicationController

	def capture
		@pokemon = Pokemon.find(params[:id]) # this gets me the correct pokemon I think
		# @pokemon.instance_variable_set @trainer, current_trainer
		@pokemon.trainer_id = current_trainer.id
		@pokemon.save! # save! will return error if unsuccessful, .save returns true or false. 
		
		redirect_to :root
	end


	def damage
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health = @pokemon.health - 10
		@pokemon.save!

		# if @pokemon.health <= 0
		# 	@pokemon.destroy
		# 	@pokemon.save!
		# end
		if @pokemon.health <= 0
			@pokemon.health = 0
			@pokemon.save!
		end

		# redirect_to :back
		redirect_to trainer_path(:id => @pokemon.trainer_id)
	end


	# part 5: 
	# def show
	# 	# @pokemon = Pokemon.find(params[:id]) # what am i actually showing lol do i need this
	# end

	def new # what does this do?? as seen in lecture 3. just because the html is called new? 
		@pokemon = Pokemon.new
	end

	def create
		@newthing = Pokemon.create(:name => params[:pokemon][:name], 
			:level => 1, 
			:health => 100, 
			:trainer_id => current_trainer.id)
		# DO I NEED TO SAVE??? 
		# redirect_to :back

		if !@newthing.save!
			flash[:error] = @pokemon.errors.full_messages.to_sentence
		else
			redirect_to trainer_path(:id => current_trainer.id)
		end
	end


	def heal
		@pokemon = Pokemon.find(params[:id])
		if @pokemon.health >= 100
			@pokemon.health = 100
			@pokemon.save!
		else 
			@pokemon.health = @pokemon.health + 10
			@pokemon.save!
		end
		redirect_to trainer_path(:id => current_trainer.id)
	end


end
