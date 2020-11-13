class PagesController < ApplicationController
  def dashboard
    if !current_user
      return redirect_to new_user_session_path, alert: 'Please Log In!'
    end

    url = URI.parse("http://api.tvmaze.com/search/shows?q=all")
    req = Net::HTTP::Get.new(url.to_s)
    res = Net::HTTP.start(url.host, url.port) {|http|
      http.request(req)
    }
    @result = JSON.parse(res.body)
  end
end
