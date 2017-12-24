class RepMailer < ApplicationMailer

  def confirm_application(rep)
    @rep = rep
    mail to: @rep.email, subject: "Thank you for applying."
  end
end
