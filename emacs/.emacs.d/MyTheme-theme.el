(deftheme MyTheme
  "Created 2019-03-25.")

(custom-theme-set-variables
 'MyTheme
 '(inhibit-startup-screen t)
 '(org-agenda-files (quote ("~/Documents/Notes/Complex Variables.org")))
 '(org-latex-packages-alist (quote (("" "cancel" t))))
 '(package-selected-packages (quote (org auctex))))

(provide-theme 'MyTheme)
