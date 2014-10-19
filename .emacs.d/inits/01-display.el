;; �ơ��ޤ�Ȥ�
(require 'color-theme-solarized)
(load-theme 'solarized-dark t)

;; font-lock use-all
(global-font-lock-mode t)

;; �������뤬����Ԥ�Ĵɽ��
(defface hlline-face
  '((((class color)
      (background dark))
     (:background "dark slate gray"))
    (((class color)
      (background light))
     (:background  "#98FB98"))
    (t
     ()))
  "*Face used by hl-line.")
(setq hl-line-face 'hlline-face)
(global-hl-line-mode)

;; �꡼�����˿���Ĥ���
(setq transient-mark-mode t)

;; �����ȥ�С��˥ե�ѥ���ɽ��
(setq frame-title-format "%f")

;; ���ֹ��ɽ��
(require 'linum)
(global-linum-mode t)
(set-face-font 'mode-line "Migu 1M-12")
(setq linum-format "%3d")

;; ���̾�˽Ф��˥塼(yʸ��)��ä�
(menu-bar-mode -1)

;; ���̲��˽Ф륹������С���ä�
(scroll-bar-mode -1)

;; ���̾�˽Ф�ġ���С�(�����������)��ä�
(tool-bar-mode -1)

;; ��active window�ˤϥ��������ɽ�����ʤ�
(setq cursor-in-non-selected-windows nil)

;; ���򤷤��Ȥ������Ĥ��褦�ˤ���
(transient-mark-mode t)

;; ���֤����ѥ��ڡ�����ɽ������
(defface my-face-b-1 '((t (:background "gray15"))) nil)
(defface my-face-b-2 '((t (:background "gray26"))) nil)
(defface my-face-u-1 '((t (:foreground "SteelBlue" :underline t))) nil)
(defvar my-face-b-1 'my-face-b-1)
(defvar my-face-b-2 'my-face-b-2)
(defvar my-face-u-1 'my-face-u-1)
(defadvice font-lock-mode (before my-font-lock-mode ())
(font-lock-add-keywords
major-mode
'(("\t" 0 my-face-b-2 append)
("��" 0 my-face-b-1 append)
("[ \t]+$" 0 my-face-u-1 append)
)))
(ad-enable-advice 'font-lock-mode 'before 'my-font-lock-mode)
(ad-activate 'font-lock-mode)

;; ���ץ�å�����̤�Ф��ʤ�
(setq inhibit-startup-message t)
(buffer-menu)
