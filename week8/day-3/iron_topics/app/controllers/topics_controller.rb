class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]
  before_action :disallow_editing_for_topics_with_interests, only: [:edit, :update]
  before_action :authenticate_user!

  # GET /topics
  # GET /topics.json
  def index
    #    @topics = Topic.all.order("interests_count ASC")
    @topics = Topic.all.includes(:interests).
                        sort_by { |topic| topic.interests.sum(:level) }
  end

  # GET /topics/1
  # GET /topics/1.json
  def show
    @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true, filter_html: true, no_links: true)
  end

  # GET /topics/new
  def new
    @topic = Topic.new
  end

  # GET /topics/1/edit
  def edit
  end

  # POST /topics
  # POST /topics.json
  def create
    @topic = Topic.new(topic_params)
    @topic.user_id = current_user.id

    respond_to do |format|
      if @topic.save
        format.html { redirect_to @topic, notice: 'Topic was successfully created.' }
        format.json { render :show, status: :created, location: @topic }
      else
        format.html { render :new }
        format.json { render json: @topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /topics/1
  # PATCH/PUT /topics/1.json
  def update
    respond_to do |format|
      if @topic.update(topic_params)
        format.html { redirect_to @topic, notice: 'Topic was successfully updated.' }
        format.json { render :show, status: :ok, location: @topic }
      else
        format.html { render :edit }
        format.json { render json: @topic.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topic
      @topic = Topic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def topic_params
      params.require(:topic).permit(:title, :long_description, :focus_area)
    end

    def disallow_editing_for_topics_with_interests
      if @topic.interests.count > 0
        redirect_to topics_path, alert: "Sorry, you can't edit this since there are already interests"
        return
      end
    end
end
