;; smartchr
(require 'smartchr)
(add-hook 'cperl-mode-hook
          '(lambda ()
             (progn
               (local-set-key (kbd "F") (smartchr '("F" "$")))
               (local-set-key (kbd "H") (smartchr '("H" " => ")))
               (local-set-key (kbd "J") (smartchr '("J" "->")))
               (local-set-key (kbd "M") (smartchr '("M" "my ")))
               (local-set-key (kbd "D") (smartchr '("D" "use Data::Dumper; warn Dumper ")))
               )))
