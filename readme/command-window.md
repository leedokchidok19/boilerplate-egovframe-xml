# 윈도우(Window)
* 명령어

### 톰캣(Tomcat)
* 톰캣 실행 시 중복 포트 문제 발생하는 경우
    + Windows key + R 키를 눌러 실행창에 cmd를 입력한 후   
        Ctrl + Shift + Enter키 입력   
        cmd 관리자 권한으로 실행
> 입력한 포트 번호의 pid 검색   
    netstat -ano | find "포트번호"   
    프로세스 킬 명령어   
    taskkill /f /pid 프로세스 번호