require_relative './app'
require_relative './options'

def main
  app = App.new
  puts 'Welcome to the School Library App!'
  app.load_books
  app.load_people
  app.load_rentals
  options(app)
end

main
