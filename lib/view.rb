class View
  def display(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1} - #{recipe.name}"
    end
  end

  def ask_for(info)
    puts "What is the #{info}"
    print ">"
    gets.chomp
  end

  def ask_for_index
    puts "Which one you want to delete"
    print ">"
    gets.chomp.to_i - 1
  end
end
