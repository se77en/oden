#lang racket

(struct source-pkg (decl imports definitions) #:transparent)

(define (pkg-decl-expr? expr)
  (match expr
    [`(pkg ,_) #t]
    [_ #f]))

(define (import-expr? expr)
  (match expr
    [`(import ,_) #t]
    [_ #f]))

(define (definition-expr? expr)
  (match expr
    [`(define ,_ ,_) #t]
    [_ #f]))

(define (source-pkg-name pkg)
  (cadr (source-pkg-decl pkg)))

(provide (all-defined-out))