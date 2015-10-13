class InterestsController < ApplicationController
  before_action :authenticate_user!
  before_action :load_markdown_instance_for_the_views

  def filter
    topic = Topic.find(params[:topic_id])
    @interests = topic.interests.where(level: params[:level])
  end

  def create
    @interest = Interest.new(interest_params)
    @interest.user_id = current_user.id
    if @interest.valid?
      @interest.save

      # Send an (something?) to the user that created the topic
      # @interest.topic.user  is the user that created the associated topic
      render :create
    else
      redirect_to root_path, alert: "Ooops"
    end
  end

  private

  def load_markdown_instance_for_the_views
    @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true, filter_html: true, no_links: true)
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def interest_params
    params.require(:interest).permit(:level, :comment, :topic_id)
  end
end
