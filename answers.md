# Q0: Why is this error being thrown?
It is trying to access the Pokemon model, which has not yet been created. 

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
They are all contained in the seeds.rb file and generated from there, with their level randomly assigned. 

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
button_to creates a form button, which uses a POST request. 
capture_path ???
:class defines the button
:method ???
https://piazza.com/class/is2hozuzije420?cid=125


# Question 3: What would you name your own Pokemon?
whatisgoingonlolmon

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?


# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.


# Give us feedback on the project and decal below!
I feel like I do not get enough practise with what was done in lecture in the homeworks, and that soemtimes I don't really know why I'm doing certain things. Project was interesting and fun. 

# Extra credit: Link your Heroku deployed app
Do this DARYUS:
http://docs.railsbridge.org/intro-to-rails/deploying_to_heroku
https://signup.heroku.com/ruby?c=70130000000NZToAAO&gclid=CjwKEAjwtNbABRCsqO7J0_uJxWYSJAAiVo5LJ7Xt3WUbg1EEr05VR6UuAf9CvYpEw6BAzm73KDmHgBoCHATw_wcB

