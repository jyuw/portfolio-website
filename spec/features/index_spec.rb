describe 'Index Page', type: :feature do
  it 'displays project list' do
    visit '/'

    expect(page).to have_css '.projects'
    within '.projects' do
      expect(page).to have_content 'First Website'
      expect(page).to have_content 'Cooper Test'
    end
  end

  it 'renders nav partial' do
  visit '/'

  expect(page).to have_selector 'footer'
    within 'footer' do
      expect(page).to have_content 'Jade'
    end
  end

  it 'displays CV' do
    visit '/cv'

    expect(page).to have_css '.static-desk'
    within '.static-desk' do
      expect(page).to have_content 'Experiences'
      expect(page).to have_content 'Tax Clerk'
    end
  end
end
