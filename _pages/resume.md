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

- **도메인 중심 설계(DDD) & Port-Adapter 아키텍처**: 6년간의 백엔드 개발 경험을 바탕으로 복잡한 비즈니스 요구사항을 도메인 중심 설계(DDD)와 Port-Adapter 아키텍처를 통해 확장 가능하고 유지보수하기 쉬운 소프트웨어로 구현합니다.
- **실시간 모니터링 & 동시성·보안 제어**: APM/PMM 기반 실시간 메트릭 분석을 통한 성능 최적화, TOCTOU 레이스 방지를 위한 원자적 상태 변경 제어, OTP/GCM 기반 다층 보안 체계를 직접 판단하고 구축합니다.
- **아키텍처 제약 기반 에이전틱 워크플로우**: AI 에이전트를 개발 워크플로우에 적극 활용하되, 개발 전 설계 명세서(Session Implementation Plan) 및 포트-어댑터 제약 가이드라인을 선행 수립하여 기술 부채와 스파게티 코드 양산을 통제하고 검증된 고품질 코드를 생산합니다.

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

- **HR 전자계약 시스템 아키텍처 설계 & 동시성·보안 고도화 (2025.12 - 진행중)**
  - **시스템 분리와 데이터 정합성**: 원생관리 시스템과 신규 전자계약(HR) 시스템을 분리하면서 발생할 수 있는 배포 충돌과 직원 데이터 동기화 지연 문제를 해결하고자, 포트·도메인은 분리하되 공통 스키마는 공유하는 모노레포 구조를 설계하고, 직원 마스터 데이터는 별도 동기화 배치나 복제본 없이 필요할 때마다 원본 시스템을 실시간으로 조회하는 방식을 선택. 동기화 지연으로 인한 데이터 불일치 가능성을 구조적으로 제거.
  - **서명 동시성 및 보안 강화**: 계약서 서명 등 상태 전이 처리 시 동시 요청으로 인한 레이스 컨디션 위험과 계약서 내 민감정보(개인정보·재무정보) 유출 리스크를 해결하고자, TOCTOU 없는 원자적 상태 변경 로직과 AES-256-GCM 암호화·OTP 인증·이중 읽기 모델(법적 보존 의무와 프라이버시 노출 분리)을 적용. 현재도 계약서 작성·서명 플로우를 실사용 검증하며 기능을 지속 확장·운영 중.
- **인프라 아키텍처 개선과 DB 성능 최적화 (2025.11 - 2026.04)**
  - **DB 성능 최적화와 모니터링 환경 구축**: 피크 타임에 발생하는 커넥션 풀 고갈과 CPU 과부하(100% 이상) 장애를 해결하고자 New Relic APM과 오픈소스 모니터링 도구(PMM) 교차 연동. 실시간 지표 분석을 바탕으로 복합 인덱스 설계 최적화와 쿼리 튜닝을 통해 CPU 과부하를 안정적인 수준으로 낮추고 피크타임 커넥션 타임아웃 장애를 0건으로 통제.
  - **미디어 자산 스토리지 이전과 CDN 최적화**: 서버에 직접 업로드로 인한 디스크 포화 문제와 DB 내 바이너리(BLOB) 적재로 발생하던 통신 지연을 개선하고자 클라우드 스토리지와 CDN 도입. 저장 경로를 환경·도메인·날짜별로 체계화하고 이미지 자동 리사이징, PDF 지원 파이프라인을 구축하여 문서 서빙 속도와 사용자 경험을 개선. 이후 CDN 버킷 정책에서 익명 사용자의 목록 조회·업로드·삭제가 가능한 취약점을 발견해 최소권한 정책으로 재설계하며 지속적으로 보안을 관리.
  - **컨테이너 기반 CI/CD 배포 파이프라인 자동화**: 배포 시 발생하는 환경 불일치 오류와 운영 서버 직접 빌드로 인한 리소스 경합 장애를 해결하고자 Docker 기반 컨테이너화 적용. GitHub Actions와 GHCR을 활용해 빌드 프로세스를 외부로 격리하고 Slack 웹훅 연동으로 배포 상황을 실시간 공유. 이후 운영 서버 SSH를 특정 IP로 제한하면서 GitHub-hosted 러너의 유동 IP와 배포가 충돌하자, 셀프호스트 러너로 전환해 외부 노출 없이 보안 정책과 배포 자동화를 양립시키며 지속 관리.
- **학원 관리 프로그램 개발 및 서버 구축 (2025.03 - 현재)**
  - **아키텍처 제약 기반의 에이전틱 워크플로우(Agentic Workflow) 수립**: AI 에이전트 도입에 따른 스파게티 코드 양산과 기술 부채 리스크를 통제하고자, 개발 전 설계 명세서(Session Implementation Plan)와 Port-Adapter 패턴 가이드라인을 선행 수립. 에이전트 산출물을 코드 검증·테스트·피드백 루프로 밀착 검증하며 개발 리드타임 단축과 아키텍처 정합성을 동시에 확보. 이 과정에서 서비스 도메인과 시스템 아키텍처를 깊이 고찰하며 설계 역량을 함께 내재화.

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
