class ArticlesController < ApplicationController
  
  http_basic_authenticate_with name: "xu", password: "123456", except: [:index, :show]
  
  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
       redirect_to @article, notice: 'article was successfully updated'
    else 
      render 'edit'
    end
  end

  def new
     @article = Article.new
  end

  def show
     @article = Article.find(params[:id])
  end

  def edit
     @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article,notice: 'article  was successfully created'
    else
      render 'new'
    end
  end

  def index
    @articles = Article.all
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path, notice: 'article was successfully destroyed'
  end

  private
  
  def article_params
      params.require(:article).permit(:title,:text)
  end
end
