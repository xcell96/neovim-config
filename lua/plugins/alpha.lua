return {
	"goolord/alpha-nvim",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val =
			{
				[[      ::::    ::: :::::::::: ::::::::  :::     ::: :::::::::::   :::   :::]],
				[[     :+:+:   :+: :+:       :+:    :+: :+:     :+:     :+:      :+:+: :+:+:]],
				[[    :+:+:+  +:+ +:+       +:+    +:+ +:+     +:+     +:+     +:+ +:+:+ +:+]],
				[[   +#+ +:+ +#+ +#++:++#  +#+    +:+ +#+     +:+     +#+     +#+  +:+  +#+ ]],
				[[  +#+  +#+#+# +#+       +#+    +#+  +#+   +#+      +#+     +#+       +#+  ]],
				[[ #+#   #+#+# #+#       #+#    #+#   #+#+#+#       #+#     #+#       #+#   ]],
				[[###    #### ########## ########      ###     ########### ###       ###    ]],
			},
			---@diagnostic disable-next-line: redundant-value
			alpha.setup(dashboard.opts)
	end,
}
