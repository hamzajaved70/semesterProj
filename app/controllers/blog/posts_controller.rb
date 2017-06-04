module Blog
	class PostsController < BlogController
		before_action :set_post, only: [:show, :edit, :update, :destroy]

    # GET /posts
    # GET /posts.json
    def index
        @posts = storage.list_for(params[:page], params[:tag])
    end

    # GET /posts/1
    # GET /posts/1.json
    def show
        @post = storage.friendly.find(params[:id])
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
        
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
        params.require(:post).permit(:title, :body, :description, :banner_image_url, :tag_list)
    end
    
    def storage
        Post.published
    end
    
  end
end

