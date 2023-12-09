# frozen_string_literal: true

u = User.create!(first_name: 'Seeded', last_name: 'User', email: 'seedeuser@example.com', password: 'password')

3.times do
  FactoryBot.create(:journal, user: u)
end
