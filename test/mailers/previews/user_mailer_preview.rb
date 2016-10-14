class UserMailerPreview < ActionMailer::Preview
  def order_email_preview
    UserMailer.jungle_receipt_email(Order.last)
  end
end