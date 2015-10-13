class InterestsController < ApplicationController
  before_action :authenticate_user!

  def create
    @interest = Interest.new(interest_params)
    @interest.user_id = current_user.id
    if @interest.valid?
      @interest.save

      @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true, filter_html: true, no_links: true)

      # Send an (something?) to the user that created the topic
      # @interest.topic.user  is the user that created the associated topic
      render :create
    else
      redirect_to root_path, alert: "Ooops"
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def interest_params
    params.require(:interest).permit(:level, :comment, :topic_id)
  end
end
