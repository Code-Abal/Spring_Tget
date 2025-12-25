@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

echo ============================================
echo Starting Database Migration for 'tigetting'
echo Target DB: Tget @ localhost:3306 (Docker)
echo User: ssafy
echo ============================================
echo.

REM SQL 파일 경로
set SCHEMA_FILE=src\main\resources\db\Tget_Schema_v2.sql
set DATA_FILE=src\main\resources\db\insert_all_data.sql
set UPDATE_DETAIL_FILE=src\main\resources\db\update_venues_detail.sql
set UPDATE_REGION_FILE=src\main\resources\db\update_venues_region.sql

REM Docker 컨테이너 이름
set CONTAINER_NAME=tget-db

REM 데이터베이스 정보
set DB_USER=ssafy
set DB_PASS=ssafy
set DB_NAME=Tget

REM Docker 컨테이너 실행 확인
docker ps --filter "name=%CONTAINER_NAME%" --format "{{.Names}}" | findstr /C:"%CONTAINER_NAME%" >nul
if %errorlevel% neq 0 (
    echo Error: Docker container '%CONTAINER_NAME%' is not running.
    echo Please start it with: docker-compose up -d
    exit /b 1
)

echo ✓ Docker container '%CONTAINER_NAME%' is running.
echo.

REM Schema Migration
if exist "%SCHEMA_FILE%" (
    echo [1/4] Executing Schema Migration: %SCHEMA_FILE%
    docker exec -i %CONTAINER_NAME% mysql -u%DB_USER% -p%DB_PASS% %DB_NAME% < "%SCHEMA_FILE%"
    if %errorlevel% equ 0 (
        echo ✓ Schema migration completed successfully.
    ) else (
        echo ✗ Error executing %SCHEMA_FILE%
        exit /b 1
    )
) else (
    echo Error: Schema file not found at %SCHEMA_FILE%
    exit /b 1
)

echo.

REM Data Migration
if exist "%DATA_FILE%" (
    echo [2/4] Executing Data Migration: %DATA_FILE%
    echo This may take a few minutes...
    docker exec -i %CONTAINER_NAME% mysql -u%DB_USER% -p%DB_PASS% %DB_NAME% < "%DATA_FILE%"
    if %errorlevel% equ 0 (
        echo ✓ Data migration completed successfully.
    ) else (
        echo ✗ Error executing %DATA_FILE%
        exit /b 1
    )
) else (
    echo Error: Data file not found at %DATA_FILE%
    exit /b 1
)

echo.

REM Update Venues Detail
if exist "%UPDATE_DETAIL_FILE%" (
    echo [3/4] Executing Update Venues Detail: %UPDATE_DETAIL_FILE%
    docker exec -i %CONTAINER_NAME% mysql -u%DB_USER% -p%DB_PASS% %DB_NAME% < "%UPDATE_DETAIL_FILE%"
    if %errorlevel% equ 0 (
        echo ✓ Update venues detail completed successfully.
    ) else (
        echo ✗ Error executing %UPDATE_DETAIL_FILE%
        exit /b 1
    )
) else (
    echo Warning: Update venues detail file not found at %UPDATE_DETAIL_FILE%
)

echo.

REM Update Venues Region
if exist "%UPDATE_REGION_FILE%" (
    echo [4/4] Executing Update Venues Region: %UPDATE_REGION_FILE%
    docker exec -i %CONTAINER_NAME% mysql -u%DB_USER% -p%DB_PASS% %DB_NAME% < "%UPDATE_REGION_FILE%"
    if %errorlevel% equ 0 (
        echo ✓ Update venues region completed successfully.
    ) else (
        echo ✗ Error executing %UPDATE_REGION_FILE%
        exit /b 1
    )
) else (
    echo Warning: Update venues region file not found at %UPDATE_REGION_FILE%
)

echo.
echo ============================================
echo ✅ 마이그레이션이 성공적으로 완료되었습니다!
echo ============================================
echo.
echo 데이터 확인:

REM 데이터 확인
docker exec -i %CONTAINER_NAME% mysql -u%DB_USER% -p%DB_PASS% %DB_NAME% -e "SELECT '장르:', COUNT(*) FROM genres UNION ALL SELECT '공연장:', COUNT(*) FROM venues UNION ALL SELECT '공연:', COUNT(*) FROM performances UNION ALL SELECT '공연 상세:', COUNT(*) FROM performance_details UNION ALL SELECT '스틸 이미지:', COUNT(*) FROM performance_steels;"

echo.
echo 마이그레이션이 완료되었습니다. 이제 백엔드 서버를 시작할 수 있습니다.
echo 서버 시작: gradlew.bat bootRun

endlocal

