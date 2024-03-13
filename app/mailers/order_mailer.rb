class OrderMailer < ApplicationMailer

  def received (order)
    @order = order
    mail to: order.email, subject: 'ChicCloset Order Confirmation'
  end

  def shipped
    @order = order
    mail to: order.email, subject: 'Your Order has Been Shipped'
  end
end
