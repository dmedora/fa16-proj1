class PokemonsController < ApplicationController

	def capture
		@pokemon = Pokemon.find(params[:id]) # this gets me the correct pokemon I think
		# @pokemon.instance_variable_set @trainer, current_trainer
		@pokemon.trainer_id = current_trainer.id
		# this line above is what's not working. if i put an integer in it works fine. 
		# now changed current_trainer to @current_trainer. HAVE NOT TESTED THIS!!! 
		# okay works now... turns out needed to just the .id part... lol fml. 


		# puts @pokemon.trainer_id
		@pokemon.save! #????? is this how i save???? 
		
		# how do i check this in the console...... :/ 


#####
		# @id = params[:id]
		# @pokemon = Pokemon.create(params[:name], params[:level], current_trainer)
		# @pokemon.save!


######
		redirect_to :root

		# am i supposed to make a new pokemon entry????? is that it????? can't i just link that pokemon to a specific trainer????? 
	end

end
