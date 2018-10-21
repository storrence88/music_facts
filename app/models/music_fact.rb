class MusicFact < ApplicationRecord
  after_create :notify_subscribers

  def notify_subscribers
    client = Twilio::REST::Client.new

    Subscriber.find_each do |subscriber|
            client.messages.create(
                from: "+18326481535",
                to: subscriber.phone_number,
                body: self.fact
            )
    end
  end
end
