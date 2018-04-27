Given(/^Que abri el juego$/) do
  visit '/'
end

Then(/^Debo ver mensaje de "([^"]*)"$/) do |saludo|
   expect(page.body).to match /#{saludo}/m
end

