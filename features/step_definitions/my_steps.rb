Given(/^Que abri el juego$/) do
  visit '/'
end

Then(/^Debo ver mensaje de "([^"]*)"$/) do |saludo|
   expect(page.body).to match /#{saludo}/m
end

Given(/^que abri el juego$/) do
  visit '/'
end

Then(/^Debo ver "([^"]*)"$/) do |texto|
 expect(page.body).to match /#{texto}/m
end

When(/^ingrese el numero "([^"]*)"$/) do |numero|
   fill_in("numero", :with => numero)
end

When(/^Presionar el boton Validar$/) do
  click_button("validar")
end

When(/^inicie el juego$/) do
  click_button("iniciar")
end

