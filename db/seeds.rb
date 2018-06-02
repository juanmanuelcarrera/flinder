def create_admin
  p 'Admin creation seed task is starting... '

  if User.where(role: User::ADMIN).count == 0
    admin = User.new(role: User::ADMIN, email: "admin@flinder.com", password: "12345678")
    admin.save!
  end
  p "---ADMIN DATA---"
  p "Password: 12345678"
  p "----------------"
  p 'Admin successfully created.'

end

create_admin
