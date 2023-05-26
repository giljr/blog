class ArticlesController < ApplicationController
  before_action :set_article, only: [ :show, :edit, :update, :destroy ]

  # GET /articles or /articles.json
  def index
    @articles = Article.all
  end

  # GET /articles/1 or /articles/1.json
  def show
    # byebug
    # article = Article.find(params[:id])
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
    # article = Article.find(params[:id])
  end

  # POST /articles or /articles.json
  # # render plain: params[:article].inspect -> not working?
  def create   
    @article = Article.new(article_params)   
    @article.user = User.first
    # # p @article.inspect 
    # p  @article.save!
    # p "Passou Create"
    # # @article = Article.new(params.require(:article).permit(:title, :description)) 
     @article.save!  
       
    #   flash[:notice] = "Article was created sucessfully!"
    # # GET "/articles/12"
    # # redirect_to article_path(@article.id)
       redirect_to @article
    # else
    #   render "new"
    #render "create"
     
  end
    

  # PATCH/PUT /articles/1 or /articles/1.json
  def update
    # @article = Article.find(params[:id])
    if @article.update(article_params) 
    # if @article.update(params.require(:article).permit(:title, :description)) 
      flash[:notice] = "Article was sucessfully updated!"
      redirect_to @article  
    else
      render "edit" 
    end  
  end


  # DELETE /articles/1 or /articles/1.json
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path, notice: "Article destroyed successfully!"
  end

  
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
