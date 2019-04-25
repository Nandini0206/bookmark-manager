
feature 'Add bookmark' do
  scenario 'adding new bokmarks to the bookmark manager' do
   visit'/bookmarks/new'
   fill_in 'url', with: 'http://www.bbc.co.uk'
   click_button 'Submit'
   expect(page).to have_content 'http://www.bbc.co.uk'
  end
end
