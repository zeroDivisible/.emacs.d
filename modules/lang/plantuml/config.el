;;; lang/plantuml/config.el -*- lexical-binding: t; -*-

(def-package! plantuml-mode
  :mode "\\.p\\(?:lant\\)?uml$"
  :init
  (setq plantuml-jar-path (concat doom-etc-dir "plantuml.jar")
        org-plantuml-jar-path plantuml-jar-path)
  :config
  (set! :popup "^\\*PLANTUML" '((size . 0.4)) '((select) (transient . 0))))


(def-package! flycheck-plantuml
  :when (featurep! :feature syntax-checker)
  :after plantuml-mode
  :config (flycheck-plantuml-setup))
