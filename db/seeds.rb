# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


json_file_path = Rails.root.join('db', 'people_data.json')

# Check if the JSON file exists
if File.exist?(json_file_path)
  # Load JSON file
  json_data = File.read(json_file_path)
  people_data = JSON.parse(json_data)

  # Iterate over each person data and create records
  people_data.each do |person_data|
    # Create Person record
    person = Person.create(name: person_data['name'], email: person_data['info']['email'])
  
    # Create associated PersonDetail record
    person.create_person_detail(
      title: person_data['info']['title'],
      age: person_data['info']['age'],
      phone: person_data['info']['phone']
    )
  end
else
  puts "JSON file '#{json_file_path}' not found!"
end