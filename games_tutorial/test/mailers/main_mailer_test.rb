require 'test_helper'

class MainMailerTest < ActionMailer::TestCase
  test "notify_game_creator" do
  	game = Game.create  name: 'def@abc.com', from: 'From Software', review: 'game of the year'
  	comment = Comment.create email: "abc@defc.com", body: "good game"
    mail = MainMailer.notify_game_creator(comment)
    assert_equal "You have a new comment on your game", mail.subject
    assert_equal [game.name], mail.to
    assert_equal [comment.email], mail.from
    assert_match comment.body, mail.body.encoded
  end

end
