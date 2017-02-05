class MainMailer < ApplicationMailer
	# queue_as :sucker_punch
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.main_mailer.notify_game_creator.subject
  #
  def notify_game_creator(comment)
  	sleep 5
    @greeting = "Hi"
    @comment = comment
    mail to: "def@abc.com", from: comment.email
  end
end