function ColorMyPencils(color)
	color = color or "catppuccin"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })  -- set trasnparent background
 	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" }) 	
end

ColorMyPencils()
