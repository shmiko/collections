class CommentsController < ApplicationController
	http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy
	
	def create
    @release = Release.find(params[:release_id])
    @comment = @release.comments.create(comment_params)
    redirect_to release_path(@release)
  end
  
  def destroy
    @release = Release.find(params[:release_id])
    @comment = @release.comments.find(params[:id])
    @comment.destroy
    redirect_to release_path(@release)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
