class RepMailerPreview < ActionMailer::Preview

  def confirm_application
    RepMailer.confirm_application(Rep.first)
  end
end
