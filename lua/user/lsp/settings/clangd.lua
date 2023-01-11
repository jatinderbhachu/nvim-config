return {
	settings = {
        cmd = {
            "clangd",
            "--background-index",
            "--suggest-missing-includes",
            "--clang-tidy",
            "-Wall",
            "--header-insertion=iwyu"
        },
        filetypes = {"c", "cpp", "objc", "objcpp"},
        root_dir = root_pattern(
            '.clangd',
            '.clang-tidy',
            '.clang-format',
            'compile_commands.json',
            'compile_flags.txt',
            'configure.ac',
            '.git'
          ),
	},
}
