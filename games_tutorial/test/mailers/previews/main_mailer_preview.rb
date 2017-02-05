# Preview all emails at http://localhost:3000/rails/mailers/main_mailer
class MainMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/main_mailer/notify_game_creator
  def notify_game_creator
    game = Game.create  name: 'def@abc.com', from: 'From Software', review: 'game of the year'
  	comment = Comment.create email: "abc@defc.com", body: "good game"
    mail = MainMailer.notify_game_creator(comment)
  end

end
