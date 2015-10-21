class InterestEmailSender
  def initialize(topic)
    @topic = topic
  end

  def send_email
    @topic.interests.each do |interest|
      # Send email about the interest
    end
  end
end
