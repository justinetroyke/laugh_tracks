RSpec.describe 'Visitor' do
  it 'should see a list of comedians' do
    comedian_name = 'John Mulaney'
    comedian_age = 35
    comedian = Comedian.create(name: comedian_name, age: comedian_age)
    visit('/comedians')

    expect(page).to have_content(comedian_name)

    expect(page).to have_content(comedian_age)
  end

  it 'should see list of specials for each comedian' do
    comedian_name_1 = 'John Mulaney'
    comedian_name_2 = 'Mike Birbiglia'
    com1_specials = ['The Comeback Kid', 'New In Town']
    com2_specials = ['Two Drink Mike', "My Girlfriend's Boyfriend"]
    visit('/comedians')

    expect(page).to have_content(comedian_name_1)
    expect(page).to have_content(comedian_name_2)

    expect(page).to have_content(com1_specials)
    expect(page).to have_content(com1_specials)
  end

  it 'should see an average age of all comedians' do
    comedian_average_age = 36
    visit('/comedians')

    expect(page).to have_content(comedian_average_age)
  end
end

# RSpec.describe 'Visitors' do
#   it 'should show users all movies' do
#     movie_title = 'Avatar Part 2'
#     movie = Film.create(title: movie_title, year: 2019, box_office_sales: 0)
#     visit('/films')
#
#     expect(page).to have_content(movie_title)
#
#     expect(page).to have_content(movie.year)
#     expect(page).to have_content(movie.box_office_sales)
#   end
# end
# new in town, come back kid
# 39 two drink mike, My Girlfriend's Boyfriend
# Ali Wong, 34, Baby Cobra
