module UsersHelper
	def mostrar(ro)
		if ro == 1
			'<span class="label label-primary">Administrador</span>'.html_safe
		else 
			'<span class="label label-default">Usurio</span>'.html_safe
		end
	end
end
