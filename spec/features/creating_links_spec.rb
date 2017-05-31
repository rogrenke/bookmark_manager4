feature 'submit a new link' do
	scenario 'save a new link into the database' do
		visit '/links/new'
		fill_in('title', with: 'Makers Academy')
		fill_in('url', with: 'https://makersacademy.com')
		click_button 'Add link'
		expect(page).to have_content 'Makers Academy'
	end
end
