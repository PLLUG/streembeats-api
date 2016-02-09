
class TestJob
  @queue = :test_queue

  def self.perform
    TestMailer.welcome().deliver_now
    puts "Email sended"
  end
end
