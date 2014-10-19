;; ���֥ǥ��쥯�ȥ��ɤ߹��ߴؿ�
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
              (expand-file-name (concat user-emacs-directory path))))
        (add-to-list 'load-path default-directory)
        (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
            (normal-top-level-add-subdirs-to-load-path))))))

;; ���֥ǥ��쥯�ȥ�˥ѥ����̤�
(add-to-load-path "elisp")
; (add-to-load-path "conf")
; (add-to-load-path "public_repos")
