require 'test_helper'

class VideoTest < ActionDispatch::IntegrationTest
  
  test 'Add videos to the videoexample application' do
    post '/video', {title: 'Space1999', url: 'http://www.films.com', duration: 1}
    assert_equal response.status, 200
  end
  
end
