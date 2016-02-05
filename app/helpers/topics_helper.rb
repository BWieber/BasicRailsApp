module TopicsHelper

  def user_is_authorized_for_topics?(topic)
    current_user && (current_user == topic.user || current_user.admin?)
  end

end
