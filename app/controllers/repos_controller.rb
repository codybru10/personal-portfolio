class ReposController < ApplicationController
  def index

      @repos = HTTParty.get("https://api.github.com/users/codybru10/repos?per_page=50&access_token=" + ENV['TOKEN'],
            headers: {"User-Agent" => "profile"
                })
    end
  end
