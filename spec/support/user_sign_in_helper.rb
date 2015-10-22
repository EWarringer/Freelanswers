module UserSignIn
  def sign_in(user)
    visit new_user_session_path
    within('#new-session') do
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      click_button 'Log in'
    end
  end
end
