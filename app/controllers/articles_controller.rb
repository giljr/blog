class ArticlesController < ApplicationController
  before_action :set_article, only: %i[ show edit update destroy ]

  # GET /articles or /articles.json
  def index
    @articles = Article.all
  end

  # GET /articles/1 or /articles/1.json
  def show
    # byebug
    article = Article.find(params[:id])
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
    article = Article.find(params[:id])
  end

  # POST /articles or /articles.json
  # # render plain: params[:article].inspect -> not working?
  def create       
    @article = Article.new(params.require(:article).permit(:title, :description)) 
    if @article.save
      flash[:notice] = "Article was created sucessfully!"
    # GET "/articles/12"
    # redirect_to article_path(@article.id)
      redirect_to @article
    else
      render "new"
    end
  end
    

  # PATCH/PUT /articles/1 or /articles/1.json
  def update
    @article = Article.find(params[:id])
    if @article.update(params.require(:article).permit(:title, :description)) 
      flash[:notice] = "Article was suucessfully updated!"
      redirect_to @article  
    else
      render "edit" 
    end  
  end

  # respond_to do |format|
  #   if @article.update(article_params)
  #     format.html { redirect_to article_url(@article), notice: "Article was successfully updated." }
  #     format.json { render :show, status: :ok, location: @article }
  #   else
  #     format.html { render :edit, status: :unprocessable_entity }
  #     format.json { render json: @article.errors, status: :unprocessable_entity }
  #   end
  # end

  # DELETE /articles/1 or /articles/1.json
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  # @article.destroy

  # respond_to do |format|
  #   format.html { redirect_to articles_url, notice: "Article was successfully destroyed." }
  #   format.json { head :no_content }
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_params
      params.require(:article).permit(:title, :description)
    end
end
