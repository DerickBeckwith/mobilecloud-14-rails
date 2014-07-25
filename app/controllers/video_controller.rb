class VideoController < ApplicationController
  def create
    video=Video.create video_params
    if video.save 
      render plain: 'Video added', content_type: 'text/plain', status: 200
    else
      render plain: 'Missing [name, url, duration]', content_type: 'text/plain', status: 400
    end
  end
  
  def index
    @videos=Video.all
    render 'video/index.txt.erb', content_type: 'text/plain', status: 200
  end
  
  private 
    def video_params
      params.permit(:title,:url,:duration)
    end
end