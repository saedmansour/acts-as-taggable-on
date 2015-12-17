# Example of how I'd use the Probability feature


# Probability: how "good" is this tag. A story can be comedy, thriller, romance but 
# perhaps the thriller part is way more accurate.
#
Story.tag_list.add({tag_name: "science_fiction", probability: 0.9 })
Story.tag_list.add({tag_name: "thriller", probability: 0.7 })
Story.tag_list.add({tag_name: "romance", probability: 0.3 })
Story.tag_list.add({tag_name: "comedy", probability: 0.2 })

# returns the "average" of his tags by probability calculations.
# e.g. [science_fiction: 0.99, thriller: 0.8, history: 0.4, romance: 0.01]
User.stories.tags_list.common_tags_by_probability

# Extracts tags from story and compares to User's preferences
# returns probability
User.probability_would_like(story) 

# returns stories that the user might like by cross matching
Stories.would_like(user)

# tasks - learning algorithm that calculates several probabilities
ActsAsTaggableOn::Tasks.run_learning_algorithm(Story)

# tasks - learning algorithm
# A learning algorithm that would "guess" tags by the data already in the table.
# A method that uses the algorithm to "guess"  tags.
# Extending this method by user preferences.


# Scores - this is per tag to have some sort of a field to describe
# which tags are more important.
#
# Scores should be calculated by the developer. There would be a default calculation
# which is to count the "the interactions with each tag". Each call to specific tag searches
# should increment the tag score for example.
#
ActsAsTaggableOn::Tag.update_score("tag_name") {|score| score + 1}
ActsAsTaggableOn::Tag.update_score_increment("tag_name")
ActsAsTaggableOn::Tag.update_score_decrement("tag_name")
ActsAsTaggableOn::Tag.update_score("tag_name", 9)

