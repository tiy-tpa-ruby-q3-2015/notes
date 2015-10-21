class GoogleSearchTopic
  include Sidekiq::Worker

  def perform(topic_id)
    topic = Topic.find(topic_id)
    topic.google_results = open("http://www.google.com?q=#{topic.title}").read
    topic.save

    sleep 10
  end
end
