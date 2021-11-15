# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seeds::UserSeeder.new.run

todos = [
    {
        title: 'Do Laundry',
        description: 'Do both towels and clothes. Need this done by Friday.'
    },
    {
        title: '30 Minute Workout',
        description: 'Cardio: run. Weight: Leg day.'
    },
    {
        title: 'Go to Grocery Store',
        description: 'Need to pick up breakfast items for the week and dinner for tonight.'
    },
    {
        title: 'Finish Todo App',
        description: 'Need to finish building my rails api todo app!'
    },
]

todos.each do |todo|
    Todo.find_or_create_by(title: todo[:title]) do |obj|
        obj.assign_attributes(description: todo[:description])
    end
end