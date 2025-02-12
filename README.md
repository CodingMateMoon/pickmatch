# pickmatch - 축구 팀 관리 및 경기 매칭 사이트
- 상세 소개 문서(github pickmatch root 경로에서 소개 문서 다운 가능): https://kpuackr-my.sharepoint.com/:w:/g/personal/janghyun10_tukorea_ac_kr/EW5TJ9L2f-xFhDiSnWPNvFkBniobo_CgSXzUHp9HR9PhcQ?e=XhgTxV

# 개요
* 프로젝트명 : pickmatch (축구 팀 관리 및 경기 매칭 사이트)
* 수행기간 : 2019.3.29 ~ 2019.4.17
* 목적 : 축구를 좋아하는 사람들끼리 팀을 이루고 전적을 관리하며 다른 팀들과 매치 신청을 통해 다양한 경기를 할 수 있는 프로그램을 만드는 것을 목적으로 개발했습니다.

# 개발목표
 1. 축구 팀 관리
 - 선수 및 용병 관리
 - 전적 관리
 - 회비 관리
 2. 경기 매칭
 - 매치 등록 및 신청, 매치 성사
 3. 팀, 용병 랭킹
 4. 공지사항, 자유게시판
 5. 알림 (팀 가입 신청, 수락, 거절, 매치 신청 및 성사, 거절 등)
 6. 팀 및 회원 관리 등 관리자 페이지
 
# 개발 환경
- Java, Oracle, Apache Tomcat, SMTP, AJAX, Spring Tool Suite

# DB설계
<img alt="erd" src="https://github.com/CodingMateMoon/pickmatch/blob/master/pickmatch/src/main/webapp/resources/images/readme/DB%EC%84%A4%EA%B3%84.png">

# 담당 역할
1. 알림
- 매치 등록, 매치 성사, 매치 실패 등
- 팀 가입 신청, 취소, 거절, 승인 등
2. 매치 등록
- 카카오 API 활용 구장 등록
3. 공지사항
- 페이징 처리, 다중 파일 업로드
 
# 참여소감
매치 등록, 신청, 성사, 가입 신청 등 여러 이벤트들이 발생했을 때 알림 기능을 적용하기 위해 Spring에서 제공하는 AOP를 활용하면서 그에 관해 깊게 공부할 수 있었습니다. 알림 기능을 구현하면서 어느 메소드들을 Joinpoint로 두고 Pointcut으로 지정하여 Advice를 적용할 지, 매치, 팀 이름, 아이디 등 Joinpoint의 인자값을 불러와서 활용하는 방법 등 aop 관련 여러 기능들을 익힐 수 있었습니다. 또한 매치 등록 기능을 구현하면서 카카오 REST API키를 발급받아 지도 API 활용 방법을 익힐 수 있었고 공지사항을 구현하면서 파일입출력 및 mybatis를 활용한 쿼리 등을 다양하게 다루는 시간을 가질 수 있었습니다. 팀원들과 주말에도 모여 프로젝트를 진행하며 함께 많은 것을 배울 수 있었고 유익한 시간이었습니다.
