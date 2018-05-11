class LettersMailer < ApplicationMailer
  def email
    email = params[:email]
    mail(to: email, subject: 'Email from paradise', body: Faker::Hobbit.quote)
  end
end
