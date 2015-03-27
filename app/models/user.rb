#|- - - - - - - - - - - - - - - - - - - - - -*/
#|- - - MIGRATION: devise_create_user - - - */
#|- - - - - - - - - - - - - - - - - - - - -*/

# create_table(:users) do |t|
#       t.string :name
      
#       t.string :email,              null: false, default: ""
#       t.string :encrypted_password, null: false, default: ""

#       t.string   :reset_password_token
#       t.datetime :reset_password_sent_at

#       t.datetime :remember_created_at

#       t.integer  :sign_in_count, default: 0, null: false
#       t.datetime :current_sign_in_at
#       t.datetime :last_sign_in_at
#       t.string   :current_sign_in_ip
#       t.string   :last_sign_in_ip

#       t.string   :confirmation_token
#       t.datetime :confirmed_at
#       t.datetime :confirmation_sent_at
#       t.string   :unconfirmed_email # Only if using reconfirmable

#       t.timestamps
# end

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :items

#|- - - - - - - - - - -- - - - - - - -*/
#|- - - FOR TESTING VALIDATION - - - */
#|- - - - - - - - - - - - - - -  - -*/

validate :name, presence: {message: 'User name is compulsory.'}
validate :email, presence: {message: 'User email is compulsory.'}
validate :encrypted_password, presence: {message: 'User password is compulsory.'}

end
