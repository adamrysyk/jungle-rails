class UserMailer < ApplicationMailer

   def jungle_receipt_email(order)
    @order = order
    mail(to: order.email, subject: "Order confirmation for order #:#{order.id}")
  end

end
