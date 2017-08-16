class MessagesController < ApplicationController
	def index
		@article = Article.all
	end
	def new
		@article = Article.new
	end
	def create
		#render plain: params[:article].inspect
		# p article_params	
		@article = Article.new(article_params)
		@article.save
		redirect_to article_params
		# p @article
		# if 	@article.save
		# 	redirect_to @artcile
		# else
		# 	redirect_to @artcile
		# end
	end
	def show
		@article = Article.find(params[:id])
	end
	private
		def article_params
			params.require(:article).permit(:title,:text)
		end
end
