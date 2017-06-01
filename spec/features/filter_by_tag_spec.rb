feature 'filter by tag' do
  scenario 'displays links tagged with bubbles' do
    visit '/links/new'
		fill_in('title', with: 'Bubble Test')
		fill_in('url', with: 'https://www.bubbles.com')
		fill_in('tags', with: 'bubbles')
		click_button 'Add link'
    visit '/links/new'
		fill_in('title', with: 'Not Bubble Test')
		fill_in('url', with: 'https://www.no-bubbles.com')
		fill_in('tags', with: 'stars')
		click_button 'Add link'
    visit '/tags/bubbles'
    expect(page).to have_content 'Bubble Test'
    expect(page).not_to have_content("Not Bubble Test")
  end
end
