local git = require("rocks-git.git")

local origin_pkg_dir = vim.fn.tempname()
local origin_pkg_remote_dir = vim.fs.joinpath(origin_pkg_dir, ".git", "refs", "remotes", "origin")

local upstream_pkg_dir = vim.fn.tempname()
local upstream_pkg_remote_dir = vim.fs.joinpath(upstream_pkg_dir, ".git", "refs", "remotes", "upstream")

setup(function()
    vim.system({ "mkdir", "-p", origin_pkg_remote_dir }, {}):wait()
    vim.system({ "mkdir", "-p", upstream_pkg_remote_dir }, {}):wait()
    local origin_head = vim.fs.joinpath(origin_pkg_remote_dir, "HEAD")
    local fd = assert(io.open(origin_head, "w"), "could not open " .. origin_head)
    fd:write("foo")
    fd:close()
    local upstream_head = vim.fs.joinpath(upstream_pkg_remote_dir, "HEAD")
    fd = assert(io.open(upstream_head, "w"), "could not open " .. upstream_head)
    fd:write("bar")
    fd:close()
end)

describe("git", function()
    it("Can get head branch from 'origin' remote", function()
        local head_branch = git.get_head_branch({
            dir = origin_pkg_dir,
            url = "https://github.com/lumen-oss/luarocks-stub.git",
        })
        assert.Same("foo", head_branch)
    end)
    it("Can get head branch from 'upstream' remote", function()
        local head_branch = git.get_head_branch({
            dir = upstream_pkg_dir,
            url = "https://github.com/lumen-oss/luarocks-stub.git",
        })
        assert.Same("bar", head_branch)
    end)
end)
