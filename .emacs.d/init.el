;; Cask
(require 'cask)
(cask-initialize)

;; init-loader
(require 'init-loader)
(init-loader-load "~/.emacs.d/inits")
