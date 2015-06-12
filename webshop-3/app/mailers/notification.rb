class Notification < ApplicationMailer
	default from: "from@example.com"

	def new_account(user)
		@user = user
		attachments['rails.png'] = File.read("#{Rails.root}/app/assets/images/rails.png")
		mail(to: user.email,
			subject: "The account #{user.name} is active.")
	end
end
