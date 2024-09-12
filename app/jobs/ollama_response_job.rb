class OllamaResponseJob < ApplicationJob
  queue_as :default

  def perform(chat_id)
    chat = Chat.find(chat_id)
    call_ollama(chat)
  end

  def call_ollama(chat)
    # message = chat.messages.create(role: 'assistant', content: '')

    client = Ollama.new(
      credentials: { address: ENV.fetch('OLLAMA_API_URL') },
      options: { server_sent_events: true }
    )

    client.chat(
      {
        model: "phi3",
        messages: chat.messages.map { |m| { role: m.role, content: m.content } },
      }
      ) do |event, raw|
        message = if chat.messages.last.role == 'assistant'
          chat.messages.last
        else
          chat.messages.create(role: 'assistant', content: '')
        end
        stream_proc(message, event).call
      end
    end

    def stream_proc(message, event)
      proc do |chunk, _bytesize|
        new_content = event.dig('message', 'content')
        message.update(content: message.content + new_content) if new_content.present?
      end
  end

end
