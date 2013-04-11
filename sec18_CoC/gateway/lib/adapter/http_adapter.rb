require 'net/http'

class HpptAdapter
	def send_message(message)
		Net::HTTP.start(messege.to.host, message.to.port) do |http|
			http.post(message.to.path, message.body)
		end
	end
end
