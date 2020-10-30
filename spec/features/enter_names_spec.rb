feature 'Enter Names' do
  scenario "players enter name in a form to start battle" do
    visit('/')
    fill_in :player1_name, with: "Sam"
    fill_in :player2_name, with: "David"
    click_button "Submit"
    expect(page).to have_content "Sam vs David"
  end
end
