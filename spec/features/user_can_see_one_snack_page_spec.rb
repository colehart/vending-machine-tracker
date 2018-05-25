require 'rails_helper'

feature 'When a user visits a snack show page' do
  scenario 'they see the name of that snack' do
    # owner = Owner.create(name: "Sam's Snacks")
    # dons  = owner.machines.create(location: "Don's Mixed Drinks")
    kitkat = Snack.create(name: 'Kit Kat', price: 3.52)

    visit snack_path(kitkat)

    expect(page).to have_content(kitkat.name)
    expect(page).to have_content(kitkat.price)
  end

  # scenario 'the name of all of the snacks associated with that snack along with their price' do
  #   owner = Owner.create(name: "Sam's Snacks")
  #   dons  = owner.machines.create(location: "Don's Mixed Drinks")
  #   snack1 = dons.snacks.create(name: 'kitkat', price: 2)
  #   snack2 = dons.snacks.create(name: 'chips', price: 4)
  #   average_price = snacks.average_price
  #
  #   visit machine_path(dons)
  #
  #   expect(page).to have_content(snack1.name)
  #   expect(page).to have_content(snack1.price)
  #   expect(page).to have_content(snack2.name)
  #   expect(page).to have_content(snack2.price)
  #   expect(page).to have_content(average_price)
  # end
end
