require 'rails_helper'

feature 'User add a new book' do
  scenario 'new book end new author' do
    visit new_book_path

    author = create(:author)

    fill_in 'Título', with: 'O Guia do Mochileiro das Galáxias'
    select author.name, from: 'Autor'
    fill_in 'Descrição', with: 'Lorem ipson...'
    fill_in 'Versão', with: '1'
    fill_in 'Linguagem', with: 'Português'
    fill_in 'Editora', with: 'Sextante'

    click_button 'Salvar'

    expect(page).to have_content 'O Guia do Mochileiro das Galáxias'
    expect(page).to have_content author.name
    expect(page).to have_content 'Lorem ipson...'
    expect(page).to have_content '1'
    expect(page).to have_content 'Português'
    expect(page).to have_content 'Sextante'
  end
end
