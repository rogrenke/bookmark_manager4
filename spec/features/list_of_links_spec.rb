feature 'Seeing list of links' do
  scenario 'user can see list of links, even if it\'s empty' do
    link.create(url: 'http://google.com', name: 'Google')	  
    visit '/'
    expect(page.status_code).to eq 200
  end

  #scenario 'user can see an existing link in the list' do
   # Link.create(url: 'http://google.com', name: 'Google')
   # visit '/'
  #  expect(page).to have_content 'Google'
  #end
end
