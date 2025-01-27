feature 'Switch Turns' do
  context 'seeing the current turns' do 
    scenario 'at the start of the game' do 
      sign_in_and_play
      expect(page).to have_content "Charlie's turn"
    end

    scenario 'after player 1 attacks' do 
      sign_in_and_play
      click_link 'Attack'
      click_link 'OK'
      expect(page).not_to have_content "Charlie's turn"
      expect(page).to have_content "Matt's turn"
    end
  end 
end 