class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, null: false
  validates :email, null: false, uniqueness: { case_sensitive: false } # Rails 6.1のuniquenessバリデータはデフォルトで大文字小文字を区別しなくなります。
                                                                       # case_sensitiveオプションは、trueだと大文字小文字を区別する。しかし、DB側のcollationに変更がなければ、問題がある。
                                                                       # falseだと大文字小文字を区別しなくなる。しかし、大文字小文字は同じに扱われるため問題がある。
  validates :password, null: false
end
