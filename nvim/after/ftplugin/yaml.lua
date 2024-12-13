local set = vim.opt_local
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2

if vim.fn.executable 'yamllint' ~= 0 then
	set.makeprg = 'yamllint -f parsable'
end

if vim.fn.executable 'ansible-lint' ~= 0 then
	---@param command string
	local create_ansible_lint_command = function(command)
		vim.api.nvim_create_user_command(command, function(opts)
			local argc = #opts.fargs
			if argc == 0 then
				local current_buffer = vim.api.nvim_buf_get_name(0)
				vim.cmd(
					string.format(
						'cexpr system("ansible-lint -p %s")',
						current_buffer
					)
				)
			else
				vim.cmd(
					string.format(
						'cexpr system("ansible-lint -p %s")',
						opts.args
					)
				)
			end
		end, { nargs = '*' })
	end
	local ansible_files = {
		'ansible.cfg',
		'inventory',
		'inventory.ini',
		'inventory.yaml',
		'inventory/',
		'playbook.yaml',
		'playbooks/',
		'roles/',
		'host_vars/',
		'group_vars/',
	}

	for _, f in ipairs(ansible_files) do
		local ansible_file = (
			vim.fn.filereadable(f) ~= 0 or vim.fn.isdirectory(f) ~= 0
		)
		if ansible_file then
			create_ansible_lint_command 'AnsibleLint'
			break
		end
	end
end
