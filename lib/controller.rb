require_relative 'view'
require_relative 'recipe'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook  # an instance of Cookbook
    @view = View.new
  end

  def list
    # fetch all the recipes
    recipes = @cookbook.all
    # display the recipes
    @view.display(recipes)
  end

  def create
    # ask user for name / get info
    name = @view.ask_for("name")
    # ask user for description / get info
    description = @view.ask_for("description")
    # create recipe with user input
    @cookbook.add_recipe(Recipe.new(name, description))
  end

  def destroy
    # display all recipes
    list
    # ask user for index
    user_index = @view.ask_for_index
    # remove recipe from cookbook
    @cookbook.remove_recipe(user_index)
  end
end
