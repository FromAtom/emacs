;; �Ѹ�Font������
(set-face-attribute 'default nil
                    :family "Ricty"
                    :height 140)

;; ���ܸ�Font������
(set-fontset-font
 nil 'japanese-jisx0208
 (font-spec :family "Ricty"))

;; �㤦�ե���Ȥ�Ȥ��ʤ鲣��Ĵ����ɬ��
'(setq face-font-rescale-alist
      '((".*Migu 1M.*" . 1.2)))
