feature 'Seeing list of links' do
  scenario 'user can see list of links, even if it\'s empty' do
    link.create(url: 'http://google.com', name: 'Google')	  
    visit '/'
    expect(page.status_code).to eq 200
    
    within 'links' do
      expect(page).to have_content 'Google'
     end
  end
end
