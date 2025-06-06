(define skk-on-key '("<IgnoreCase><Control>j" "zenkaku-hankaku" "<Super> " "<Control> "))
(define skk-on-key? (make-key-predicate '("<IgnoreCase><Control>j" "zenkaku-hankaku" "<Super> " "<Control> ")))
(define skk-latin-key '("<IgnoreCase>l" "zenkaku-hankaku" "<Super> " "<Control> "))
(define skk-latin-key? (make-key-predicate '("<IgnoreCase>l" "zenkaku-hankaku" "<Super> " "<Control> ")))
(define skk-wide-latin-key '("<IgnoreCase><Shift>l"))
(define skk-wide-latin-key? (make-key-predicate '("<IgnoreCase><Shift>l")))
(define skk-kcode-input-key '("yen"))
(define skk-kcode-input-key? (make-key-predicate '("yen")))
(define skk-kanji-mode-key '("<IgnoreCase><Shift>q"))
(define skk-kanji-mode-key? (make-key-predicate '("<IgnoreCase><Shift>q")))
(define skk-hankaku-kana-key '("<IgnoreCase><Control>q"))
(define skk-hankaku-kana-key? (make-key-predicate '("<IgnoreCase><Control>q")))
(define skk-kana-toggle-key '("<IgnoreCase>q"))
(define skk-kana-toggle-key? (make-key-predicate '("<IgnoreCase>q")))
(define skk-begin-conv-key '(generic-begin-conv-key))
(define skk-begin-conv-key? (make-key-predicate '(generic-begin-conv-key?)))
(define skk-commit-key '("<IgnoreCase><Control>j"))
(define skk-commit-key? (make-key-predicate '("<IgnoreCase><Control>j")))
(define skk-cancel-key '(generic-cancel-key))
(define skk-cancel-key? (make-key-predicate '(generic-cancel-key?)))
(define skk-sticky-key '())
(define skk-sticky-key? (make-key-predicate '()))
