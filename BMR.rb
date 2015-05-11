puts "We are going to calculate your Basal Metabolic Rate (BMR). This number represents how many calories you burn per day at rest!"
puts "First, how tall are you in inches?"
h = gets.to_i 
print "How much do you weigh in pounds?"
w = gets.to_i
print "How old are you?"
a = gets.to_i
print "Lastly, are you Male or Female?"
g = gets.chomp
        if g == "Male"
  bmr = 66 + (6.23 * w) + (12.7 * h) - (6.8 * a)
        elsif g == "Female"
   bmr = 655 + (4.35 * w) + (4.7 * h) - (4.7 * a)
   bmr
end

puts "You burn #{bmr.round} calories per day!"
print "Would you even like to know how many calories you burn based on your activity? 'Yes' or 'No'?"
answer = gets.chomp
 if answer == "Yes"
    puts "Would you say you're..."
    puts "'sedentary' (little or no exercise)"
    puts "'lightly active'(light exercise/sports 1-3 days/week)"
    puts "'moderately active'(moderate exercise/sports 3-5 days/week)"
    puts "'very active' (hard exercise/sports 6-7 days a week)"
    puts "'extra active' (very hard exercise/sports & physical job or 2x training)"
    activity = gets.chomp
    case activity
    when 'sedentary'
    eer = bmr * 1.2
    when 'lightly active'
    eer = bmr * 1.375
    when 'moderately active'
    eer = bmr * 1.55
    when 'very active'
    eer = bmr * 1.725
    when 'extra active'
    eer = bmr * 1.9
end
    
else
    puts "Alright, have a great day!"
end
puts "Based on your current activity level, you're maintenance level is #{eer.round} calories per day!"
