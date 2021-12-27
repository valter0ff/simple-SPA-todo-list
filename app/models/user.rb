# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :rememberable, :validatable

  has_many :projects, -> { order 'created_at ASC' }, dependent: :destroy, inverse_of: :user
end
