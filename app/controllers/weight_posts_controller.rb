class WeightPostsController < ApplicationController
  before_action :set_weight_post, only: [:show, :edit, :update, :destroy]

  # GET /weight_posts
  # GET /weight_posts.json
  def index
    @weight_posts = WeightPost.all
  end

  # GET /weight_posts/1
  # GET /weight_posts/1.json
  def show
  end

  # GET /weight_posts/new
  def new
    @weight_post = WeightPost.new
  end

  # GET /weight_posts/1/edit
  def edit
  end

  # POST /weight_posts
  # POST /weight_posts.json
  def create
    @weight_post = WeightPost.new(weight_post_params)

    respond_to do |format|
      if @weight_post.save
        format.html { redirect_to @weight_post, notice: 'Weight post was successfully created.' }
        format.json { render :show, status: :created, location: @weight_post }
      else
        format.html { render :new }
        format.json { render json: @weight_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weight_posts/1
  # PATCH/PUT /weight_posts/1.json
  def update
    respond_to do |format|
      if @weight_post.update(weight_post_params)
        format.html { redirect_to @weight_post, notice: 'Weight post was successfully updated.' }
        format.json { render :show, status: :ok, location: @weight_post }
      else
        format.html { render :edit }
        format.json { render json: @weight_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weight_posts/1
  # DELETE /weight_posts/1.json
  def destroy
    @weight_post.destroy
    respond_to do |format|
      format.html { redirect_to weight_posts_url, notice: 'Weight post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weight_post
      @weight_post = WeightPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weight_post_params
      params.require(:weight_post).permit(:comment, :weight, :fat_per, :bmi, :weight_date)
    end
end
