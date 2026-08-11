---
layout: single
title: ""
permalink: /resume/
author_profile: true
sidebar:
  nav: "docs"
---

# 최 현 석 (Choi Hyeon-suk)

**Email:** hsuk0409@gmail.com

---

## Introduction

6년간 백엔드 개발자로서 복잡한 비즈니스 요구사항을 도메인 중심 설계와 확장 가능하고 유지보수하기 쉬운 아키텍처로 소프트웨어를 개발해왔습니다.
AI 에이전트를 개발 워크플로우에 적극 활용하되, 설계 명세서와 아키텍처 제약을 먼저 수립해 기술 부채를 통제하고 검증된 고품질 코드를 생산하는 방식으로 개발 생산성을 높이고 있습니다.
이렇게 확보한 여력은 APM/PMM 기반 실시간 모니터링, 동시성·보안 설계, 트래픽 대응 등 데브옵스 영역에 재투자해 서비스가 안정적으로 운영되도록 힘쓰고 있습니다.

---

## Featured Projects

### 1. 시니어 케어: 노인 낙상 관리 앱 (Android)

- **핵심 기술:** Kotlin, Accelerometer Sensor, Foreground Service, Broadcast Receiver, SMS Manager, Google Maps API
- **설명:** 고도화된 3단계 낙상 감지 알고리즘을 통한 자동 긴급 구조 서비스입니다.
- **상세 내용:**
  - **3단계 센서 데이터 검증:** 자유낙하(3.5 m/s² 이하) -> 충격(55.0 m/s² 이상) -> 정지(1.5초간 움직임 없음)의 3단계 로직을 통해 일상적인 움직임과 실제 낙상을 정밀하게 구분하여 오탐율을 최소화했습니다.
  - **무중단 보호 시스템:** Foreground Service와 Wake-Lock을 활용하여 화면이 꺼진 상태에서도 끊김 없는 모니터링을 보장하며, BootReceiver를 통해 기기 재부팅 시에도 실시간 감지 서비스가 자동 실행되도록 구현했습니다.
  - **자동 긴급 구조 워크플로우:** 낙상 감지 시 자동으로 화면을 점등하고 30초 카운트다운을 시작합니다. 사용자 응답이 없을 경우 GPS 기반 실시간 위치 정보와 Google Maps 링크가 포함된 SOS 문자를 보호자에게 자동 발송합니다.
- **GitHub:** [https://github.com/hsuk0409/Elderly-Fall-Guard](https://github.com/hsuk0409/Elderly-Fall-Guard)

### 2. 위치 기반 음성 메모 앱 (진행중)

- **핵심 기술:** React Native, NestJS, PostgreSQL, Docker, Webhook
- **설명:** 사용자 위치를 기반으로 음성 메모를 저장하고 관리하는 지능형 리마인더 서비스입니다.
- **상세 내용:**
  - 특정 장소에서 잊기 쉬운 할 일이나 기록을 음성으로 즉시 저장합니다.
  - 사용자가 해당 지점 반경 n미터 이내로 진입하면, 해당 위치와 관련된 모든 메모를 자동으로 한곳에 모아 사용자에게 인지시켜 줍니다.
  - 복잡한 일상 속에서 위치 기반 트리거를 통해 중요한 정보를 놓치지 않도록 돕는 것을 목표로 합니다.
- **GitHub:** [https://github.com/hsuk0409/voice-geo-memo](https://github.com/hsuk0409/voice-geo-memo)

---

## Work Experience

### **피에스에듀홀딩스** (2024.05 - 현재)

_서버 개발자 / 정규직_

- **HR 전자계약 시스템 아키텍처 설계 & 보안·동시성 고도화 (2025.12 - 진행중)**

  학원들의 근로계약 체결 과정에서 반복되는 서류 작업 부담과 법적 리스크를 해결하기 위한 전자계약 시스템.

  - **SSOT 통합 로그인 설계**: 기존 원생관리 시스템과 전자계약 시스템을 도메인 단위로 완전히 독립 배포하면서, 공통 데이터 스키마는 모노레포로 공유하는 구조 설계. 계정 정보를 별도로 복제·동기화하지 않고 원생관리 시스템의 마스터 데이터를 실시간으로 조회하는 SSOT 방식을 채택해, 신규 시스템임에도 기존 학원 계정을 그대로 통합 로그인으로 사용할 수 있게 하면서 두 시스템 간 계정 정보가 어긋날 가능성 자체를 구조적으로 해결.
  - **전자서명 보안 강화**: 계약서 상태가 바뀌는 시점에 레이스 컨디션으로 꼬이거나 민감정보가 노출될 위험에 대해 상태 변경 로직을 원자적으로 재설계하고 AES-256-GCM 암호화·OTP 인증·이중 읽기 모델을 도입해 위험 제거, 계속해서 실사용 검증을 통해 기능 확장 중.
  - **백오피스 신규 구축**: 사내 전용 관리 도구를 별도 애플리케이션으로 구축해 리스크 검증 규칙 관리, 계약·리스크 현황 대시보드 등의 기능 구현. JWT 인증·사내 IP 화이트리스트·계정 화이트리스트·전체 요청 감사 로그로 4중 접근 통제 설계.

- **인프라 아키텍처 개선과 DB 성능 최적화 (2025.11 - 2026.04)**

  서비스 확장에 따라 반복적으로 발생한 인프라 장애를 원인별로 진단하고 근본적으로 해결.

  - **DB 성능 최적화 및 모니터링 체계 구축**: 피크타임 커넥션 풀 고갈과 CPU 과부하(100% 이상) 장애를 New Relic APM + PMM 교차 연동으로 진단. 인덱스 설계·쿼리 튜닝으로 CPU 과부하를 안정화했고, 이후 New Relic에서 error 레벨 로그를 매일 필터링해 확인하며 에러율을 제로에 수렴하도록 지속 관리 중.
  - **미디어 스토리지 이전 및 CDN 보안 강화**: 서버 직접 업로드로 인한 디스크 포화와 DB 바이너리 적재 지연 문제를 클라우드 스토리지+CDN 전환(자동 리사이징·PDF 파이프라인)으로 해결. 전환 후 CDN 버킷 정책에서 익명 사용자의 목록조회·업로드·삭제가 가능한 취약점을 발견해 최소권한 정책으로 재설계.
  - **컨테이너 기반 CI/CD 파이프라인 구축**: 배포 시 환경 불일치와 운영 서버 직접 빌드로 인한 리소스 경합을 Docker 컨테이너화 + GitHub Actions/GHCR 빌드 격리로 해결. SSH 접근을 특정 IP로 제한하는 과정에서 고정 IP 방식이 유동 IP 환경(모바일 핫스팟 등)에서 무력화되는 한계를 발견, 공개키 기반 제로트러스트 VPN(Tailscale)으로 전환.

- **학원 관리 프로그램 개발 및 서버 구축 (2025.03 - 현재)**
  - **아키텍처 제약 기반의 에이전틱 워크플로우 수립**: AI 에이전트 도입에 따른 스파게티 코드 양산과 기술 부채 리스크를 설계 명세서(SIP)와 Port-Adapter 가이드라인 선행 수립으로 통제. 코드 검증·테스트·피드백 루프로 밀착 검증하며 개발 리드타임 단축과 아키텍처 정합성 동시 확보. 이후 여러 에이전트에 작업을 동시에 위임하는 방식으로 워크플로우를 확장하며 백그라운드 런타임 도구(Herdr)를 도입, 여러 에이전트의 CLI를 한 화면에서 관리하고 승인 대기 상태를 한눈에 파악해 즉시 대응. 화면이 꺼지거나 연결이 끊겨도 세션이 유지되어 장시간 작업도 끊김 없이 진행.
  - **결제 모듈(카드결제·올톡페이 링크결제) 연동 및 장애 대응**: 학원 원비 결제를 카드 단말결제와 올톡페이(알림톡 기반 링크결제) 두 경로로 지원. 콜백 유실 시 자동 복구하는 스케줄러가 앱을 통한 결제는 복구 대상에서 누락되는 구조적 결함을 발견해 별도 마커 기반 감지 로직으로 해결.

### **지오아이티** (2023.06 - 2024.02)

_서버 개발자 / 정규직_

- 웹소켓 기반 라이딩 앱 서버 개발(Node.js, Websocket, Cassandra). 동시성 이슈 해결 및 레거시 로직 리팩토링 경험.

### **더커머스** (2021.09 - 2023.05)

_서버 개발자 / 정규직_

- 결제 구독권 시스템 유지보수(Java, Spring Boot, MongoDB) 및 오픈마켓 OpenAPI 연동(롯데온, 카페24 등, Python/Flask/AWS Lambda) 개발.

### **빌리지피플** (2020.03 - 2021.08)

_서버 개발자 / 정규직_

- 포인트 자동화 스케줄러 개발(Spring Boot, JPA, Spring Quartz) 및 QueryDSL 도입을 통한 쿼리 개선.

---

## Technical Skills

- **Backend Languages & Frameworks:** Node.js (TypeScript/JavaScript), NestJS, Java, Spring Boot, Python, Flask, Go, PHP
- **Databases & Caching:** MariaDB, MySQL, PostgreSQL, MongoDB, Redis, Cassandra
- **Infrastructure & DevOps:** Docker, AWS (Lambda, API Gateway), Linux, GitHub Actions, GHCR, New Relic, PMM
- **Architecture & AI Engineering:**
  - Domain-Driven Design (DDD), Port-Adapter Architecture (Hexagonal Architecture), Monorepo Design, SSOT Pattern
  - Agentic Workflow Design, Strategic Context Management, Antigravity, Session Implementation Plan (SIP)

---

## Education

- **단국대학교** (2016.03 - 2019.02) - 운동처방재활학과 학사 졸업
- **경민대학교** (2012.03 - 2016.02) - 레저스포츠과 전문학사 졸업

---

## Awards & Certificates

- **정보처리기사** (2019.08) - 한국산업인력공단
- **2급 생활스포츠지도사(보디빌딩)** (2018.07) - 국민체육진흥공단

---

## Links

- [Tistory Blog](https://earstone.tistory.com/)
- [GitHub](https://github.com/hsuk0409)
