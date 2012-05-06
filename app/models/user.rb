class User
  # devise :omniauthable
  include Mongoid::Document
  include Mongoid::Timestamps
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  ## Database authenticatable
  field :email,              :type => String, :null => false, :default => ""
  field :encrypted_password, :type => String, :null => false, :default => ""

  ## Recoverable
  field :reset_password_token,   :type => String
  field :reset_password_sent_at, :type => Time

  ## Rememberable
  field :remember_created_at, :type => Time

  ## Trackable
  field :sign_in_count,      :type => Integer, :default => 0
  field :current_sign_in_at, :type => Time
  field :last_sign_in_at,    :type => Time
  field :current_sign_in_ip, :type => String
  field :last_sign_in_ip,    :type => String

  field :name
  field :facebook
  field :auth_type
  validates_presence_of :name
  validates_uniqueness_of :name, :email, :case_sensitive => false
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :facebook

  ## Encryptable
  # field :password_salt, :type => String

  ## Confirmable
  # field :confirmation_token,   :type => String
  # field :confirmed_at,         :type => Time
  # field :confirmation_sent_at, :type => Time
  # field :unconfirmed_email,    :type => String # Only if using reconfirmable

  ## Lockable
  # field :failed_attempts, :type => Integer, :default => 0 # Only if lock strategy is :failed_attempts
  # field :unlock_token,    :type => String # Only if unlock strategy is :email or :both
  # field :locked_at,       :type => Time

  ## Token authenticatable
  #field :authentication_token, :type => String

  def self.find_for_facebook_oauth(access_token, signed_in_resource=nil)
    data = access_token.extra.raw_info

    user = User.first(conditions: {email: data.email})
    unless user.nil?
      user
    else # Create a user with a stub password.
      user = self.create!(:email => data.email, :name => data.name, :password => Devise.friendly_token[0,20])
      user.facebook = access_token
      user.auth_type = :facebook
      user.save
      user
    end
  end

  def self.find_for_foursquare_oauth(access_token, signed_in_resource=nil)
    data = access_token.extra.raw_info
    puts "************** DATA #{data.to_json} ***************"
    user = User.first(conditions: {email: data.contact.email})
    unless user.nil?
      user
    else # Create a user with a stub password.
      name = "#{data.firstName} #{data.lastName}"
      user = self.create!(:email => data.contact.email, :name => name, :password => Devise.friendly_token[0,20])
      user.auth_type = :foursquare
    end
  end

  # def self.new_with_session(params, session)
  #   super.tap do |user|
  #
  #     if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
  #       user.email = data["email"]
  #       user.facebook = session
  #     end
  #   end
  # end

  def facebook_info
    facebook['extra']['raw_info']
  end

end

