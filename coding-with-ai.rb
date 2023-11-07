# ASSESSMENT 5: Coding Critique with AI

# Use AI to learn about the following code.

# Based on your learning, reverse engineer a prompt that this code would satisfy.

#create code that counts votes for different types of tacos. The code should count the total number of votes for each type of taco and return the results. Use hash to calculate and display the toal votes for each type of taco. use the taco-votes variable provided.

# Add comments to each line to explain the code.

taco_votes = ['fish taco', 'california burrito', 'Tacos Al Pastor', 'Carnitas tacos', 'California burrito', 'Fish taco', 'California Burrito', 'Fish Taco', 'Tacos de Barbacoa', 'tacos Al Pastor', 'fish taco', 'California burrito', 'fish taco', 'tacos al pastor', 'Carnitas tacos', 'Fish taco', 'tacos de barbacoa', 'fish taco', 'Carnitas Tacos', 'carnitas tacos', 'Fish Taco', 'fish taco']


#totals is a variable initialized as an empty hash to store the vote count
totals = taco_votes.reduce(Hash.new(0)) do |result, vote|
#accumulates vote cunts by taco type in the 'result hash'
#converts 'vote' to lowercase to ensure case-insensitive vote counting
  result[vote.downcase] += 1
  result
end
#prints the 'totals' hash containing the count of votes for each type of taco
p totals

# {"fish taco"=>9, "california burrito"=>4, "tacos al pastor"=>3, "carnitas tacos"=>4, "tacos de barbacoa"=>2}