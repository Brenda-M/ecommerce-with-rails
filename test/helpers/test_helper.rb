class ActionDispatch::IntegrationTest
  def login_as(user)
    if respond_to? :visit
      visit login_url
      fill_in :username, with: user.username
      fill_in :password, with: 'secret'
      click_on 'Login'
    else
      post login_url, params: { username: user.username, password: 'secret' }
    end
  end

  def logout
    delete logout_url
  end

  def setup
    login_as users(:one)
  end
end
