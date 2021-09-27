class JournalPostsController < ApplicationController
  before_action :set_journal_post, only: [:show, :update, :destroy]

  # GET /journal_posts
  def index
    @journal_posts = JournalPost.all

    render json: @journal_posts
  end

  # GET /journal_posts/1
  def show
    render json: @journal_post
  end

  # POST /journal_posts
  def create
    @journal_post = JournalPost.new(journal_post_params)

    if @journal_post.save
      render json: @journal_post, status: :created, location: @journal_post
    else
      render json: @journal_post.errors, status: :unprocessable_entity
    end
  end

  # # PATCH/PUT /journal_posts/1
  # def update
  #   if @journal_post.update(journal_post_params)
  #     render json: @journal_post
  #   else
  #     render json: @journal_post.errors, status: :unprocessable_entity
  #   end
  # end

  # # DELETE /journal_posts/1
  # def destroy
  #   @journal_post.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_journal_post
      @journal_post = JournalPost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def journal_post_params
      params.require(:journal_post).permit(:title, :content, :journal_id)
    end
end
