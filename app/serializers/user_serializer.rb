class UserSerializer < ActiveModel::Serializer
  has_many   :posts
  has_many   :comments

  attributes :id, :user_name, :get_post_count

  def get_post_count
    object.posts.count
  end


end
