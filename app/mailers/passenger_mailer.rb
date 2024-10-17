class PassengerMailer < ApplicationMailer


  def confirmation_email
    @passenger = params[:passenger]
    mail(to: @user.email, subject: 'Congratulation on booking a flight')
  end
end
