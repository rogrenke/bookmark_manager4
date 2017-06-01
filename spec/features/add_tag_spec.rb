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

  scenario 'adding multiple tags' do
    visit '/links/new'
    fill_in('title', with: 'Facebook')
		fill_in('url', with: 'https://facebook.com')
    fill_in('tags', with: 'Social;network;us')
    click_button 'Add link'
    link = Link.all
    p link
    expect(link.tags.map(&:name)).to include('Social')
    expect(link.tags.map(&:name)).to include('network')
    expect(link.tags.map(&:name)).to include('us')
  end
end
