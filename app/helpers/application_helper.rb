module ApplicationHelper

	def intellinav
		if @auth.present?
			link_to(@auth.email, login_path, :method => :delete, :confirm => "Are you sure you want to log out?")
		else
			link_to('Login', login_path)
		end
	end

end
