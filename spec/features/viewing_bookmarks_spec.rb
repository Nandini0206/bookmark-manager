feature 'View bookmarks' do
  scenario 'visit bookmark page' do
    visit '/bookmarks'
    expect(page).to have_content 'Bookmarks'
  end
end
