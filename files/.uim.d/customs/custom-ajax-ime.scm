(define ajax-ime-show-segment-separator? #f)
(define ajax-ime-segment-separator "|")
(define ajax-ime-use-candidate-window? #t)
(define ajax-ime-candidate-op-count 1)
(define ajax-ime-nr-candidate-max 10)
(define ajax-ime-select-candidate-by-numeral-key? #f)
(define ajax-ime-widgets '(widget_ajax-ime_input_mode widget_ajax-ime_kana_input_method))
(define default-widget_ajax-ime_input_mode 'action_ajax-ime_direct)
(define ajax-ime-input-mode-actions '(action_ajax-ime_direct action_ajax-ime_hiragana action_ajax-ime_katakana action_ajax-ime_halfkana action_ajax-ime_halfwidth_alnum action_ajax-ime_fullwidth_alnum))
(define default-widget_ajax-ime_kana_input_method 'action_ajax-ime_roma)
(define ajax-ime-kana-input-method-actions '(action_ajax-ime_roma action_ajax-ime_kana action_ajax-ime_azik action_ajax-ime_act action_ajax-ime_kzik))