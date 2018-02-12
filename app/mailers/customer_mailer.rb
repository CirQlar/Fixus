class CustomerMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.customer_mailer.pick_up.subject
  #
  def pick_up(repair)
    @repair = repair
    @greeting = "Hi"

    mail to: @repair.user.email, subject: "Your repair has been picked up."
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.customer_mailer.fix.subject
  #
  def fix(repair)
    @repair = repair
    @greeting = "Hi"

    mail to: @repair.user.email, subject: "Your repair has been fixed."
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.customer_mailer.deliver.subject
  #
  def deliver(repair)
    @repair = repair
    @greeting = "Hi"

    mail to: @repair.user.email, subject: "Your repair has been delivered."
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.customer_mailer.cancel.subject
  #
  def cancel(repair)
    @repair = repair
    @greeting = "Hi"

    mail to: @repair.user.email, subject: "Your repair has been cancelled."
  end
end
