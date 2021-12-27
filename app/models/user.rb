# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable # , :recoverable, :confirmable

  has_many :projects, -> { order 'created_at ASC' }, dependent: :destroy, inverse_of: :user
end
