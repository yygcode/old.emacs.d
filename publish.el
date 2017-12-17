;;; publish sites
;;
;; yanyg <yygcode@gmail.com>
;; Usage: emacs -batch -l "$EL"

(package-initialize)
(require 'org)
(require 'ox)
(require 'ox-publish)

(setq user-full-name "yanyg")
(setq user-mail-address "yygcode@gmail.com")
(setq org-export-with-sub-superscripts nil)
(setq org-export-with-timestamps nil)
(setq org-export-author "yanyg")
(setq org-export-with-creator nil)
(setq org-export-with-date nil)
(setq org-export-with-email t)
(setq org-export-with-toc t)
(setq org-export-with-section-numbers 't)
(setq org-html-preamble nil)
(setq org-html-postamble nil)
(setq org-html-link-home "https://ycode.org")
(setq-default make-backup-files nil)

(setq org-publish-project-alist
      '(("pages"
	     :base-directory "~/org/h/"
	     :publishing-directory "~/hp/"
	     :recursive nil
	     :with-author nil
	     :with-date nil
	     :with-email nil
	     :html-head-include-default-style nil
	     :html-head "<link rel=\"shortcut icon\" href=\"http://ycode.org/css/favicon.ico\" />
      <link rel=\"stylesheet\" type=\"text/css\" href=\"css/site.css\" />"
	     :publishing-function org-html-publish-to-html
	     ;; :auto-sitemap 't
	     ;; :sitemap-filename "sitemap.org"
	     ;; :sitemap-title "Sitemap"
	     :with-toc 't)))

(org-mode)
(org-publish-project "pages")
