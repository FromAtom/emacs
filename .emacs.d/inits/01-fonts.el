;; �Ѹ�Font������
(set-face-attribute 'default nil
:family "Migu 1M"
:height 120)


;; ���ܸ�Font������
(set-fontset-font
nil 'japanese-jisx0208
(font-spec :family "Migu 1M" :size 14))

(setq face-font-rescale-alist
      '((".*Migu 1M.*" . 1.2)))
