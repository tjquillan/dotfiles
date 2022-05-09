local present, packer = pcall(require, "packer")

if not present then
    local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    end

    present, packer = pcall(require, "packer")
end

vim.cmd [[packadd packer.nvim]]

packer.init({
    display = {
        open_fn = function()
           return require("packer.util").float({ border = "single" })
        end,
        prompt_border = "single",
    },
    auto_clean = true,
    compile_on_sync = true,
    auto_reload_compiled = true,
})

return packer