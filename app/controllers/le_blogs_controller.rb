class LeBlogsController < ApplicationController
  before_action :set_le_blog, only: [:show, :edit, :update, :destroy]

  # GET /le_blogs
  # GET /le_blogs.json
  def index
    @le_blogs = LeBlog.all
  end

  def your_posts
  end

  def user_profile
    @user = User.find(params[:id])
  end
  # GET /le_blogs/1
  # GET /le_blogs/1.json
  def show
    @comment = Comment.new
  end

  # GET /le_blogs/new
  def new
    @le_blog = LeBlog.new
  end

  # GET /le_blogs/1/edit
  def edit
  end

  # POST /le_blogs
  # POST /le_blogs.json
  def create
    @le_blog = LeBlog.new(le_blog_params)

    respond_to do |format|
      if @le_blog.save
        format.html { redirect_to @le_blog, notice: 'Le blog was successfully created.' }
        format.json { render :show, status: :created, location: @le_blog }
      else
        format.html { render :new }
        format.json { render json: @le_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /le_blogs/1
  # PATCH/PUT /le_blogs/1.json
  def update
    respond_to do |format|
      if @le_blog.update(le_blog_params)
        format.html { redirect_to @le_blog, notice: 'Le blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @le_blog }
      else
        format.html { render :edit }
        format.json { render json: @le_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /le_blogs/1
  # DELETE /le_blogs/1.json
  def destroy
    @le_blog.destroy
    respond_to do |format|
      format.html { redirect_to le_blogs_url, notice: 'Le blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_le_blog
      @le_blog = LeBlog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def le_blog_params
      params.require(:le_blog).permit(:title, :author, :blog_entry, :user_id)
    end
end
