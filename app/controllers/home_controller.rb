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

  def create
  	user=User.new
  	user.school=params[:userschool]
  	user.sex=params[:usersex]
  	user.age=params[:userage]
  	user.img=params[:userimage_url]
  	user.hobby=params[:userhobby]
  	user.character=params[:usercharacter]
  	user.height=params[:userheight]
  	user.ligion=params[:userreligion]
  	user.style=params[:userstyle]
  	user.wantyes=params[:userwantyes]
  	user.wantno=params[:userwantno]
    user.major=params[:usermajor]
    user.appeal=params[:userappeal]
    user.save

    redirect_to '/'
  end
end
