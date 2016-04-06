class User < ActiveRecord::Base
  has_secure_password
  has_many :projects, dependent: :destroy

validates :name, presence: true
validates :email, presence: true, 
					format: /\A\S+@\S+\z/,
					uniqueness: { case_sensitive: false }


 has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png",
                
  :storage => :s3,
  :s3_region => 'us-east-1',
                    :s3_credentials => "config/.paperpaper.yml"



validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

	def self.authenticate(email, password)
		user = User.find_by(email: email)
		user && user.authenticate(password)
	end

				

end
