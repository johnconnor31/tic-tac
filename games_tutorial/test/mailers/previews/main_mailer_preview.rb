# Preview all emails at http://localhost:3000/rails/mailers/main_mailer
class MainMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/main_mailer/notify_game_creator
  def notify_game_creator
    MainMailer.notify_game_creator
  end

end
