;;; zetteldeft-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "zetteldeft" "zetteldeft.el" (0 0 0 0))
;;; Generated autoloads from zetteldeft.el

(autoload 'zetteldeft-search-at-point "zetteldeft" "\
Search via `deft' with `thing-at-point' as filter.
Thing can be a double-bracketed link, a hashtag, or a word." t nil)

(autoload 'zetteldeft-search-current-id "zetteldeft" "\
Search deft with the id of the current file as filter.
Open if there is only one result." t nil)

(autoload 'zetteldeft-search-tag "zetteldeft" "\
Prompt interactively for Zetteldeft tag and launch Deft search" t nil)

(autoload 'zetteldeft-find-file "zetteldeft" "\
Open deft file FILE.

\(fn FILE)" t nil)

(autoload 'zetteldeft-find-file-id-insert "zetteldeft" "\
Find deft file FILE and insert a link.

\(fn FILE)" t nil)

(autoload 'zetteldeft-backlink-add "zetteldeft" "\
Find deft file FILE and insert a backlink to it.
Finds the title line, and adds `backlink-prefix' with
ID and title on a new line.

\(fn FILE)" t nil)

(autoload 'zetteldeft-find-file-full-title-insert "zetteldeft" "\
Find deft file FILE and insert a link with title.

\(fn FILE)" t nil)

(autoload 'zetteldeft-new-file "zetteldeft" "\
Create a new deft file.

The filename is a Zetteldeft ID, appended by STR. The ID will be
generated, unless ID is provided. A file title will be inserted in the
newly created file wrapped in `zetteldeft-title-prefix' and
`zetteldeft-title-suffix'. When `zetteldeft-new-filename-to-kill-ring'
is non-nil, the filename (without extension) is added to the kill
ring. When `evil' is loaded, change to insert state.

\(fn STR &optional ID)" t nil)

(autoload 'zetteldeft-new-file-and-link "zetteldeft" "\
Create a new note and insert a link to it.
Similar to `zetteldeft-new-file', but insert a link to the new file.

\(fn STR)" t nil)

(autoload 'zetteldeft-new-file-and-backlink "zetteldeft" "\
Create a new note and insert link and backlink.

\(fn STR)" t nil)

(autoload 'zetteldeft-follow-link "zetteldeft" "\
Follows zetteldeft link to a file if point is on a link.
Prompts for a link to follow with `zetteldeft-avy-file-search' if it isn't." t nil)

(autoload 'zetteldeft-browse "zetteldeft" "\
Browse your notes with avy.
Keep calling `zetteldeft-avy-file-search' in a loop." t nil)

(autoload 'zetteldeft-avy-tag-search "zetteldeft" "\
Call on avy to jump to a tag.
Tags are filtered with `zetteldeft-tag-regex'." t nil)

(autoload 'zetteldeft-avy-file-search "zetteldeft" "\
Use `avy' to follow a zetteldeft link.
Links are found via `zetteldeft-link-indicator' and `zetteldeft-id-regex'.
Open that file (in another window if OTHERWINDOW).

\(fn &optional OTHERWINDOW)" t nil)

(autoload 'zetteldeft-avy-file-search-ace-window "zetteldeft" "\
Use `avy' to follow a zetteldeft link in another window.
Similar to `zetteldeft-avy-file-search', but with window selection.
When only one window is active, split it first.
When more windows are active, select one via `ace-window'." t nil)

(autoload 'zetteldeft-avy-link-search "zetteldeft" "\
Use `avy' to perform a deft search on a zetteldeft link.
Similar to `zetteldeft-avy-file-search' but performs a full
text search for the link ID instead of filenames only.
Opens immediately if there is only one result." t nil)

(autoload 'zetteldeft-deft-new-search "zetteldeft" "\
Launch deft, clear filter and enter insert state." t nil)

(autoload 'zetteldeft-file-rename "zetteldeft" "\
Change current file's title, and use the new title to rename the file.
Use this on files in the `deft-directory'.
When the file has no Zetteldeft ID, one is generated and included in the new name." t nil)

(autoload 'zetteldeft-count-words "zetteldeft" "\
Prints total number of words and notes in the minibuffer." t nil)

(autoload 'zetteldeft-copy-id-current-file "zetteldeft" "\
Copy current ID.
Add the id from the filename the buffer is currently visiting to the
kill ring." t nil)

(autoload 'zetteldeft-tag-insert-at-point "zetteldeft" "\
Insert TAG at point. Interactively, select an existing tag or provide new one.

\(fn TAG)" t nil)

(autoload 'zetteldeft-tag-insert "zetteldeft" "\
Select existing tag or enter new one to insert in current Zetteldeft note.

The tag is appended to the first line starting with `zetteldeft-tag-line-prefix'.
If this variable is nil, or tag line is not found, insert tag at point." t nil)

(autoload 'zetteldeft-tag-buffer "zetteldeft" "\
Switch to the `zetteldeft-tag-buffer' and list tags." t nil)

(autoload 'zetteldeft-insert-list-links "zetteldeft" "\
Search for ZDSRCH and insert a list of zetteldeft links to all results.

\(fn ZDSRCH)" t nil)

(autoload 'zetteldeft-insert-list-links-missing "zetteldeft" "\
Insert a list of links to all deft files with a search string ZDSRCH.
In contrast to `zetteldeft-insert-list-links' only include links not
yet present in the current file. Can only be called from a file in the
zetteldeft directory.

\(fn ZDSRCH)" t nil)

(autoload 'zetteldeft-org-search-include "zetteldeft" "\
Insert `org-mode' syntax to include all files containing ZDSRCH.
Prompt for search string when called interactively.

\(fn ZDSRCH)" t nil)

(autoload 'zetteldeft-org-search-insert "zetteldeft" "\
Insert the contents of all files containing ZDSRCH.
Files are separated by `org-mode' headers with corresponding titles.
Prompt for search string when called interactively.

\(fn ZDSRCH)" t nil)

(autoload 'zetteldeft-org-graph-search "zetteldeft" "\
Insert org source block for graph with zd search results.
STR should be the search the resulting notes of which should be included in the graph.

\(fn STR)" t nil)

(autoload 'zetteldeft-org-graph-note "zetteldeft" "\
Create a graph starting from note DEFTFILE.

\(fn DEFTFILE)" t nil)

(autoload 'zetteldeft-set-classic-keybindings "zetteldeft" "\
Sets global keybindings for `zetteldeft'." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "zetteldeft" '("zetteldeft-")))

;;;***

;;;### (autoloads nil nil ("zetteldeft-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; zetteldeft-autoloads.el ends here
