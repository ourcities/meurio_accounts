def to_url string
  return root_path if string == "the homepage"
  return new_user_session_path(redirect_url: "http://127.0.0.1/pdp") if string == "the login page comming from Panela de Pressão"
  return '/login' if string == "the login page"
  return new_user_registration_path(redirect_url: "http://127.0.0.1/pdp") if string == "the register page comming from Panela de Pressão"
  return new_user_registration_path if string == "the register page"
  return edit_profile_path if string == "the edit page of my profile"
  return edit_user_path(@user) if string == "this user edit page"
  return validate_email_path if string == "the email validation page"
  return create_password_path if string == "the create password page"
  return root_path(user_token: @user.auth_token, user_email: @user.email) if string == "this user login with token page"
  return "/pdp" if string == "Panela de Pressão"
  return "/users/#{current_user.id}" if string == "my profile page"
  raise "Sorry dude but I don't know what '#{string}' means"
end

def to_element string
  return 'user_organization_id' if string == "the register organization"
  return 'username' if string == "the login email"
  return 'password' if string == "the login password"
  return 'form#login-form input[type="submit"]' if string == "the login form"
  return '.flash.alert' if string == "the login form errors"
  return 'user_first_name' if string == "the register first name"
  return 'user_last_name' if string == "the register last name"
  return 'user_email' if string == "the register email"
  return 'user_password' if string == "the register password"
  return 'form#new_user input[type="submit"]' if string == "the register form"
  return '.first_name.error small.error' if string == "first name field error"
  return '.last_name.error small.error' if string == "last name field error"
  return '.email.error small.error' if string == "email field error"
  return '.password.error small.error' if string == "password field error"
  return '.flash.alert' if string == "an error message"
  return 'user_profession' if string == "the profession field"
  return 'user_website' if string == "the website field"
  return 'user_bio' if string == "the bio field"
  return 'user_facebook' if string == "the Facebook field"
  return 'user_twitter' if string == "the Twitter field"
  return 'user_birthday' if string == "the birthday field"
  return 'user_gender_male' if string == "male as gender"
  return 'user_postal_code' if string == "the postal code field"
  return 'user_phone' if string == "the phone field"
  return 'user_email' if string == "the email field"
  return 'user_secondary_email' if string == "the secondary email field"
  return '.error label[for="user_email"]' if string == "the email error"
  return '.error label[for="user_secondary_email"]' if string == "the secondary email error"
  return 'label[for="user_postal_code"].message' if string == "the postal code error"
  return 'label[for="user_phone"].message' if string == "the phone error"
  return '.error label[for="user_website"]' if string == "the website error"
  return 'form.edit_user input[type="submit"]' if string == "the edit profile form submition button"
  return '.flash.alert' if string == "you have no authorization to access this page"
  return "form#edit_user_#{@user.id}" if string == "this user form edit"
  return 'user_availability_local_monday_morning' if string == "monday morning as local availability"
  return 'user_skills_fotografia' if string == "photography as skill"
  return '.flash' if string == "any message"
  return 'a.logout' if string == "the logout link"
  return 'email' if string == "the validation email"
  return 'form.validate_email input[type="submit"]' if string == "the validation email form"
  return 'password' if string == "the new password"
  return 'form.create_password input[type="submit"]' if string == "the new password form"
  return 'user_organization_id' if string == "the city field"
  raise "Sorry dude but I don't know what '#{string}' means"
end

def to_text string
  return I18n.t("devise.failure.not_found_in_database") if string == "the login form errors"
  return I18n.t("unauthorized.manage.all")              if string == "you have no authorization to access this page"
end

def current_user
  User.find_by_email("trashmail@meurio.org.br")
end
