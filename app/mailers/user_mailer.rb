class UserMailer < ApplicationMailer

   def jungle_receipt_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Jungle Receipt')
  end

end
