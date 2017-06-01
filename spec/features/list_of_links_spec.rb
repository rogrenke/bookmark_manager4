

feature 'Seeing list of links' do
  scenario 'user can see list of links, even if it\'s empty' do
    visit '/links/new'
    fill_in('title', with: 'Makers Academy')
    fill_in('url', with: 'https://makersacademy.com')
    fill_in('tags', with: 'Awesome')
    click_button 'Add link'
    # Link.create(url: 'http://google.com', title: 'Google', tags: 'search')
    visit '/links'
    expect(page.status_code).to eq 200

    # within 'ul#links' do
      expect(page).to have_content 'Makers Academy'
    #  end
  end
end
