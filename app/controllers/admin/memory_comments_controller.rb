class Admin::MemoryCommentsController < ApplicationController
  before_action :authenticate_admin!
  
  layout "admin_application"

  def index
    @memory_comments = MemoryComment.page(params[:page]).per(10)
  end

  def destroy
    memory_comment = MemoryComment.find(params[:id])
    memory_comment.destroy
    redirect_to admin_memory_comments_path
  end

end
