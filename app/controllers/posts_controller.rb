class PostsController < ApplicationController
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only:
  :dashboard


  def index
    @posts = Post.all.reverse

  end

def dashboard
  @post = Post.new
end

def create
  @post = Post.new(post_params)
  s1='spoiler'
  text = @post.content
s1='spoiler'
snew=''
s= text.split(s1)
s.each {|x| snew += x.to_s}
  @post.content = snew

  if @post.save
    redirect_to root_path, notice: 'si guardo'
  else
    render :dashboard, alert: 'no guardo'
end
end

private
 def post_params
   params.require(:post).permit(:title, :image_url, :content)
 end

end
