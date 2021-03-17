;;; lsp-prisma.el --- Prisma server configuration    -*- lexical-binding: t; -*-

;; Copyright (C) 2021  Arandi Lopez

;; Author: Arandi Lopez <arandilopez.93@gmail.com>
;; Keywords: prisma
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;;; Code:

(require 'lsp-mode)

(defgroup lsp-prisma nil
  "LSP support for prisma files, using the prisma language server"
  :group 'lsp-mode
  :link '(uri-link "https://www.npmjs.com/package/@prisma/language-server")
  :package-version '(lsp-mode . "6.1"))

;; Prisma
(lsp-register-client
 (make-lsp-client
  :new-connection (lsp-stdio-connection
                   '("prisma-language-server" "--stdio"))
  :priority -1
  :server-id 'prisma-ls))

(provide 'lsp-prisma)
;;; lsp-prisma.el ends here
