class HomeController < ApplicationController
  def index
  end

  def hello_world
    respond_to do |format|
      format.html
      format.pdf do
        render(:pdf => "hello world",
               :layout => 'pdf')
      end
    end
  end
end
