feature 'Adding tag' do
  scenario 'tagging link on creation' do
    visit '/links/new'
    fill_in('title', with: 'Makers Academy')
		fill_in('url', with: 'https://makersacademy.com')
    fill_in('tags', with: 'Awesome')
    click_button 'Add link'
    link = Link.first
    expect(link.tags.map(&:name)).to include('Awesome')
  end
end
