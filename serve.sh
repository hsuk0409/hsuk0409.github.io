#!/bin/bash
# 이 스크립트는 Homebrew로 설치한 Ruby 3.3 환경에서 Jekyll 로컬 서버를 기동합니다.
echo "Starting Jekyll local server using Ruby 3.3..."
/opt/homebrew/opt/ruby@3.3/bin/bundle exec jekyll serve
