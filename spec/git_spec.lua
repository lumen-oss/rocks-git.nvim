local git = require("rocks-git.git")
local a = require("nio").tests

local pkg_dir = vim.fn.tempname()

setup(function()
    vim.fn.mkdir(pkg_dir, "p")
end)

describe("git", function()
    a.it("Can get the remote HEAD branch", function()
        local head_branch = git.get_head_branch({
            dir = pkg_dir,
            url = "https://github.com/lumen-oss/luarocks-stub.git",
        }).wait()
        assert.Same("main", head_branch)
    end)

    a.it("Handles a remote without semver tags", function()
        local url = "https://github.com/lumen-oss/luarocks-stub.git"
        local version_tuple = git.get_latest_remote_semver_tag(url).wait()
        vim.print(version_tuple)
        -- {} if no tag, else latest_tag, latest_version
        assert.Same({}, version_tuple)
    end)
end)
