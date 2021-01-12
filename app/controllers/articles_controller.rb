class ArticlesController < ApplicationController

	def new
		@article = Article.new
	end
	def create
		if 
			@article = Article.new(article_params)
		   @article.save
		   redirect_to articles_path
		   # render plain: params[:article].inspect
		 else
			render 'new'
		end
	end
	def index
		@articles = Article.all
	end
	def show
		@article = Article.find(params[:id])
	end
	def edit
	end
	def update
	end
	def destroy
	end

	private
	def article_params
		params.require(:article).permit(:title, :text)
	end
end
