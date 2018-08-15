class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #이메일을 저장하기 전, 주소를 소문자로 변환
  before_save {self.email = email.downcase}
  	#정규식을 이용해 이메일 형식을 지정
  	VALID_EMAIL_REGEX = /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  	#이름과 이메일이 반드시 존재하고, 50자(이름), 255자(이메일)를 넘지 않게 하는 유효성 검사
  	validates :name, presence: true, length: {maximum: 50}
  	validates :email, presence: true, length: {maximum: 255}, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
  	#validates (존재를 확인), presence(오직 하나만 존재), uniqueness(이메일소문자)

  mount_uploader :userimage_url, ImageUploader
end
