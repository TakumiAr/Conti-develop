class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact

    mail to: "example@mail.com", subject: "リクエストが届きました。"
  end
end
