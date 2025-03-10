class ArticlesController < ApplicationController 

  # http_basic_authenticate_with name: "Nikhil" , password: "1234", except: [:index , :show]

  def index
    @article = Article.all
  end

  def show 
    @article = Article.find(params[:id])
  end

  def new 
    @article = Article.new
  end

  def create 
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article

    else
      render :new , status: :unprocessable_entity 
    end
  end

  def article_creation

    @article = Article.new(article_params)
    if @article.save
      render json: @article
    else
      render json: { message: "Something went wrong "}
    end
  end

  def article_updation
  
    @article = Article.find(params[:article_id])

    if @article.update(article_params)
      render json: @article
    else
      render json: { message: "Something went wrong "}
    end
  end


  def edit
      @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit , status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to root_path , status: :see_other
    end

  private 
    def article_params
      params.require(:article).permit(:title , :body , :status , :article_id)
    end

end
