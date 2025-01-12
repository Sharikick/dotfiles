local home = "/home/tsyden"
local status_ok, jdtls = pcall(require, "jdtls")
if not status_ok then
	return
end

local jdtls_path = home .. "/.local/share/nvim/mason/packages/jdtls"

local equinox_path = vim.split(vim.fn.glob(jdtls_path .. "/plugins/*jar"), "\n")
local equinox_launcher = ""

for _, file in pairs(equinox_path) do
	if file:match("launcher_") then
		equinox_launcher = file
		break
	end
end

local os_config = jdtls_path .. "/config_linux"

local root_markers = { "gradlew", "mvnw" }
local root_dir = require("jdtls.setup").find_root(root_markers)

local workspace_dir = home .. "/.local/share/java_workspace/" .. vim.fn.fnamemodify(root_dir, ":p:h:t")

local lsp_config = require("plugins.lsp.opts")

local config = {
	cmd = {
		home .. "/java/bin/java",

		"-Declipse.application=org.eclipse.jdt.ls.core.id1",
		"-Dosgi.bundles.defaultStartLevel=4",
		"-Declipse.product=org.eclipse.jdt.ls.core.product",
		"-Dlog.protocol=true",
		"-Dlog.level=ALL",
		"-javaagent:" .. jdtls_path .. "/lombok.jar",
		"-Xms1g",
		"--add-modules=ALL-SYSTEM",
		"--add-opens",
		"java.base/java.util=ALL-UNNAMED",
		"--add-opens",
		"java.base/java.lang=ALL-UNNAMED",
		"-jar",
		equinox_launcher,
		-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^                                       ^^^^^^^^^^^^^^
		-- Must point to the                                                     Change this to
		-- eclipse.jdt.ls installation                                           the actual version
		-- 💀
		"-configuration",
		os_config,
		-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^        ^^^^^^
		-- Must point to the                      Change to one of `linux`, `win` or `mac`
		-- eclipse.jdt.ls installation            Depending on your system.

		"-data",
		workspace_dir,
	},
	on_attach = lsp_config.on_attach,
	capabilities = lsp_config.capabilities,
	root_dir = root_dir,
	settings = {
		java = {
			sources = {
				organizeImports = {
					starThreshold = 9999,
					staticStarThreshold = 9999,
				},
			},
		},
	},
}
-- jdtls.start_or_attach(config)
