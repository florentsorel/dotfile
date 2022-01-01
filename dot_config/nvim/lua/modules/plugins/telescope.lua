-- Telescope

require('telescope').setup{
    defaults = {
        file_ignore_patterns = {
            "./node_modules/*",
            "node_modules",
            "^node_modules/*",
            "node_modules/*",
            ".git",
            "./git",
            "vendor",
            "./vendor",
        },
    },
    pickers = {
        find_files = {
            find_command = {
                "fd",
                "--type",
                "f",
                "--strip-cwd-prefix",
                "--no-ignore",
                "--hidden",
            }
        }
    }
}
