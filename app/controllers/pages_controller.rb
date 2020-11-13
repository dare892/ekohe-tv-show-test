class PagesController < ApplicationController
  def dashboard
    if !current_user
      return redirect_to new_user_session_path, alert: 'Please Log In!'
    end
    search = params[:search].presence || 'all'
    url = URI.parse("http://api.tvmaze.com/search/shows?q=#{search}")
    req = Net::HTTP::Get.new(url.to_s)
    res = Net::HTTP.start(url.host, url.port) {|http|
      http.request(req)
    }
    @results = JSON.parse(res.body)
  end
end
