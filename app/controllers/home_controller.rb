class HomeController < ApplicationController
  # 로그인 유무를 체크하는 코드로서
  # 로그인이 되어 있지 않으면 자동으로 로그인 페이지로 이동
  before_action :authenticate_user!

  def index
  	# index페이지를 로그인하지 않은 상태로 접근한다면 로그인 페이지로 가게 하는 코드
 # 	unless user_signed_in?
 # 		redirect_to "/users/sign_in"
#    end
  end

end
