## 1.1.0

* Add `safe_list_sanitizer` and deprecate `white_list_sanitizer` to be removed
  in 1.2.0. https://github.com/rails/rails-html-sanitizer/pull/87

  *Juanito Fatas*

* Remove `href` from LinkScrubber's `tags` as it's not an element.
  https://github.com/rails/rails-html-sanitizer/pull/92

  *Juanito Fatas*

* Explain that we don't need to bump Loofah here if there's CVEs.
  https://github.com/rails/rails-html-sanitizer/commit/d4d823c617fdd0064956047f7fbf23fff305a69b

  *Kasper Timm Hansen*

## 1.0.1

* Added support for Rails 4.2.0.beta2 and above

## 1.0.0

* First release.