class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    # has to be an instance variable to send the errors back to the
    # 'new' view to display errors

    if @article.save
      flash[:notice] = 'Article was successfully created!'
      redirect_to article_path(@article)
    else
      render 'new'
    end
  end

  def destroy
    article = Article.find(params[:id])
    article.destroy

    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :description)
  end

end
