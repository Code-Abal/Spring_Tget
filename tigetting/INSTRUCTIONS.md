# 티켓팅 프로젝트(Tiget) 실행 가이드

## 1. 사전 준비물 (Prerequisites)

- **Java 21** (JDK 21)
- **Docker & Docker Compose** (DB 실행용)
- **Node.js** (프론트엔드 실행용)

---


## 2. 데이터베이스 실행 (MySQL + Redis)

이 프로젝트는 Docker를 사용하여 DB를 실행합니다. 복잡한 설치 없이 아래 명령어만 입력하세요.

1. **DB 실행하기** (프로젝트 루트 폴더에서)

    ```cmd
    docker-compose up -d
    ```

2. **초기 데이터 넣기** (최초 1회만 필요)
    DB가 실행된 후, 약 10초 정도 기다렸다가 아래 명령어를 실행하세요.

    **Windows (PowerShell):**
    ```powershell
    .\execute_migration_docker.bat
    ```

    **Windows (CMD):**
    ```cmd
    execute_migration_docker.bat
    ```

    **Linux/Mac (Terminal 또는 Git Bash):**
    ```bash
    bash execute_migration.sh
    ```

    ⏱️ **소요 시간:** 약 1~2분 (데이터 삽입 중...)
    
    ✅ **완료 메시지:**
    ```
    ✅ 마이그레이션이 성공적으로 완료되었습니다!
    
    데이터 확인:
    - 장르: 4개
    - 공연장: 781개
    - 공연: 1,776개
    - 공연 상세: 1,776개
    - 스틸 이미지: 2,441개
    ```

    > 💡 **중요:** Windows에서는 `cat` 명령어 대신 반드시 배치 파일을 사용하세요!
    > `cat` 명령어는 한글 인코딩 문제로 오류가 발생합니다.

---

## 3. 백엔드 서버 실행 (Spring Boot)

터미널을 열고 다음 명령어를 실행합니다.

**Windows (PowerShell 또는 CMD):**
```cmd
cd tigetting
gradlew.bat bootRun
```

**Linux/Mac:**
```bash
cd tigetting
./gradlew bootRun
```

✅ **서버 실행 확인:**
- 서버 주소: `http://localhost:8081`
- Swagger API 문서: `http://localhost:8081/swagger-ui/index.html`

> 💡 **참고:** 포트 8081에서 실행됩니다 (application.yaml 설정)

---

## 4. 프론트엔드 실행 (Vue.js) - 선택사항

> ⚠️ **주의:** 현재 프로젝트에는 프론트엔드 폴더가 포함되어 있지 않습니다.
> 백엔드 API만 사용하려면 이 단계를 건너뛰세요.

프론트엔드가 별도로 제공되는 경우:

```bash
cd tget-front
npm install    # 최초 1회만
npm run dev
```

접속 주소: `http://localhost:5173`

---

## 5. 계정 정보 (테스트용)

| 구분 | 아이디 (Email) | 비밀번호 |
| :--- | :--- | :--- |
| **관리자** | `admin@ssafy.com` | `admin1234!` |
| **일반유저** | `user@ssafy.com` | `user1234!` |

> 💡 **참고:** 계정은 회원가입을 통해 직접 생성할 수도 있습니다.

---

## 6. 자주 묻는 질문 (FAQ)

**Q. PowerShell에서 "용어가 cmdlet, 함수... 인식되지 않습니다" 오류가 나요!**  
A. PowerShell에서 배치 파일을 실행할 때는 반드시 `.\` 접두사를 사용해야 합니다:
```powershell
.\execute_migration_docker.bat
```
CMD에서는 접두사 없이 `execute_migration_docker.bat`만 입력하면 됩니다.

**Q. DB 연결 에러가 계속 나요!**  
A. `docker ps` 명령어로 `tget-db` 컨테이너가 켜져 있는지 확인하세요. 만약 꺼져있다면 `docker-compose up -d`를 다시 실행해주세요.

**Q. 한글이 깨져서 "?????" 같은 오류가 나요!**  
A. **절대로 `cat` 명령어를 직접 사용하지 마세요!** Windows에서는 반드시 `execute_migration_docker.bat` 파일을 사용하세요. 이 스크립트는 UTF-8 인코딩을 자동으로 처리합니다.

**Q. "ERROR 3730: Cannot drop table" 오류가 나요!**  
A. 기존 테이블 때문에 발생하는 문제입니다. 다음 명령으로 DB를 완전히 초기화하세요:
```bash
docker exec -i tget-db mysql -ussafy -pssafy -e "DROP DATABASE IF EXISTS Tget; CREATE DATABASE Tget CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"
```
그 다음 `execute_migration_docker.bat`를 다시 실행하세요.

**Q. Redis 연결 에러가 나요!**  
A. Redis 컨테이너를 시작하세요:
```bash
docker-compose up -d tget-redis
```

**Q. Gradle 빌드가 실패해요!**  
A. Java 21이 설치되어 있는지 확인하세요:
```bash
java -version
```
Java 21이 설치되어 있지 않다면 [Oracle JDK](https://www.oracle.com/java/technologies/downloads/#java21) 또는 [OpenJDK](https://adoptium.net/)에서 다운로드하세요.

---

## 7. 추가 정보

### 데이터 확인
마이그레이션 후 데이터가 제대로 들어갔는지 확인:
```bash
docker exec -it tget-db mysql -ussafy -pssafy Tget -e "SELECT genreid, genrenm FROM genres; SELECT COUNT(*) FROM performances;"
```

### 컨테이너 중지
모든 작업을 마친 후:
```bash
docker-compose down
```

### 컨테이너 및 데이터 완전 삭제
```bash
docker-compose down -v
```

---

## 8. 관련 문서

- `tigetting/QUICK_START.md` - 빠른 시작 가이드
- `tigetting/DB_MIGRATION_GUIDE.md` - 데이터베이스 마이그레이션 상세 가이드
- `tigetting/API_회원정보수정.md` - 회원 정보 수정 API 문서

---

**프로젝트 실행을 완료했습니다! 🎉**

