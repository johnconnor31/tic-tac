require 'test_helper'

class MainMailerTest < ActionMailer::TestCase
  test "notify_game_creator" do
    mail = MainMailer.notify_game_creator
    assert_equal "You have a new comment on your game", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
