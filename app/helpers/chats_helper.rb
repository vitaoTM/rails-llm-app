module ChatsHelper
  def list_name(chat)
    if chat.messages.present?
      "#{chat.messages.first.content[0..20]}"
    else
      "Chat #{chat.id}"

    end
  end
end
