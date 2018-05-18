(defconst MISTKAFKA-GITMOJIS '(
                              ":art: - Improving structure / format of the code."
                              ":zap: - Improving performance."
                              ":fire: - Removing code or files."
                              ":bug: - Fixing a bug."
                              ":ambulance: - Critical hotfix."
                              ":sparkles: - Introducing new features."
                              ":memo: - Writing docs."
                              ":rocket: - Deploying stuff."
                              ":lipstick: - Updating the UI and style files."
                              ":tada: - Initial commit."
                              ":white_check_mark: - Adding tests."
                              ":lock: - Fixing security issues."
                              ":apple: - Fixing something on macOS."
                              ":penguin: - Fixing something on Linux."
                              ":checkered_flag: - Fixing something on Windows."
                              ":bookmark: - Releasing / Version tags."
                              ":rotating_light: - Removing linter warnings."
                              ":construction: - Work in progress."
                              ":green_heart: - Fixing CI Build."
                              ":arrow_down: - Downgrading dependencies."
                              ":arrow_up: - Upgrading dependencies."
                              ":construction_worker: - Adding CI build system."
                              ":chart_with_upwards_trend: - Adding analytics or tracking code."
                              ":hammer: - Refactoring code."
                              ":heavy_minus_sign: - Removing a dependency."
                              ":whale: - Work about Docker."
                              ":heavy_plus_sign: - Adding a dependency."
                              ":wrench: - Changing configuration files."
                              ":globe_with_meridians: - Internationalization and localization."
                              ":pencil2: - Fixing typos."
                              ":hankey: - Writing bad code that needs to be improved."
                              ":rewind: - Reverting changes."
                              ":twisted_rightwards_arrows: - Merging branches."
                              ":package: - Updating compiled files or packages."
                              ":alien: - Updating code due to external API changes."
                              ":truck: - Moving or renaming files."
                              ":page_facing_up: - Adding or updating license."
                              ":boom: - Introducing breaking changes."
                              ":bento: - Adding or updating assets."
                              ":ok_hand: - Updating code due to code review changes."
                              ":wheelchair: - Improving accessibility."
                              ":bulb: - Documenting source code."
                              ":beers: - Writing code drunkenly."
                              ":speech_balloon: - Updating text and literals."
                              ))
;; 邮箱：设置smtp
(setq
 send-mail-function 'smtpmail-send-it
 message-send-mail-function 'smtpmail-send-it
 user-mail-address "zhenguolin@me.com"
 user-full-name "MistKafka"
 smtpmail-starttls-credentials '(("smtp.mail.me.com" 587 nil nil))
 smtpmail-auth-credentials  (expand-file-name "~/.authinfo.gpg")
 smtpmail-default-smtp-server "smtp.mail.me.com"
 smtpmail-smtp-server "smtp.mail.me.com"
 smtpmail-smtp-service 587
 smtpmail-debug-info t
 starttls-extra-arguments nil
 starttls-gnutls-program (executable-find "gnutls-cli")
 smtpmail-warn-about-unknown-extensions t
 starttls-use-gnutls t)

(provide 'misc-config)
