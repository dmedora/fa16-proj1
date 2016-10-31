# Q0: Why is this error being thrown?
It is trying to access the Pokemon model, which has not yet been created. 

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
They are all contained in the seeds.rb file and generated from there, with their level randomly assigned. 

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
button_to creates a form button, which uses a POST request. 
capture_path routes to the 'capture' path defined in routes.rb, with an id parameter as @pokemon. 
:class defines the type of button. 
:method tells it what type of CRUD request to use when routing to the path. 


# Question 3: What would you name your own Pokemon?
whatisgoingonlolmon

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in :back, which routes the page to the page that the request originally came from. 
Update: I passed in trainer_path, after figuring out how rake routes works.. This needed the trainer id of the pokemon the user is damaging as an argument, to know which trainer's profile to display. 

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
It refers to the application.html.erb file, which renders 'layouts/messages' at the end, which has a partial _messages.html.erb. This takes the error message, and runs. to_sentence on it, presenting it in a human readable form. This also flashes the error on the page that you are redirected to. 

# Give us feedback on the project and decal below!
I feel like I do not get enough practise with what was done in lecture in the homeworks, and that soemtimes I don't really know why I'm doing certain things. Project was interesting and fun. 

# Extra credit: Link your Heroku deployed app
https://rails-pokeproj.herokuapp.com/


