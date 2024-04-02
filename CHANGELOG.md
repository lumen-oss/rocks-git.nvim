# Changelog

## [1.3.1](https://github.com/nvim-neorocks/rocks-git.nvim/compare/v1.3.0...v1.3.1) (2024-04-02)


### Bug Fixes

* **install:** edge case when parsing args ([976e1e1](https://github.com/nvim-neorocks/rocks-git.nvim/commit/976e1e18b141d2fdf216be684da5a2e5516ce5a8))

## [1.3.0](https://github.com/nvim-neorocks/rocks-git.nvim/compare/v1.2.1...v1.3.0) (2024-02-29)


### Features

* hook into `:Rocks install` and `:Rocks update` ([3c71055](https://github.com/nvim-neorocks/rocks-git.nvim/commit/3c71055029cb38eb3cc08e7e0d212fa68d6cd64b))

## [1.2.1](https://github.com/nvim-neorocks/rocks-git.nvim/compare/v1.2.0...v1.2.1) (2024-01-01)


### Bug Fixes

* **sync:** checkout remote HEAD if not checked out and no rev is set ([#11](https://github.com/nvim-neorocks/rocks-git.nvim/issues/11)) ([ec3da19](https://github.com/nvim-neorocks/rocks-git.nvim/commit/ec3da19f449d3a0d18b01d58682213fd88edaf23))

## [1.2.0](https://github.com/nvim-neorocks/rocks-git.nvim/compare/v1.1.1...v1.2.0) (2024-01-01)


### Features

* async git operations with `nvim-nio` ([#9](https://github.com/nvim-neorocks/rocks-git.nvim/issues/9)) ([2a46f54](https://github.com/nvim-neorocks/rocks-git.nvim/commit/2a46f549ff9b7742dece161f62a5edf0ec400b6d))

## [1.1.1](https://github.com/nvim-neorocks/rocks-git.nvim/compare/v1.1.0...v1.1.1) (2023-12-25)


### Bug Fixes

* prevent plugin from being sourced more than once ([08dc786](https://github.com/nvim-neorocks/rocks-git.nvim/commit/08dc786d6e415cdc6fe07f17a2c8506104f762fe))

## [1.1.0](https://github.com/nvim-neorocks/rocks-git.nvim/compare/v1.0.3...v1.1.0) (2023-12-17)


### Features

* **prune:** better messages when moving between 'opt'/'start' ([bb1cca9](https://github.com/nvim-neorocks/rocks-git.nvim/commit/bb1cca9df3f366866f16a035f0bd369b13d1d9ac))


### Bug Fixes

* **sync:** inverted `rev` equality check ([6e8d64f](https://github.com/nvim-neorocks/rocks-git.nvim/commit/6e8d64f51d19d8a90c98b33f8dfeced3bd742119))

## [1.0.3](https://github.com/nvim-neorocks/rocks-git.nvim/compare/v1.0.2...v1.0.3) (2023-12-17)


### Bug Fixes

* **operations:** wrong progress messages ([c944980](https://github.com/nvim-neorocks/rocks-git.nvim/commit/c944980ea387220ec878098b273bef90092033fb))

## [1.0.2](https://github.com/nvim-neorocks/rocks-git.nvim/compare/v1.0.1...v1.0.2) (2023-12-17)


### Bug Fixes

* **prune:** remove mismatched `opt`/`start` plugins ([4f06886](https://github.com/nvim-neorocks/rocks-git.nvim/commit/4f06886adf6a79f49b035ec530c9bc9becb13fdc))

## [1.0.1](https://github.com/nvim-neorocks/rocks-git.nvim/compare/v1.0.0...v1.0.1) (2023-12-17)


### Bug Fixes

* **deps:** bump rocks.nvim min version to non-broken version ([7e41cdb](https://github.com/nvim-neorocks/rocks-git.nvim/commit/7e41cdbca334267d6bbab29ddccd3ba174271e59))

## 1.0.0 (2023-12-17)


### Features

* initial implementation ([#1](https://github.com/nvim-neorocks/rocks-git.nvim/issues/1)) ([e71193e](https://github.com/nvim-neorocks/rocks-git.nvim/commit/e71193e85818c9a5bf71943c3d3f96115f0b032f))
