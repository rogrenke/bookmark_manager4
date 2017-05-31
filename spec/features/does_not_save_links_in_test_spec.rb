feature 'removes new links from test database' do
  scenario 'Does not include added link' do
    visit '/links'
    expect(page).to_not have_content 'Amazon'
  end

end
