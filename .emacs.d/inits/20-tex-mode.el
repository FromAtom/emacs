;; YaTeX���ɹ�������
(setq auto-mode-alist
      (cons (cons "\\.tex$" 'yatex-mode) auto-mode-alist))
(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)
(add-hook 'yatex-mode-hook '(lambda ()(setq auto-fill-function nil)))
(setq load-path (cons "~/src/emacs/yatex" load-path))

(setq tex-command "platex -kanji=utf8")
(setq bibtex-command "pbibtex -kanji=utf8")
(setq dvi2-command "open -a Preview.app")
(setq YaTeX-kanji-code nil)

(setq YaTeX-dvi2-command-ext-alist
  '(("xdvi\\|dvipdfmx" . ".dvi")
    ("ghostview\\|gv" . ".ps")
    ("acroread\\|pdf\\|Preview\\|TeXShop" . ".pdf")))

;; �Хåե����Τζ������������򥳥�ޤȥԥꥪ�ɤ��Ѵ�
(defun replace-commaperiod-buffer ()
  (interactive "r")
  (save-excursion
    (replace-string "��" "��" nil (point-min) (point-max))
    (replace-string "��" "��" nil (point-min) (point-max))))

;; �����ϰ�������ѱѿ�����Ⱦ�ѱѿ������Ѵ�
(defun hankaku-eisuu-region (start end)
  (interactive "r")
  (while (string-match
          "[��-����-�ڣ�-��]+"
          (buffer-substring start end))
    (save-excursion
      (japanese-hankaku-region
       (+ start (match-beginning 0))
       (+ start (match-end 0))
       ))))

;; �Хåե����Τ����ѱѿ�����Ⱦ�ѱѿ������Ѵ�
(defun hankaku-eisuu-buffer ()
  (interactive)
  (hankaku-eisuu-region (point-min) (point-max)))

;; YaTeX�⡼�ɤλ��ˤΤ�ư������Ѥ˾��ʬ��
(defun replace-commaperiod-before-save-if-needed ()
  (when (memq major-mode
              '(yatex-mode))
    (replace-commaperiod-buffer)(hankaku-eisuu-buffer)(ispell)))

(add-hook 'before-save-hook 'replace-commaperiod-before-save-if-needed)

;; ���ڥ�����å������餻��
(mapc
 (lambda (hook)(add-hook hook '(lambda () (flyspell-mode 1))))
 '(yatex-mode-hook))
