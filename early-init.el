;;; early-init.el --- Doom's universal bootstrapper -*- lexical-binding: t -*-
;;; Commentary:
;;
;; This file, in summary:
;; - Determines where `user-emacs-directory' is by:
;;   - Processing `--init-directory DIR' (backported from Emacs 29),
;;   - Processing `--profile NAME' (see
;;     `https://docs.doomemacs.org/-/developers' or docs/developers.org),
;;   - Or assume that it's the directory this file lives in.
;; - Loads Doom as efficiently as possible, with only the essential startup
;;   optimizations, and prepares it for interactive or non-interactive sessions.
;; - If Doom isn't present, then we assume that Doom is being used as a
;;   bootloader and the user wants to load a non-Doom config, so we undo all our
;;   global side-effects, load `user-emacs-directory'/early-init.el, and carry
;;   on as normal (without Doom).
;; - Do all this without breaking compatibility with Chemacs.
;;
;; early-init.el was introduced in Emacs 27.1. It is loaded before init.el,
;; before Emacs initializes its UI or package.el, and before site files are
;; loaded. This is great place for startup optimizing, because only here can you
;; *prevent* things from loading, rather than turn them off after-the-fact.
;;
;; Doom uses this file as its "universal bootstrapper" for both interactive and
;; non-interactive sessions. That means: no matter what environment you want
;; Doom in, load this file first.
;;
;;; Code:

;; PERF: Garbage collection is a big contributor to startup times. This fends it
;;   off, but will be reset later by `gcmh-mode' (or in doom-cli.el, if in a
;;   noninteractive session). Not resetting it later causes stuttering/freezes.
(setq gc-cons-threshold most-positive-fixnum)

;; PERF: Don't use precious startup time checking mtime on elisp bytecode.
;;   Ensuring correctness is 'doom sync's job, not the interactive session's.
;;   Still, stale byte-code will cause *heavy* losses in startup efficiency, but
;;   performance is unimportant when Emacs is in an error state.
(setq load-prefer-newer noninteractive)

;; UX: Respect DEBUG envvar as an alternative to --debug-init, and to make
;;   startup sufficiently verbose from this point on.
(when (getenv-internal "DEBUG")
  (setq init-file-debug t
        debug-on-error t))

(setq package-enable-at-startup nil)
