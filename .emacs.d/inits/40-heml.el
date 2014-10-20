(require 'helm)
(require 'helm-config)

(define-key isearch-mode-map (kbd "C-o") 'helm-occur-from-isearch)
