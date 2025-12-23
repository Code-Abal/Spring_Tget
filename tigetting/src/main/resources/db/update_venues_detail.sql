USE Tget;

-- ================================================
-- venue_details 테이블 상세 정보 INSERT
-- 생성일: 2025-01-23
-- 데이터: 공연장 상세 정보 (주소, 전화번호, 좌석 규모)
-- la, lo 컬럼 제거됨
-- venues 테이블에 존재하는 mt10id만 포함
-- ================================================

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004603', '서울특별시 종로구 창경궁로33길 15 (명륜2가)', NULL, '20')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 창경궁로33길 15 (명륜2가)',
    telno = NULL,
    seatscale = '20';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000405', '충청북도 충주시 중앙로 128 (성내동)', '043-850-3914', '889')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 충주시 중앙로 128 (성내동)',
    telno = '043-850-3914',
    seatscale = '889';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002358', '서울특별시 마포구 독막로6길 15 (합정동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 독막로6길 15 (합정동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004544', '서울특별시 성동구 아차산로13길 2 (성수동2가)', '02-6397-0171', '60')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 성동구 아차산로13길 2 (성수동2가)',
    telno = '02-6397-0171',
    seatscale = '60';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003398', '제주특별자치도 제주시 월평9길 2-19 (월평동)', '064-753-8996', '120')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 월평9길 2-19 (월평동)',
    telno = '064-753-8996',
    seatscale = '120';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002094', '경기도 가평군 가평읍 자라섬로 60 (달전리)', '031-580-4632', '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 가평군 가평읍 자라섬로 60 (달전리)',
    telno = '031-580-4632',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003359', '경기도 양주시 광적면 광적로 235-48', '070-7780-8009', '100')
ON DUPLICATE KEY UPDATE
    adres = '경기도 양주시 광적면 광적로 235-48',
    telno = '070-7780-8009',
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001549', '서울특별시 용산구 한남대로 158 (한남동)', '02-766-1774', '40')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 용산구 한남대로 158 (한남동)',
    telno = '02-766-1774',
    seatscale = '40';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004383', '경기도 시흥시 거북섬로 116 (정왕동)', NULL, '50')
ON DUPLICATE KEY UPDATE
    adres = '경기도 시흥시 거북섬로 116 (정왕동)',
    telno = NULL,
    seatscale = '50';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001428', '서울특별시 중구 청계천로 40', '02-6441-3951', '190')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 중구 청계천로 40',
    telno = '02-6441-3951',
    seatscale = '190';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001602', '경기도 광주시 청석로 288-9 (쌍령동)', '031-766-7585', '207')
ON DUPLICATE KEY UPDATE
    adres = '경기도 광주시 청석로 288-9 (쌍령동)',
    telno = '031-766-7585',
    seatscale = '207';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003333', '서울특별시 용산구 이태원로27가길 26(이태원동)', '02-796-6853', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 용산구 이태원로27가길 26(이태원동)',
    telno = '02-796-6853',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000893', '경기도 성남시 중원구 둔촌대로 332 (하대원동)', '031-729-9300', '199')
ON DUPLICATE KEY UPDATE
    adres = '경기도 성남시 중원구 둔촌대로 332 (하대원동)',
    telno = '031-729-9300',
    seatscale = '199';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003034', '경기도 용인시 처인구 낙은로 31(역북동)', '010-2552-7834', '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 용인시 처인구 낙은로 31(역북동)',
    telno = '010-2552-7834',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000234', '서울특별시 종로구 이화장길 86-8 (동숭동)', '02-765-0717', '134')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 이화장길 86-8 (동숭동)',
    telno = '02-765-0717',
    seatscale = '134';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001806', '대전광역시 중구 뿌리공원로 45 (안영동)', '042-580-9000', '408')
ON DUPLICATE KEY UPDATE
    adres = '대전광역시 중구 뿌리공원로 45 (안영동)',
    telno = '042-580-9000',
    seatscale = '408';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002615', '경기도 화성시 향남읍 향남로 470', '031-371-0011', '40423')
ON DUPLICATE KEY UPDATE
    adres = '경기도 화성시 향남읍 향남로 470',
    telno = '031-371-0011',
    seatscale = '40423';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004679', '대구광역시 중구 동성로4길 20-7 (삼덕동1가)', NULL, '30')
ON DUPLICATE KEY UPDATE
    adres = '대구광역시 중구 동성로4길 20-7 (삼덕동1가)',
    telno = NULL,
    seatscale = '30';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003761', '제주특별자치도 제주시 동광로23길 15 (일도이동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 동광로23길 15 (일도이동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001572', '경기도 평택시 현덕면 평택호길 147', '031-683-3891', '857')
ON DUPLICATE KEY UPDATE
    adres = '경기도 평택시 현덕면 평택호길 147',
    telno = '031-683-3891',
    seatscale = '857';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001900', '서울특별시 성북구 삼선교로16길 116 (삼선동2가)', '02-760-4214', '589')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 성북구 삼선교로16길 116 (삼선동2가)',
    telno = '02-760-4214',
    seatscale = '589';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003970', '경상남도 거제시 장승포로1길 13 (장승포동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 거제시 장승포로1길 13 (장승포동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001154', '부산광역시 중구 중앙대로 54 (중앙동5가)', '051-441-2733', '120')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 중구 중앙대로 54 (중앙동5가)',
    telno = '051-441-2733',
    seatscale = '120';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000296', '대구광역시 중구 동성로1길 29-29 (동성로3가)', '053-254-7241', '410')
ON DUPLICATE KEY UPDATE
    adres = '대구광역시 중구 동성로1길 29-29 (동성로3가)',
    telno = '053-254-7241',
    seatscale = '410';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004407', '서울특별시 성동구 뚝섬로17길 35 (성수동2가)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 성동구 뚝섬로17길 35 (성수동2가)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004655', '경기도 평택시 고덕로 310 (고덕동)', NULL, '1318')
ON DUPLICATE KEY UPDATE
    adres = '경기도 평택시 고덕로 310 (고덕동)',
    telno = NULL,
    seatscale = '1318';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001667', '대전광역시 유성구 동서대로 125 (덕명동)', '042-821-1114', '861')
ON DUPLICATE KEY UPDATE
    adres = '대전광역시 유성구 동서대로 125 (덕명동)',
    telno = '042-821-1114',
    seatscale = '861';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001566', '서울특별시 종로구 대학로11길 39 (명륜4가)', NULL, '70')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 대학로11길 39 (명륜4가)',
    telno = NULL,
    seatscale = '70';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003739', '경상북도 구미시 옥계신당로5안길 14-5 (옥계동)', NULL, '50')
ON DUPLICATE KEY UPDATE
    adres = '경상북도 구미시 옥계신당로5안길 14-5 (옥계동)',
    telno = NULL,
    seatscale = '50';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003961', '제주특별자치도 제주시 고다시길 25 (오등동)', NULL, '140')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 고다시길 25 (오등동)',
    telno = NULL,
    seatscale = '140';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000301', '인천광역시 남구 수봉안길 78 (숭의동)', '032-876-8364', '118')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 남구 수봉안길 78 (숭의동)',
    telno = '032-876-8364',
    seatscale = '118';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000281', '대구광역시 달서구 두류공원로 200 (두류동)', '053-620-0001', '700')
ON DUPLICATE KEY UPDATE
    adres = '대구광역시 달서구 두류공원로 200 (두류동)',
    telno = '053-620-0001',
    seatscale = '700';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003626', '경기도 부천시 석천로2번길 83 (상동)', '010-3286-7993', '10')
ON DUPLICATE KEY UPDATE
    adres = '경기도 부천시 석천로2번길 83 (상동)',
    telno = '010-3286-7993',
    seatscale = '10';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004495', '강원특별자치도 강릉시 연당길 49 (초당동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '강원특별자치도 강릉시 연당길 49 (초당동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002421', '전라북도 전주시 덕진구 구렛들1길 46 (팔복동1가)', '063-211-0288', '180')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 전주시 덕진구 구렛들1길 46 (팔복동1가)',
    telno = '063-211-0288',
    seatscale = '180';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003881', '제주특별자치도 서귀포시 안덕면 신화역사로 195', NULL, '200')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 서귀포시 안덕면 신화역사로 195',
    telno = NULL,
    seatscale = '200';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000095', '경기도 하남시 신평로 125 (덕풍동)', '031-790-7979', '1291')
ON DUPLICATE KEY UPDATE
    adres = '경기도 하남시 신평로 125 (덕풍동)',
    telno = '031-790-7979',
    seatscale = '1291';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000459', '충청북도 청주시 청원구 공항로287번길 56 (주중동)', '043-229-2600', '1211')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 청주시 청원구 공항로287번길 56 (주중동)',
    telno = '043-229-2600',
    seatscale = '1211';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004401', '서울특별시 마포구 와우산로29길 54 (서교동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 와우산로29길 54 (서교동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002295', '경기도 고양시 일산동구 성현로 537 (사리현동)', '031-969-6191', '380')
ON DUPLICATE KEY UPDATE
    adres = '경기도 고양시 일산동구 성현로 537 (사리현동)',
    telno = '031-969-6191',
    seatscale = '380';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004211', '서울특별시 마포구 성미산로 52 (성산동)', NULL, '8')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 성미산로 52 (성산동)',
    telno = NULL,
    seatscale = '8';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002661', '강원도 인제군 인제읍 비봉로44번길 113', '033-460-2182', '250')
ON DUPLICATE KEY UPDATE
    adres = '강원도 인제군 인제읍 비봉로44번길 113',
    telno = '033-460-2182',
    seatscale = '250';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002441', '서울특별시 종로구 북촌로6길 30 (계동)', '010-8724-0529', '10')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 북촌로6길 30 (계동)',
    telno = '010-8724-0529',
    seatscale = '10';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002887', '충청남도 부여군 규암면 자온로 53-4', '070-8865-0148', '0')
ON DUPLICATE KEY UPDATE
    adres = '충청남도 부여군 규암면 자온로 53-4',
    telno = '070-8865-0148',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001841', '인천광역시 중구 영종해안남로321번길 186 (운서동)', '00-1833-8855', '1820')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 중구 영종해안남로321번길 186 (운서동)',
    telno = '00-1833-8855',
    seatscale = '1820';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000188', '서울특별시 종로구 대학로 144 (혜화동) 중원빌딩 지하1층', '02-764-6460', '126')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 대학로 144 (혜화동) 중원빌딩 지하1층',
    telno = '02-764-6460',
    seatscale = '126';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004385', '강원특별자치도 원주시 지정면 조엄로 14', NULL, '50')
ON DUPLICATE KEY UPDATE
    adres = '강원특별자치도 원주시 지정면 조엄로 14',
    telno = NULL,
    seatscale = '50';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004015', '전라남도 담양군 담양읍 깊은실길 25', '00-1899-1572', '155')
ON DUPLICATE KEY UPDATE
    adres = '전라남도 담양군 담양읍 깊은실길 25',
    telno = '00-1899-1572',
    seatscale = '155';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001591', '서울특별시 강남구 압구정로29길 21', '02-3449-5390', '300')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 압구정로29길 21',
    telno = '02-3449-5390',
    seatscale = '300';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004382', '세종특별자치시 부강면 금강자전거길 13020', NULL, '12')
ON DUPLICATE KEY UPDATE
    adres = '세종특별자치시 부강면 금강자전거길 13020',
    telno = NULL,
    seatscale = '12';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003750', '서울특별시 서초구 방배중앙로29길 21 (방배동)', NULL, '50')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서초구 방배중앙로29길 21 (방배동)',
    telno = NULL,
    seatscale = '50';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003875', '서울특별시 강남구 논현로 736 (논현동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 논현로 736 (논현동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002332', '경상북도 포항시 남구 행복길 120 (효자동)', '054-221-9755', '731')
ON DUPLICATE KEY UPDATE
    adres = '경상북도 포항시 남구 행복길 120 (효자동)',
    telno = '054-221-9755',
    seatscale = '731';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002834', '경기도 김포시 양촌읍 양곡4로 164', '031-981-0909', '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 김포시 양촌읍 양곡4로 164',
    telno = '031-981-0909',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001600', '서울특별시 종로구 성균관로 87 (명륜1가)', '02-3676-2352', '200')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 성균관로 87 (명륜1가)',
    telno = '02-3676-2352',
    seatscale = '200';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003697', '인천광역시 중구 하늘달빛로 65 (중산동, 인천영종 동보노빌리티아파트)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 중구 하늘달빛로 65 (중산동, 인천영종 동보노빌리티아파트)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002239', '대구광역시 남구 현충로 244 (대명동)', '010-2338-1340', '100')
ON DUPLICATE KEY UPDATE
    adres = '대구광역시 남구 현충로 244 (대명동)',
    telno = '010-2338-1340',
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003960', '경기도 화성시 지산1길 22-4 (영천동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 화성시 지산1길 22-4 (영천동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004378', '대전광역시 중구 대흥로139번길 38 (대흥동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '대전광역시 중구 대흥로139번길 38 (대흥동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002245', '대구광역시 동구 신숭겸길 17 (지묘동) ', '053-428-9980', '300')
ON DUPLICATE KEY UPDATE
    adres = '대구광역시 동구 신숭겸길 17 (지묘동) ',
    telno = '053-428-9980',
    seatscale = '300';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003695', '서울특별시 금천구 디지털로9길 56 (가산동)', NULL, '80')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 금천구 디지털로9길 56 (가산동)',
    telno = NULL,
    seatscale = '80';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000215', '서울특별시 구로구 새말로 97 (구로동)', '02-2111-1146', '400')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 구로구 새말로 97 (구로동)',
    telno = '02-2111-1146',
    seatscale = '400';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003727', '전라남도 순천시 성죽길 13 (연향동)', NULL, '50')
ON DUPLICATE KEY UPDATE
    adres = '전라남도 순천시 성죽길 13 (연향동)',
    telno = NULL,
    seatscale = '50';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003437', '충청남도 공주시 사곡면 모단길 76', '041-841-1811', '0')
ON DUPLICATE KEY UPDATE
    adres = '충청남도 공주시 사곡면 모단길 76',
    telno = '041-841-1811',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004657', '강원특별자치도 홍천군 홍천읍 태학여내길 22', NULL, '1360')
ON DUPLICATE KEY UPDATE
    adres = '강원특별자치도 홍천군 홍천읍 태학여내길 22',
    telno = NULL,
    seatscale = '1360';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000874', '경상북도 칠곡군 왜관읍 관문로1길 32', '054-979-5102', '3510')
ON DUPLICATE KEY UPDATE
    adres = '경상북도 칠곡군 왜관읍 관문로1길 32',
    telno = '054-979-5102',
    seatscale = '3510';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004138', '서울특별시 서대문구 이화여대길 52 (대현동)', '02-3277-2157', '360')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서대문구 이화여대길 52 (대현동)',
    telno = '02-3277-2157',
    seatscale = '360';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000325', '인천광역시 중구 자유공원로 12 (인현동)', '032-760-3400', '808')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 중구 자유공원로 12 (인현동)',
    telno = '032-760-3400',
    seatscale = '808';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002874', '서울특별시 강북구 인수봉로 301(수유동)', '010-2721-8699', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강북구 인수봉로 301(수유동)',
    telno = '010-2721-8699',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000437', '충청남도 천안시 서북구 성환읍 성진로 15', '041-521-3745', '840')
ON DUPLICATE KEY UPDATE
    adres = '충청남도 천안시 서북구 성환읍 성진로 15',
    telno = '041-521-3745',
    seatscale = '840';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002645', '전라남도 여수시 진남체육관길 74 (오림동)', '061-659-5870', '4197')
ON DUPLICATE KEY UPDATE
    adres = '전라남도 여수시 진남체육관길 74 (오림동)',
    telno = '061-659-5870',
    seatscale = '4197';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004207', '경기도 수원시 영통구 매영로39번길 5 (매탄동)', NULL, '189')
ON DUPLICATE KEY UPDATE
    adres = '경기도 수원시 영통구 매영로39번길 5 (매탄동)',
    telno = NULL,
    seatscale = '189';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003288', '경상북도 포항시 북구 죽파로 6(용흥동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경상북도 포항시 북구 죽파로 6(용흥동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001788', '서울특별시 서초구 남부순환로 2374 (서초동)', '02-746-9496', '368')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서초구 남부순환로 2374 (서초동)',
    telno = '02-746-9496',
    seatscale = '368';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000228', '서울특별시 도봉구 노해로69길 132 (창동)', '02-901-5000', '188')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 도봉구 노해로69길 132 (창동)',
    telno = '02-901-5000',
    seatscale = '188';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004384', '경기도 여주시 강천면 이문안길 28', NULL, '50')
ON DUPLICATE KEY UPDATE
    adres = '경기도 여주시 강천면 이문안길 28',
    telno = NULL,
    seatscale = '50';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002225', '충청북도 청주시 상당구 수동로5번길 40 (수동)', '043-224-6610', '100')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 청주시 상당구 수동로5번길 40 (수동)',
    telno = '043-224-6610',
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004242', '서울특별시 서대문구 이화여대길 52 (대현동)', NULL, '288')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서대문구 이화여대길 52 (대현동)',
    telno = NULL,
    seatscale = '288';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002167', '전라북도 전주시 완산구 충경로 100 (경원동3가) 지하1층', '063-287-2012', '70')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 전주시 완산구 충경로 100 (경원동3가) 지하1층',
    telno = '063-287-2012',
    seatscale = '70';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002436', '서울특별시 양천구 목동동로 257 (목동, 현대하이페리온) ', '02-2163-1700', '530')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 양천구 목동동로 257 (목동, 현대하이페리온) ',
    telno = '02-2163-1700',
    seatscale = '530';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004566', '경기도 이천시 신둔면 도자예술로62번길 123', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 이천시 신둔면 도자예술로62번길 123',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004213', '서울특별시 강남구 테헤란로7길 22 (역삼동)', '02-3420-1200', '550')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 테헤란로7길 22 (역삼동)',
    telno = '02-3420-1200',
    seatscale = '550';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003354', '전라북도 전주시 완산구 중화산로 83(중화산동2가)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 전주시 완산구 중화산로 83(중화산동2가)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004427', '울산광역시 남구 장생포고래로 110 (장생포동)', '052-226-0010', '111')
ON DUPLICATE KEY UPDATE
    adres = '울산광역시 남구 장생포고래로 110 (장생포동)',
    telno = '052-226-0010',
    seatscale = '111';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002806', '서울특별시 중구 명동11길 20(명동1가)', '070-4242-8702', '150')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 중구 명동11길 20(명동1가)',
    telno = '070-4242-8702',
    seatscale = '150';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002631', '서울특별시 종로구 삼일대로 428 (낙원동)', '02-742-4231', '586')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 삼일대로 428 (낙원동)',
    telno = '02-742-4231',
    seatscale = '586';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004155', '서울특별시 용산구 한강대로7길 22 (한강로3가)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 용산구 한강대로7길 22 (한강로3가)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003931', '서울특별시 마포구 와우산로14길 4 (상수동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 와우산로14길 4 (상수동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001356', '전라북도 익산시 동서로 490 (어양동)', '063-859-3254', '1202')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 익산시 동서로 490 (어양동)',
    telno = '063-859-3254',
    seatscale = '1202';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001698', '서울특별시 마포구 마포대로19길 12 (아현동)', '010-4055-5540', '100')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 마포대로19길 12 (아현동)',
    telno = '010-4055-5540',
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001590', '경기도 고양시 일산서구 호수로 817 (대화동)', '031-822-2520', '540')
ON DUPLICATE KEY UPDATE
    adres = '경기도 고양시 일산서구 호수로 817 (대화동)',
    telno = '031-822-2520',
    seatscale = '540';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000251', '서울특별시 중랑구 면목로 238 (면목동)', '02-2207-6130', '648')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 중랑구 면목로 238 (면목동)',
    telno = '02-2207-6130',
    seatscale = '648';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001803', '서울특별시 성동구 왕십리로 222 (사근동)', '02-2220-1226', '580')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 성동구 왕십리로 222 (사근동)',
    telno = '02-2220-1226',
    seatscale = '580';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000152', '서울특별시 종로구 창경궁로 254 (명륜2가)', '02-741-0251', '400')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 창경궁로 254 (명륜2가)',
    telno = '02-741-0251',
    seatscale = '400';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001904', '경상북도 포항시 북구 흥해읍 신덕로 60 (죽천리)', '054-251-8000', '2000')
ON DUPLICATE KEY UPDATE
    adres = '경상북도 포항시 북구 흥해읍 신덕로 60 (죽천리)',
    telno = '054-251-8000',
    seatscale = '2000';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002875', '경상남도 진주시 충의로 19(충무공동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 진주시 충의로 19(충무공동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002367', '충청북도 충주시 예성로 266 (연수동)', '043-850-3903', '3378')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 충주시 예성로 266 (연수동)',
    telno = '043-850-3903',
    seatscale = '3378';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004319', '서울특별시 종로구 북촌로 67-4 (가회동)', '070-4001-0820', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 북촌로 67-4 (가회동)',
    telno = '070-4001-0820',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001975', '서울특별시 마포구 성미산로 64-5 (성산동)', '02-3141-4605', '39')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 성미산로 64-5 (성산동)',
    telno = '02-3141-4605',
    seatscale = '39';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002551', '대전광역시 유성구 대학로 291 (구성동)', '042-350-2114', '990')
ON DUPLICATE KEY UPDATE
    adres = '대전광역시 유성구 대학로 291 (구성동)',
    telno = '042-350-2114',
    seatscale = '990';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001617', '제주특별자치도 제주시 선돌목동길 56-26 (오등동)', '064-723-8878', '651')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 선돌목동길 56-26 (오등동)',
    telno = '064-723-8878',
    seatscale = '651';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001195', '강원도 횡성군 횡성읍 문예로 75', '033-340-5974', '740')
ON DUPLICATE KEY UPDATE
    adres = '강원도 횡성군 횡성읍 문예로 75',
    telno = '033-340-5974',
    seatscale = '740';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004414', '경기도 화성시 장조1로 34 (안녕동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 화성시 장조1로 34 (안녕동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002534', '전라북도 임실군 임실읍 호국로 1703', '063-640-2911', '1360')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 임실군 임실읍 호국로 1703',
    telno = '063-640-2911',
    seatscale = '1360';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002257', '경상북도 포항시 남구 희망대로 810 (대도동)', '054-280-9505', '2500')
ON DUPLICATE KEY UPDATE
    adres = '경상북도 포항시 남구 희망대로 810 (대도동)',
    telno = '054-280-9505',
    seatscale = '2500';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001191', '경상북도 포항시 남구 희망대로 850 (대도동)', '054-289-7999', '1537')
ON DUPLICATE KEY UPDATE
    adres = '경상북도 포항시 남구 희망대로 850 (대도동)',
    telno = '054-289-7999',
    seatscale = '1537';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004573', '서울특별시 강남구 언주로133길 11 (논현동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 언주로133길 11 (논현동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001614', '대구광역시 중구 달구벌대로 2232-18 (대봉동)', '053-426-1545', '100')
ON DUPLICATE KEY UPDATE
    adres = '대구광역시 중구 달구벌대로 2232-18 (대봉동)',
    telno = '053-426-1545',
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000166', '전라남도 해남군 해남읍 군청길 4(성내리 4)', '061-530-5137', '698')
ON DUPLICATE KEY UPDATE
    adres = '전라남도 해남군 해남읍 군청길 4(성내리 4)',
    telno = '061-530-5137',
    seatscale = '698';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001265', '서울특별시 중구 정동길 26 (정동)', '02-777-4258', '427')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 중구 정동길 26 (정동)',
    telno = '02-777-4258',
    seatscale = '427';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004005', '경상북도 경주시 동방안길 26 (동방동)', NULL, '20')
ON DUPLICATE KEY UPDATE
    adres = '경상북도 경주시 동방안길 26 (동방동)',
    telno = NULL,
    seatscale = '20';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002288', '서울특별시 서초구 서래로 31 (반포동)', '02-6403-3222', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서초구 서래로 31 (반포동)',
    telno = '02-6403-3222',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004244', '경기도 고양시 덕양구 항공대학로 76 (화전동)', NULL, '50')
ON DUPLICATE KEY UPDATE
    adres = '경기도 고양시 덕양구 항공대학로 76 (화전동)',
    telno = NULL,
    seatscale = '50';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004287', '전라남도 함평군 함평읍 곤재로 27', '061-320-2230', '510')
ON DUPLICATE KEY UPDATE
    adres = '전라남도 함평군 함평읍 곤재로 27',
    telno = '061-320-2230',
    seatscale = '510';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001321', '경기도 안산시 단원구 광덕대로 187 (고잔동) 장은타워 7층', '010-9178-6888', '80')
ON DUPLICATE KEY UPDATE
    adres = '경기도 안산시 단원구 광덕대로 187 (고잔동) 장은타워 7층',
    telno = '010-9178-6888',
    seatscale = '80';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003532', '강원특별자치도 평창군 봉평면 흥정계곡길 225', '033-335-2902', '0')
ON DUPLICATE KEY UPDATE
    adres = '강원특별자치도 평창군 봉평면 흥정계곡길 225',
    telno = '033-335-2902',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003774', '광주광역시 동구 중흥로209번길 8 (계림동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '광주광역시 동구 중흥로209번길 8 (계림동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000403', '충청북도 청주시 서원구 흥덕로 69 (사직동)', '043-201-2304', '2491')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 청주시 서원구 흥덕로 69 (사직동)',
    telno = '043-201-2304',
    seatscale = '2491';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003163', '강원도 춘천시 공지로 255(효자동)', '033-912-5003', '0')
ON DUPLICATE KEY UPDATE
    adres = '강원도 춘천시 공지로 255(효자동)',
    telno = '033-912-5003',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004421', '서울특별시 성북구 대사관로 121 (성북동)', NULL, '100')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 성북구 대사관로 121 (성북동)',
    telno = NULL,
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000680', '강원도 춘천시 영서로 3017 (사농동)', '033-242-8450', '1458')
ON DUPLICATE KEY UPDATE
    adres = '강원도 춘천시 영서로 3017 (사농동)',
    telno = '033-242-8450',
    seatscale = '1458';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001311', '서울특별시 종로구 삼일대로32길 55 - 3', '02-766-3545', '20')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 삼일대로32길 55 - 3',
    telno = '02-766-3545',
    seatscale = '20';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004458', '경상북도 칠곡군 약목면 강변서로 180', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경상북도 칠곡군 약목면 강변서로 180',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000336', '경기도 평택시 안중읍 서동대로 1531', '031-8024-8321', '936')
ON DUPLICATE KEY UPDATE
    adres = '경기도 평택시 안중읍 서동대로 1531',
    telno = '031-8024-8321',
    seatscale = '936';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004192', '서울특별시 종로구 북촌로 61 (가회동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 북촌로 61 (가회동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001715', '제주특별자치도 제주시 노형로 89 (해안동)', '064-746-9007', '1400')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 노형로 89 (해안동)',
    telno = '064-746-9007',
    seatscale = '1400';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004634', '서울특별시 강남구 도산대로53길 39 (신사동)', NULL, '60')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 도산대로53길 39 (신사동)',
    telno = NULL,
    seatscale = '60';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001583', '서울특별시 도봉구 마들로11길 74 (창동)', '02-993-0561', '150')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 도봉구 마들로11길 74 (창동)',
    telno = '02-993-0561',
    seatscale = '150';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004445', '서울특별시 용산구 청파로 269 (청파동3가)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 용산구 청파로 269 (청파동3가)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000369', '서울특별시 강남구 선릉로 805 (신사동)', '070-4842-6966', '200')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 선릉로 805 (신사동)',
    telno = '070-4842-6966',
    seatscale = '200';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002911', '서울특별시 마포구 월드컵로23길 82-3(망원동)', '02-332-8235', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 월드컵로23길 82-3(망원동)',
    telno = '02-332-8235',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002183', '서울특별시 마포구 와우산로33길 26 (서교동)', '070-4200-9251', '60')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 와우산로33길 26 (서교동)',
    telno = '070-4200-9251',
    seatscale = '60';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000649', '경기도 수원시 장안구 송원로 101 (조원동)', '031-240-3000', '499')
ON DUPLICATE KEY UPDATE
    adres = '경기도 수원시 장안구 송원로 101 (조원동)',
    telno = '031-240-3000',
    seatscale = '499';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001630', '서울특별시 서초구 남부순환로340길 15 (서초동) 서초구립한우리정보문화센터', '02-2055-0909', '180')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서초구 남부순환로340길 15 (서초동) 서초구립한우리정보문화센터',
    telno = '02-2055-0909',
    seatscale = '180';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004565', '강원특별자치도 춘천시 서면 툇골길 209', '033-244-1009', '100')
ON DUPLICATE KEY UPDATE
    adres = '강원특별자치도 춘천시 서면 툇골길 209',
    telno = '033-244-1009',
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003863', '서울특별시 동대문구 이문로 107 (이문동)', '02-2173-2114', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 동대문구 이문로 107 (이문동)',
    telno = '02-2173-2114',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004083', '경기도 양평군 강하면 강남로 370-10 이함미술관 야외무대', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 양평군 강하면 강남로 370-10 이함미술관 야외무대',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001599', '세종특별자치시 도움6로 11 (어진동)', '044-200-1189', '624')
ON DUPLICATE KEY UPDATE
    adres = '세종특별자치시 도움6로 11 (어진동)',
    telno = '044-200-1189',
    seatscale = '624';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004039', '부산광역시 수영구 광안해변로 229 (광안동)', '051-758-5700', '0')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 수영구 광안해변로 229 (광안동)',
    telno = '051-758-5700',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003972', '서울특별시 강남구 강남대로 588 (논현동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 강남대로 588 (논현동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004525', '경상남도 통영시 한산면 호두1길 41', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 통영시 한산면 호두1길 41',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003819', '서울특별시 강남구 압구정로 416 (청담동) 더트리니티빌딩 9층', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 압구정로 416 (청담동) 더트리니티빌딩 9층',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001896', '서울특별시 마포구 와우산로21길 31 (서교동)', '011-454-6526', '1000')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 와우산로21길 31 (서교동)',
    telno = '011-454-6526',
    seatscale = '1000';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004552', '경기도 김포시 김포한강9로76번길 49 (구래동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 김포시 김포한강9로76번길 49 (구래동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001224', '서울특별시 마포구 양화로 100-10 (서교동)', '010-7702-0100', '150')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 양화로 100-10 (서교동)',
    telno = '010-7702-0100',
    seatscale = '150';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000584', '경상남도 함안군 가야읍 함안대로 619-1', '055-580-3608', '650')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 함안군 가야읍 함안대로 619-1',
    telno = '055-580-3608',
    seatscale = '650';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000909', '충청남도 천안시 동남구 버들로 41 (문화동)', '041-567-4915', '156')
ON DUPLICATE KEY UPDATE
    adres = '충청남도 천안시 동남구 버들로 41 (문화동)',
    telno = '041-567-4915',
    seatscale = '156';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002210', '경상북도 포항시 북구 삼호로 533 (환호동)', '054-240-9130', '323')
ON DUPLICATE KEY UPDATE
    adres = '경상북도 포항시 북구 삼호로 533 (환호동)',
    telno = '054-240-9130',
    seatscale = '323';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000627', '울산광역시 남구 삼산로 261 (삼산동)', '052-228-1004', '500')
ON DUPLICATE KEY UPDATE
    adres = '울산광역시 남구 삼산로 261 (삼산동)',
    telno = '052-228-1004',
    seatscale = '500';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003484', '경기도 남양주시 화도읍 수레로 1259', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 남양주시 화도읍 수레로 1259',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002351', '서울특별시 마포구 와우산로17길 19-22 (서교동)', '070-4333-0093', '50')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 와우산로17길 19-22 (서교동)',
    telno = '070-4333-0093',
    seatscale = '50';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002872', '서울특별시 종로구 율곡로 99(와룡동)', '02-3668-2300', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 율곡로 99(와룡동)',
    telno = '02-3668-2300',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003341', '서울특별시 마포구 양화로 100-10(서교동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 양화로 100-10(서교동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000099', '서울특별시 서대문구 이화여대길 52 (대현동)', '02-393-0191', '3088')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서대문구 이화여대길 52 (대현동)',
    telno = '02-393-0191',
    seatscale = '3088';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003050', '서울특별시 종로구 창신길 55(창신동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 창신길 55(창신동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000422', '서울특별시 종로구 지봉로5길 7-5 (창신동)', '02-3672-2530', '409')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 지봉로5길 7-5 (창신동)',
    telno = '02-3672-2530',
    seatscale = '409';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002446', '충청북도 청주시 상당구 문의면 청남대길 646', '043-257-5080', '1000')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 청주시 상당구 문의면 청남대길 646',
    telno = '043-257-5080',
    seatscale = '1000';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002049', '서울특별시 송파구 올림픽로 25 (잠실동)', '02-422-2285', '5400')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 송파구 올림픽로 25 (잠실동)',
    telno = '02-422-2285',
    seatscale = '5400';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002276', '충청남도 공주시 신풍면 신풍길 85 ', '041-733-0726', '0')
ON DUPLICATE KEY UPDATE
    adres = '충청남도 공주시 신풍면 신풍길 85 ',
    telno = '041-733-0726',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003930', '강원특별자치도 춘천시 시청길 11 (옥천동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '강원특별자치도 춘천시 시청길 11 (옥천동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002735', '경기도 고양시 덕양구 행주산성로 38 (행주외동)', '00-1599-4985', '200')
ON DUPLICATE KEY UPDATE
    adres = '경기도 고양시 덕양구 행주산성로 38 (행주외동)',
    telno = '00-1599-4985',
    seatscale = '200';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000475', '전라북도 남원시 양림길 43 (어현동)', '063-620-5724', '908')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 남원시 양림길 43 (어현동)',
    telno = '063-620-5724',
    seatscale = '908';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003103', '서울특별시 강남구 도산대로57길 8(청담동)', '010-2885-9199', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 도산대로57길 8(청담동)',
    telno = '010-2885-9199',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003698', '서울특별시 서대문구 이화여대길 50-6 (대현동)', NULL, '25')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서대문구 이화여대길 50-6 (대현동)',
    telno = NULL,
    seatscale = '25';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004535', '충청북도 충주시 남한강로 46 (금릉동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 충주시 남한강로 46 (금릉동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001894', '서울특별시 노원구 상계로7길 23 (상계동)', '010-3009-7591', '100')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 노원구 상계로7길 23 (상계동)',
    telno = '010-3009-7591',
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002317', '부산광역시 금정구 금정로 89 (장전동)', '051-517-4773', '100')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 금정구 금정로 89 (장전동)',
    telno = '051-517-4773',
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003136', '경기도 광명시 오리로347번길 5-6(소하동)', '02-898-0505', '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 광명시 오리로347번길 5-6(소하동)',
    telno = '02-898-0505',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001755', '제주특별자치도 제주시 한경면 저지14길 35 현대미술관 야외공연장', '064-710-7801', '1000')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 한경면 저지14길 35 현대미술관 야외공연장',
    telno = '064-710-7801',
    seatscale = '1000';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001696', '인천광역시 연수구 인천타워대로 250 (송도동)', '032-832-7994', '300')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 연수구 인천타워대로 250 (송도동)',
    telno = '032-832-7994',
    seatscale = '300';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001840', '인천광역시 연수구 아카데미로 119 (송도동)', '032-835-8114', '896')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 연수구 아카데미로 119 (송도동)',
    telno = '032-835-8114',
    seatscale = '896';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004239', '서울특별시 마포구 양화로 186 (동교동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 양화로 186 (동교동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002369', '전라남도 여수시 대통1길 55 (화장동)', NULL, '934')
ON DUPLICATE KEY UPDATE
    adres = '전라남도 여수시 대통1길 55 (화장동)',
    telno = NULL,
    seatscale = '934';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001255', '대전광역시 유성구 도안대로 591 (봉명동)', '042-252-0887', '180')
ON DUPLICATE KEY UPDATE
    adres = '대전광역시 유성구 도안대로 591 (봉명동)',
    telno = '042-252-0887',
    seatscale = '180';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001506', '인천광역시 남동구 무네미로 238 (장수동) 인천대공원 내', '032-440-5811', '1000')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 남동구 무네미로 238 (장수동) 인천대공원 내',
    telno = '032-440-5811',
    seatscale = '1000';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002326', '서울특별시 성동구 아차산로7나길 14 (성수동2가) ', '070-8845-7382', '90')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 성동구 아차산로7나길 14 (성수동2가) ',
    telno = '070-8845-7382',
    seatscale = '90';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004006', '서울특별시 서초구 나루터로15길 30-9 (잠원동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서초구 나루터로15길 30-9 (잠원동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001208', '서울특별시 종로구 대학로 57 (연건동)', '02-742-0300', '852')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 대학로 57 (연건동)',
    telno = '02-742-0300',
    seatscale = '852';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003572', '충청북도 충주시 중앙탑면 중앙탑길 150', '043-844-3533', '0')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 충주시 중앙탑면 중앙탑길 150',
    telno = '043-844-3533',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004395', '서울특별시 영등포구 경인로 757 (문래동3가)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 영등포구 경인로 757 (문래동3가)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002044', '서울특별시 마포구 월드컵북로 1길 26-9 (서교동)', '010-9836-3522', '100')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 월드컵북로 1길 26-9 (서교동)',
    telno = '010-9836-3522',
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003252', '서울특별시 마포구 서강로 144(노고산동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 서강로 144(노고산동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002752', '서울특별시 종로구 청계천로 105 (관수동)', '02-318-0903', '62')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 청계천로 105 (관수동)',
    telno = '02-318-0903',
    seatscale = '62';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003355', '충청남도 천안시 동남구 터미널3길 12(신부동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '충청남도 천안시 동남구 터미널3길 12(신부동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003137', '인천광역시 중구 공항로424번길 43(운서동)', '00-1577-2600', '0')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 중구 공항로424번길 43(운서동)',
    telno = '00-1577-2600',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000762', '충청북도 제천시 의림대로6길 32 (화산동)', '043-641-5517', '654')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 제천시 의림대로6길 32 (화산동)',
    telno = '043-641-5517',
    seatscale = '654';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001524', '서울특별시 마포구 성미산로 198 (연남동)', '010-9838-5768', '27')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 성미산로 198 (연남동)',
    telno = '010-9838-5768',
    seatscale = '27';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002942', '부산광역시 부산진구 서전로37번길 14-1(전포동)', '010-6607-3313', '40')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 부산진구 서전로37번길 14-1(전포동)',
    telno = '010-6607-3313',
    seatscale = '40';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004151', '서울특별시 종로구 효자로7길 10-3 (통의동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 효자로7길 10-3 (통의동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002897', '서울특별시 영등포구 도림로 459(문래동4가)', '010-9455-5185', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 영등포구 도림로 459(문래동4가)',
    telno = '010-9455-5185',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003685', '서울특별시 중구 장충단로 72 (장충동2가)', NULL, '530')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 중구 장충단로 72 (장충동2가)',
    telno = NULL,
    seatscale = '530';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003158', '서울특별시 마포구 어울마당로 94-8(서교동)', '070-4887-1267', '130')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 어울마당로 94-8(서교동)',
    telno = '070-4887-1267',
    seatscale = '130';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001756', '전라북도 남원시 광한북로 54 (하정동) 4층', '063-620-6155', '99')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 남원시 광한북로 54 (하정동) 4층',
    telno = '063-620-6155',
    seatscale = '99';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003508', '대구광역시 북구 구암로 228 (구암동)', '053-312-3476', '110')
ON DUPLICATE KEY UPDATE
    adres = '대구광역시 북구 구암로 228 (구암동)',
    telno = '053-312-3476',
    seatscale = '110';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004591', '경기도 연천군 청산면 아우라지길 13-32', NULL, '5')
ON DUPLICATE KEY UPDATE
    adres = '경기도 연천군 청산면 아우라지길 13-32',
    telno = NULL,
    seatscale = '5';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003020', '부산광역시 영도구 대교로6번길 33(봉래동3가, 오양대교맨션)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 영도구 대교로6번길 33(봉래동3가, 오양대교맨션)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003099', '세종특별자치시 시청대로 167(보람동)', '070-8882-3863', '60')
ON DUPLICATE KEY UPDATE
    adres = '세종특별자치시 시청대로 167(보람동)',
    telno = '070-8882-3863',
    seatscale = '60';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001225', '부산광역시 남구 용소로13번길 10', '010-7331-7674', '124')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 남구 용소로13번길 10',
    telno = '010-7331-7674',
    seatscale = '124';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002745', '서울특별시 영등포구 영등포로34길 3 (영등포동4가)', '010-2642-0435', '40')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 영등포구 영등포로34길 3 (영등포동4가)',
    telno = '010-2642-0435',
    seatscale = '40';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003710', '울산광역시 남구 왕생로81번길 9 (달동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '울산광역시 남구 왕생로81번길 9 (달동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003298', '경기도 고양시 일산서구 이산포길 246-11(법곳동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 고양시 일산서구 이산포길 246-11(법곳동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004465', '제주특별자치도 제주시 남성로 143-11 (삼도이동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 남성로 143-11 (삼도이동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002032', '서울특별시 마포구 잔다리로3길 34 (서교동)', '02-323-3644', '100')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 잔다리로3길 34 (서교동)',
    telno = '02-323-3644',
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004204', '서울특별시 마포구 망원로 66 (망원동)', NULL, '50')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 망원로 66 (망원동)',
    telno = NULL,
    seatscale = '50';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002387', '서울특별시 강남구 테헤란로 517 (삼성동) 10층', '02-3467-6608', '420')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 테헤란로 517 (삼성동) 10층',
    telno = '02-3467-6608',
    seatscale = '420';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003193', '서울특별시 강남구 선릉로108길 7(삼성동)', NULL, '130')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 선릉로108길 7(삼성동)',
    telno = NULL,
    seatscale = '130';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002101', '서울특별시 용산구 청파로45길 5 (청파동3가)', '070-4038-3686', '50')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 용산구 청파로45길 5 (청파동3가)',
    telno = '070-4038-3686',
    seatscale = '50';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002220', '부산광역시 금정구 금정로 94 (장전동)', '070-7375-7867', '43')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 금정구 금정로 94 (장전동)',
    telno = '070-7375-7867',
    seatscale = '43';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002557', '경기도 양평군 옥천면 신촌길 188', '031-772-3811', '1000')
ON DUPLICATE KEY UPDATE
    adres = '경기도 양평군 옥천면 신촌길 188',
    telno = '031-772-3811',
    seatscale = '1000';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001365', '전라북도 전주시 완산구 홍산중앙로 13 (효자동2가)', '00-1644-4356', '223')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 전주시 완산구 홍산중앙로 13 (효자동2가)',
    telno = '00-1644-4356',
    seatscale = '223';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004436', '전북특별자치도 전주시 완산구 향교길 45 (교동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '전북특별자치도 전주시 완산구 향교길 45 (교동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001418', '전라북도 전주시 완산구 홍산북로 23-9 (효자동2가)', '063-282-1033', '60')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 전주시 완산구 홍산북로 23-9 (효자동2가)',
    telno = '063-282-1033',
    seatscale = '60';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004678', '충청남도 천안시 서북구 불당19로 82 (불당동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '충청남도 천안시 서북구 불당19로 82 (불당동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001629', '서울특별시 용산구 한남대로 98 (한남동)', '02-790-3364', '189')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 용산구 한남대로 98 (한남동)',
    telno = '02-790-3364',
    seatscale = '189';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003219', '경상북도 포항시 북구 삼호로 31(덕수동)', '054-270-4600', '185')
ON DUPLICATE KEY UPDATE
    adres = '경상북도 포항시 북구 삼호로 31(덕수동)',
    telno = '054-270-4600',
    seatscale = '185';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000065', '서울특별시 강남구 테헤란로92길 12-9 (대치동)', '02-3011-1788', '230')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 테헤란로92길 12-9 (대치동)',
    telno = '02-3011-1788',
    seatscale = '230';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001837', '서울특별시 송파구 올림픽로 25 (잠실동)', '02-2240-8800', '81813')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 송파구 올림픽로 25 (잠실동)',
    telno = '02-2240-8800',
    seatscale = '81813';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003676', '전라북도 전주시 덕진구 번영로 453 (용정동)', '063-256-1000', '100')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 전주시 덕진구 번영로 453 (용정동)',
    telno = '063-256-1000',
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002539', '부산광역시 금정구 장전온천천로113번길 17 (장전동)', '070-8273-9206', '53')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 금정구 장전온천천로113번길 17 (장전동)',
    telno = '070-8273-9206',
    seatscale = '53';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000014', '서울특별시 중구 퇴계로 387 (흥인동)', '02-2230-6601', '2045')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 중구 퇴계로 387 (흥인동)',
    telno = '02-2230-6601',
    seatscale = '2045';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004564', '전북특별자치도 전주시 덕진구 기린대로 1055 (반월동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '전북특별자치도 전주시 덕진구 기린대로 1055 (반월동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003706', '경기도 군포시 번영로 494 (금정동)', '031-392-9893', '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 군포시 번영로 494 (금정동)',
    telno = '031-392-9893',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001910', '경기도 고양시 일산서구 킨텍스로 217-60 (대화동)', '031-995-8036', '2800')
ON DUPLICATE KEY UPDATE
    adres = '경기도 고양시 일산서구 킨텍스로 217-60 (대화동)',
    telno = '031-995-8036',
    seatscale = '2800';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002130', '경기도 평택시 평남로 616 (합정동)', '031-646-5400', '740')
ON DUPLICATE KEY UPDATE
    adres = '경기도 평택시 평남로 616 (합정동)',
    telno = '031-646-5400',
    seatscale = '740';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002772', '부산광역시 남구 용소로46번길 7 (대연동)', '051-611-1717', '60')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 남구 용소로46번길 7 (대연동)',
    telno = '051-611-1717',
    seatscale = '60';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003337', '서울특별시 종로구 대학로12길 10(동숭동)', '00-1661-3124', '150')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 대학로12길 10(동숭동)',
    telno = '00-1661-3124',
    seatscale = '150';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004652', '서울특별시 중구 장충단로13길 20 (을지로6가)', NULL, '80')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 중구 장충단로13길 20 (을지로6가)',
    telno = NULL,
    seatscale = '80';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001563', '경상북도 포항시 북구 중앙로 292-1 (상원동)', '054-283-1152', '150')
ON DUPLICATE KEY UPDATE
    adres = '경상북도 포항시 북구 중앙로 292-1 (상원동)',
    telno = '054-283-1152',
    seatscale = '150';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004481', '전북특별자치도 전주시 덕진구 명륜3길 17-2 (덕진동1가)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '전북특별자치도 전주시 덕진구 명륜3길 17-2 (덕진동1가)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003917', '서울특별시 마포구 어울마당로 68 (서교동)', '010-8877-5497', '650')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 어울마당로 68 (서교동)',
    telno = '010-8877-5497',
    seatscale = '650';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003129', '세종특별자치시 조치원읍 새내4길 17', NULL, '150')
ON DUPLICATE KEY UPDATE
    adres = '세종특별자치시 조치원읍 새내4길 17',
    telno = NULL,
    seatscale = '150';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000806', '서울특별시 종로구 대학로10길 24 (동숭동)', '02-764-8760', '244')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 대학로10길 24 (동숭동)',
    telno = '02-764-8760',
    seatscale = '244';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001993', '대전광역시 유성구 동서대로 130 (덕명동)', '042-471-2501', '264')
ON DUPLICATE KEY UPDATE
    adres = '대전광역시 유성구 동서대로 130 (덕명동)',
    telno = '042-471-2501',
    seatscale = '264';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004601', '경상남도 창원시 성산구 중앙대로 151 (용호동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 창원시 성산구 중앙대로 151 (용호동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003491', '충청남도 서천군 장항읍 장항로145번길 10', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '충청남도 서천군 장항읍 장항로145번길 10',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000262', '제주특별자치도 제주시 오남로 231 (오라이동)', '064-728-1509', '2064')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 오남로 231 (오라이동)',
    telno = '064-728-1509',
    seatscale = '2064';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003752', '서울특별시 서대문구 연희로 227 (연희동) 러브아트빌딩 신관 지하3층', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서대문구 연희로 227 (연희동) 러브아트빌딩 신관 지하3층',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004597', '서울특별시 성북구 동소문로 65-2 (동소문동4가)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 성북구 동소문로 65-2 (동소문동4가)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004221', '대전광역시 중구 중교로 74 (대흥동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '대전광역시 중구 중교로 74 (대흥동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003461', '서울특별시 마포구 월드컵북로 88 (성산동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 월드컵북로 88 (성산동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002164', '경기도 남양주시 의안로 134 (평내동)', '031-590-8560', '325')
ON DUPLICATE KEY UPDATE
    adres = '경기도 남양주시 의안로 134 (평내동)',
    telno = '031-590-8560',
    seatscale = '325';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002212', '강원도 철원군 철원읍 금학로330번길 12 ', '033-450-5327', '144')
ON DUPLICATE KEY UPDATE
    adres = '강원도 철원군 철원읍 금학로330번길 12 ',
    telno = '033-450-5327',
    seatscale = '144';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004367', '서울특별시 서대문구 통일로32길 3 (홍제동, 인왕아파트)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서대문구 통일로32길 3 (홍제동, 인왕아파트)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002628', '강원도 인제군 기린면 상하답로 130', '00-1644-3366', '500')
ON DUPLICATE KEY UPDATE
    adres = '강원도 인제군 기린면 상하답로 130',
    telno = '00-1644-3366',
    seatscale = '500';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003022', '제주특별자치도 제주시 해안마을서4길 100(해안동)', '064-795-8888', '0')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 해안마을서4길 100(해안동)',
    telno = '064-795-8888',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001414', '서울특별시 종로구 동숭길 78 (동숭동) 지하1층', '010-6802-1974', '120')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 동숭길 78 (동숭동) 지하1층',
    telno = '010-6802-1974',
    seatscale = '120';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000667', '경기도 파주시 시민회관길 33 (금촌동)', '031-950-1854', '1702')
ON DUPLICATE KEY UPDATE
    adres = '경기도 파주시 시민회관길 33 (금촌동)',
    telno = '031-950-1854',
    seatscale = '1702';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004144', '울산광역시 남구 중앙로290번길 13-1 (신정동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '울산광역시 남구 중앙로290번길 13-1 (신정동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002406', '서울특별시 마포구 월드컵로15길 27 (망원동)', '070-4257-8080', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 월드컵로15길 27 (망원동)',
    telno = '070-4257-8080',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003209', '서울특별시 종로구 종로 272(종로6가)', NULL, '80')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 종로 272(종로6가)',
    telno = NULL,
    seatscale = '80';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004560', '서울특별시 강남구 영동대로 511 (삼성동)', NULL, '1004')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 영동대로 511 (삼성동)',
    telno = NULL,
    seatscale = '1004';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002242', '부산광역시 금정구 기찰로108번길 49 (부곡동)', '010-7517-5859', '100')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 금정구 기찰로108번길 49 (부곡동)',
    telno = '010-7517-5859',
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002993', '서울특별시 광진구 광장로5길 25-1(광장동)', NULL, '352')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 광진구 광장로5길 25-1(광장동)',
    telno = NULL,
    seatscale = '352';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003992', '서울특별시 용산구 한강대로14길 35-18 (한강로3가)', '010-8866-2213', '50')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 용산구 한강대로14길 35-18 (한강로3가)',
    telno = '010-8866-2213',
    seatscale = '50';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002316', '서울특별시 마포구 월드컵로5길 20 (합정동)', '02-332-3181', '30')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 월드컵로5길 20 (합정동)',
    telno = '02-332-3181',
    seatscale = '30';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001332', '부산광역시 해운대구 해운대해변로 217 (우동)', '051-747-6425', '198')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 해운대구 해운대해변로 217 (우동)',
    telno = '051-747-6425',
    seatscale = '198';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001457', '서울특별시 종로구 동숭길 72 - 0', '02-747-7407', '101')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 동숭길 72 - 0',
    telno = '02-747-7407',
    seatscale = '101';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001253', '전라남도 여수시 흥국로 41 (학동)', '061-691-0654', '180')
ON DUPLICATE KEY UPDATE
    adres = '전라남도 여수시 흥국로 41 (학동)',
    telno = '061-691-0654',
    seatscale = '180';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003171', '서울특별시 종로구 대학로10길 12(동숭동) 지하1층', NULL, '204')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 대학로10길 12(동숭동) 지하1층',
    telno = NULL,
    seatscale = '204';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003947', '서울특별시 영등포구 도림로 483 (문래동4가)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 영등포구 도림로 483 (문래동4가)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001658', '서울특별시 성북구 동소문로 315 (길음동)', '02-2117-2117', '480')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 성북구 동소문로 315 (길음동)',
    telno = '02-2117-2117',
    seatscale = '480';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003936', '서울특별시 강남구 학동로3길 19 (논현동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 학동로3길 19 (논현동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003911', '강원특별자치도 태백시 태백로 1485 (문곡동)', NULL, '5000')
ON DUPLICATE KEY UPDATE
    adres = '강원특별자치도 태백시 태백로 1485 (문곡동)',
    telno = NULL,
    seatscale = '5000';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001834', '서울특별시 성북구 성북로15길 9 (성북동) ', '02-3675-3402', '30')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 성북구 성북로15길 9 (성북동) ',
    telno = '02-3675-3402',
    seatscale = '30';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002849', '서울특별시 마포구 와우산로29길 16(서교동)', '070-8692-8277', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 와우산로29길 16(서교동)',
    telno = '070-8692-8277',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000586', '경상남도 합천군 합천읍 황강체육공원로 93', '055-930-4933', '360')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 합천군 합천읍 황강체육공원로 93',
    telno = '055-930-4933',
    seatscale = '360';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002638', '경기도 가평군 가평읍 북한강변로 360-69', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 가평군 가평읍 북한강변로 360-69',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002699', '전라북도 전주시 완산구 천잠로 303 (효자동2가)', '00-1577-7177', '2294')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 전주시 완산구 천잠로 303 (효자동2가)',
    telno = '00-1577-7177',
    seatscale = '2294';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004107', '서울특별시 중구 을지로 167 (을지로4가)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 중구 을지로 167 (을지로4가)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000934', '경기도 평택시 중앙로 277 (비전동)', '031-8024-5411', '862')
ON DUPLICATE KEY UPDATE
    adres = '경기도 평택시 중앙로 277 (비전동)',
    telno = '031-8024-5411',
    seatscale = '862';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002052', '서울특별시 중구 충무로7길 17 (을지로3가)', '010-2077-2221', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 중구 충무로7길 17 (을지로3가)',
    telno = '010-2077-2221',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002679', '충청북도 청주시 청원구 대성로 298 (내덕동)', '043-229-8114', '0')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 청주시 청원구 대성로 298 (내덕동)',
    telno = '043-229-8114',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000756', '강원도 화천군 화천읍 상승로 91', '033-440-2573', '648')
ON DUPLICATE KEY UPDATE
    adres = '강원도 화천군 화천읍 상승로 91',
    telno = '033-440-2573',
    seatscale = '648';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001076', '충청북도 청주시 흥덕구 2 순환로 1322', '043-229-7220', '320')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 청주시 흥덕구 2 순환로 1322',
    telno = '043-229-7220',
    seatscale = '320';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002655', '전라북도 전주시 완산구 전주객사3길 67 (고사동)', '063-283-7722', '943')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 전주시 완산구 전주객사3길 67 (고사동)',
    telno = '063-283-7722',
    seatscale = '943';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002555', '울산광역시 동구 바드래1길 30 (전하동)', '052-209-7900', '200')
ON DUPLICATE KEY UPDATE
    adres = '울산광역시 동구 바드래1길 30 (전하동)',
    telno = '052-209-7900',
    seatscale = '200';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003699', '서울특별시 용산구 신흥로 33 (용산동2가)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 용산구 신흥로 33 (용산동2가)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001943', '인천광역시 남동구 소래로 500 (수산동)', '032-715-5173', '8828')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 남동구 소래로 500 (수산동)',
    telno = '032-715-5173',
    seatscale = '8828';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004504', '제주특별자치도 제주시 애월읍 하소로 735', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 애월읍 하소로 735',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002789', '서울특별시 서초구 강남대로2길 70 (양재동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서초구 강남대로2길 70 (양재동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002077', '대전광역시 중구 대종로 373 (부사동)', '042-610-4900', '17371')
ON DUPLICATE KEY UPDATE
    adres = '대전광역시 중구 대종로 373 (부사동)',
    telno = '042-610-4900',
    seatscale = '17371';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002654', '서울특별시 종로구 돈화문로 13 (관수동)', '02-738-0366', '186')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 돈화문로 13 (관수동)',
    telno = '02-738-0366',
    seatscale = '186';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003036', '제주특별자치도 서귀포시 중문관광로 154-17(색달동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 서귀포시 중문관광로 154-17(색달동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003477', '부산광역시 해운대구 센텀4로 15 (우동)', '00-1544-5110', '600')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 해운대구 센텀4로 15 (우동)',
    telno = '00-1544-5110',
    seatscale = '600';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003447', '강원도 철원군 갈말읍 명성로139번길 52', '033-450-4741', '330')
ON DUPLICATE KEY UPDATE
    adres = '강원도 철원군 갈말읍 명성로139번길 52',
    telno = '033-450-4741',
    seatscale = '330';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003588', '부산광역시 연제구 연수로235번길 7 (연산동)', NULL, '104')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 연제구 연수로235번길 7 (연산동)',
    telno = NULL,
    seatscale = '104';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001296', '대전광역시 유성구 대학로 99', '042-821-8081', '2395')
ON DUPLICATE KEY UPDATE
    adres = '대전광역시 유성구 대학로 99',
    telno = '042-821-8081',
    seatscale = '2395';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004022', '부산광역시 연제구 과정로 340 (연산동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 연제구 과정로 340 (연산동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003886', '서울특별시 마포구 와우산로33길 27 (서교동) 1층', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 와우산로33길 27 (서교동) 1층',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003249', '서울특별시 종로구 이화장길 66(동숭동)', '02-3665-6268', '671')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 이화장길 66(동숭동)',
    telno = '02-3665-6268',
    seatscale = '671';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001238', '제주특별자치도 제주시 신산로 82 (일도이동)', '064-727-7800', '336')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 신산로 82 (일도이동)',
    telno = '064-727-7800',
    seatscale = '336';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000070', '서울특별시 강동구 성안로 30 (성내동)', '02-482-8794', '453')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강동구 성안로 30 (성내동)',
    telno = '02-482-8794',
    seatscale = '453';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002955', '대구광역시 남구 중앙대로49길 4(대명동)', '010-5782-9349', '40')
ON DUPLICATE KEY UPDATE
    adres = '대구광역시 남구 중앙대로49길 4(대명동)',
    telno = '010-5782-9349',
    seatscale = '40';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000441', '충청남도 청양군 청양읍 문화예술로 187', '041-940-2734', '1089')
ON DUPLICATE KEY UPDATE
    adres = '충청남도 청양군 청양읍 문화예술로 187',
    telno = '041-940-2734',
    seatscale = '1089';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001158', '서울특별시 서대문구 충정로 7 (충정로3가)', '02-739-8288', '554')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서대문구 충정로 7 (충정로3가)',
    telno = '02-739-8288',
    seatscale = '554';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003699', '서울특별시 용산구 신흥로 33 (용산동2가)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 용산구 신흥로 33 (용산동2가)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004416', '서울특별시 동작구 동작대로11길 87 (사당동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 동작구 동작대로11길 87 (사당동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002911', '서울특별시 마포구 월드컵로23길 82-3(망원동)', '02-332-8235', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 월드컵로23길 82-3(망원동)',
    telno = '02-332-8235',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001544', '서울특별시 마포구 어울마당로 94-8 (서교동)', '02-324-9090', '100')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 어울마당로 94-8 (서교동)',
    telno = '02-324-9090',
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002264', '강원도 정선군 정선읍 애산로 51', '033-560-3000', '612')
ON DUPLICATE KEY UPDATE
    adres = '강원도 정선군 정선읍 애산로 51',
    telno = '033-560-3000',
    seatscale = '612';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003824', '경상남도 사천시 사남면 병둔1길 7', NULL, '50')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 사천시 사남면 병둔1길 7',
    telno = NULL,
    seatscale = '50';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000474', '충청남도 천안시 서북구 번영로 156 (불당동)', '00-1577-3900', '1064')
ON DUPLICATE KEY UPDATE
    adres = '충청남도 천안시 서북구 번영로 156 (불당동)',
    telno = '00-1577-3900',
    seatscale = '1064';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001207', '서울특별시 종로구 대학로8가길 80 (동숭동)', '010-9012-6001', '120')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 대학로8가길 80 (동숭동)',
    telno = '010-9012-6001',
    seatscale = '120';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004319', '서울특별시 종로구 북촌로 67-4 (가회동)', '070-4001-0820', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 북촌로 67-4 (가회동)',
    telno = '070-4001-0820',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000300', '인천광역시 남구 인하로 126 (용현동)', '032-866-3970', '114')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 남구 인하로 126 (용현동)',
    telno = '032-866-3970',
    seatscale = '114';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001920', '부산광역시 남구 용소로13번길 30 (대연동)', '00-1600-1716', '119')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 남구 용소로13번길 30 (대연동)',
    telno = '00-1600-1716',
    seatscale = '119';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001593', '대전광역시 대덕구 한남로 70 (오정동)', '042-629-8099', '2042')
ON DUPLICATE KEY UPDATE
    adres = '대전광역시 대덕구 한남로 70 (오정동)',
    telno = '042-629-8099',
    seatscale = '2042';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003992', '서울특별시 용산구 한강대로14길 35-18 (한강로3가)', '010-8866-2213', '50')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 용산구 한강대로14길 35-18 (한강로3가)',
    telno = '010-8866-2213',
    seatscale = '50';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004639', '서울특별시 용산구 녹사평대로26길 84-3 (이태원동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 용산구 녹사평대로26길 84-3 (이태원동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003931', '서울특별시 마포구 와우산로14길 4 (상수동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 와우산로14길 4 (상수동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002963', '전라북도 전주시 완산구 전주객사2길 74(고사동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 전주시 완산구 전주객사2길 74(고사동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001514', '전라북도 전주시 덕진구 안덕원로 71 (진북동)', '063-270-1623', '1162')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 전주시 덕진구 안덕원로 71 (진북동)',
    telno = '063-270-1623',
    seatscale = '1162';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003718', '경상남도 창원시 성산구 원이대로589번길 12 (용호동)', NULL, '50')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 창원시 성산구 원이대로589번길 12 (용호동)',
    telno = NULL,
    seatscale = '50';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000370', '인천광역시 서구 원창로 92 (원창동)', '032-577-7979', '216')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 서구 원창로 92 (원창동)',
    telno = '032-577-7979',
    seatscale = '216';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003631', '경기도 수원시 권선구 경수대로 371 (권선동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 수원시 권선구 경수대로 371 (권선동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001933', '제주특별자치도 서귀포시 안덕면 신화역사로304번길 38 (서광리)', '00-1670-1188', '2000')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 서귀포시 안덕면 신화역사로304번길 38 (서광리)',
    telno = '00-1670-1188',
    seatscale = '2000';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004623', '경기도 남양주시 진접읍 해밀예당2로 35', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 남양주시 진접읍 해밀예당2로 35',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003354', '전라북도 전주시 완산구 중화산로 83(중화산동2가)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 전주시 완산구 중화산로 83(중화산동2가)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002257', '경상북도 포항시 남구 희망대로 810 (대도동)', '054-280-9505', '2500')
ON DUPLICATE KEY UPDATE
    adres = '경상북도 포항시 남구 희망대로 810 (대도동)',
    telno = '054-280-9505',
    seatscale = '2500';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002745', '서울특별시 영등포구 영등포로34길 3 (영등포동4가)', '010-2642-0435', '40')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 영등포구 영등포로34길 3 (영등포동4가)',
    telno = '010-2642-0435',
    seatscale = '40';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003703', '경기도 광명시 소하로109번길 8 (소하동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 광명시 소하로109번길 8 (소하동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004271', '경기도 용인시 수지구 동천로113번길 22-10 (동천동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 용인시 수지구 동천로113번길 22-10 (동천동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002574', '충청남도 천안시 동남구 천안대로 429-13 (삼룡동)', '041-521-2891', '328')
ON DUPLICATE KEY UPDATE
    adres = '충청남도 천안시 동남구 천안대로 429-13 (삼룡동)',
    telno = '041-521-2891',
    seatscale = '328';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000407', '충청북도 충주시 중원대로 3306 (호암동)', '043-870-7832', '291')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 충주시 중원대로 3306 (호암동)',
    telno = '043-870-7832',
    seatscale = '291';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001279', '강원도 원주시 중앙로 89 (중앙동)', '033-734-3688', '164')
ON DUPLICATE KEY UPDATE
    adres = '강원도 원주시 중앙로 89 (중앙동)',
    telno = '033-734-3688',
    seatscale = '164';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001208', '서울특별시 종로구 대학로 57 (연건동)', '02-742-0300', '852')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 대학로 57 (연건동)',
    telno = '02-742-0300',
    seatscale = '852';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001882', '서울특별시 중구 퇴계로30길 15-1 (필동1가)', '02-2276-2562', '80')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 중구 퇴계로30길 15-1 (필동1가)',
    telno = '02-2276-2562',
    seatscale = '80';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003858', '광주광역시 서구 천변좌하로 504 (쌍촌동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '광주광역시 서구 천변좌하로 504 (쌍촌동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001253', '전라남도 여수시 흥국로 41 (학동)', '061-691-0654', '180')
ON DUPLICATE KEY UPDATE
    adres = '전라남도 여수시 흥국로 41 (학동)',
    telno = '061-691-0654',
    seatscale = '180';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000874', '경상북도 칠곡군 왜관읍 관문로1길 32', '054-979-5102', '3510')
ON DUPLICATE KEY UPDATE
    adres = '경상북도 칠곡군 왜관읍 관문로1길 32',
    telno = '054-979-5102',
    seatscale = '3510';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001667', '대전광역시 유성구 동서대로 125 (덕명동)', '042-821-1114', '861')
ON DUPLICATE KEY UPDATE
    adres = '대전광역시 유성구 동서대로 125 (덕명동)',
    telno = '042-821-1114',
    seatscale = '861';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000948', '경기도 용인시 수지구 죽전로168번길 9 (죽전동)', '031-896-7613', '680')
ON DUPLICATE KEY UPDATE
    adres = '경기도 용인시 수지구 죽전로168번길 9 (죽전동)',
    telno = '031-896-7613',
    seatscale = '680';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002440', '서울특별시 종로구 경희궁1길 1 (신문로2가)', '070-4609-6491', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 경희궁1길 1 (신문로2가)',
    telno = '070-4609-6491',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004054', '광주광역시 동구 문화전당로 29-1 (남동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '광주광역시 동구 문화전당로 29-1 (남동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002259', '경상남도 창원시 성산구 원이대로 450 (중앙동)', '055-712-0577', '32976')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 창원시 성산구 원이대로 450 (중앙동)',
    telno = '055-712-0577',
    seatscale = '32976';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002443', '서울특별시 마포구 동교로34길 6 (연남동)', '010-3071-0486', '10')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 동교로34길 6 (연남동)',
    telno = '010-3071-0486',
    seatscale = '10';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002054', '충청남도 천안시 동남구 신촌1길 23 (신방동)', '041-552-2080', '150')
ON DUPLICATE KEY UPDATE
    adres = '충청남도 천안시 동남구 신촌1길 23 (신방동)',
    telno = '041-552-2080',
    seatscale = '150';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001874', '서울특별시 강남구 선릉로 547 (역삼동)', '010-4641-8252', '100')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 선릉로 547 (역삼동)',
    telno = '010-4641-8252',
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002781', '서울특별시 종로구 대학로11길 23 (명륜4가)', NULL, '170')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 대학로11길 23 (명륜4가)',
    telno = NULL,
    seatscale = '170';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001602', '경기도 광주시 청석로 288-9 (쌍령동)', '031-766-7585', '207')
ON DUPLICATE KEY UPDATE
    adres = '경기도 광주시 청석로 288-9 (쌍령동)',
    telno = '031-766-7585',
    seatscale = '207';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002562', '강원도 홍천군 홍천읍 연봉중앙로 11-8', '033-434-2080', '225')
ON DUPLICATE KEY UPDATE
    adres = '강원도 홍천군 홍천읍 연봉중앙로 11-8',
    telno = '033-434-2080',
    seatscale = '225';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002388', '대구광역시 수성구 용학로 106-7 (두산동)', '00-1899-1001', '3000')
ON DUPLICATE KEY UPDATE
    adres = '대구광역시 수성구 용학로 106-7 (두산동)',
    telno = '00-1899-1001',
    seatscale = '3000';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000441', '충청남도 청양군 청양읍 문화예술로 187', '041-940-2734', '1089')
ON DUPLICATE KEY UPDATE
    adres = '충청남도 청양군 청양읍 문화예술로 187',
    telno = '041-940-2734',
    seatscale = '1089';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003215', '서울특별시 종로구 대학로 156(혜화동)', '02-747-6943', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 대학로 156(혜화동)',
    telno = '02-747-6943',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003177', '서울특별시 성북구 화랑로32길 146-37(석관동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 성북구 화랑로32길 146-37(석관동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003437', '충청남도 공주시 사곡면 모단길 76', '041-841-1811', '0')
ON DUPLICATE KEY UPDATE
    adres = '충청남도 공주시 사곡면 모단길 76',
    telno = '041-841-1811',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004434', '서울특별시 종로구 창경궁로26길 33 (명륜4가)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 창경궁로26길 33 (명륜4가)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002893', '강원도 강릉시 난설헌로193번길 1-29(초당동)', '033-640-4798', '0')
ON DUPLICATE KEY UPDATE
    adres = '강원도 강릉시 난설헌로193번길 1-29(초당동)',
    telno = '033-640-4798',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002615', '경기도 화성시 향남읍 향남로 470', '031-371-0011', '40423')
ON DUPLICATE KEY UPDATE
    adres = '경기도 화성시 향남읍 향남로 470',
    telno = '031-371-0011',
    seatscale = '40423';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001696', '인천광역시 연수구 인천타워대로 250 (송도동)', '032-832-7994', '300')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 연수구 인천타워대로 250 (송도동)',
    telno = '032-832-7994',
    seatscale = '300';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004119', '서울특별시 서초구 주흥길 12 (반포동)', NULL, '80')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서초구 주흥길 12 (반포동)',
    telno = NULL,
    seatscale = '80';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003352', '서울특별시 마포구 와우산로17길 19-22(서교동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 와우산로17길 19-22(서교동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004224', '경기도 평택시 팽성읍 안정순환로267번길 42', NULL, '350')
ON DUPLICATE KEY UPDATE
    adres = '경기도 평택시 팽성읍 안정순환로267번길 42',
    telno = NULL,
    seatscale = '350';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001268', '서울특별시 종로구 돈화문로 13 (관수동) 서울극장', '02-766-7848', '488')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 돈화문로 13 (관수동) 서울극장',
    telno = '02-766-7848',
    seatscale = '488';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001414', '서울특별시 종로구 동숭길 78 (동숭동) 지하1층', '010-6802-1974', '120')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 동숭길 78 (동숭동) 지하1층',
    telno = '010-6802-1974',
    seatscale = '120';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003053', '서울특별시 영등포구 도림로126길 1(문래동3가)', '010-8833-2852', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 영등포구 도림로126길 1(문래동3가)',
    telno = '010-8833-2852',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003100', '경기도 용인시 처인구 명지로60번길 23-10(역북동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 용인시 처인구 명지로60번길 23-10(역북동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001591', '서울특별시 강남구 압구정로29길 21', '02-3449-5390', '300')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 압구정로29길 21',
    telno = '02-3449-5390',
    seatscale = '300';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000937', '충청북도 진천군 진천읍 상산로 42', '043-539-3834', '464')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 진천군 진천읍 상산로 42',
    telno = '043-539-3834',
    seatscale = '464';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002727', '대전광역시 유성구 대덕대로578번길 14 (도룡동)', '042-861-5999', '0')
ON DUPLICATE KEY UPDATE
    adres = '대전광역시 유성구 대덕대로578번길 14 (도룡동)',
    telno = '042-861-5999',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003886', '서울특별시 마포구 와우산로33길 27 (서교동) 1층', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 와우산로33길 27 (서교동) 1층',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000188', '서울특별시 종로구 대학로 144 (혜화동) 중원빌딩 지하1층', '02-764-6460', '126')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 대학로 144 (혜화동) 중원빌딩 지하1층',
    telno = '02-764-6460',
    seatscale = '126';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003119', '제주특별자치도 제주시 서광로2길 24(오라일동)', NULL, '21787')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 서광로2길 24(오라일동)',
    telno = NULL,
    seatscale = '21787';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001600', '서울특별시 종로구 성균관로 87 (명륜1가)', '02-3676-2352', '200')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 성균관로 87 (명륜1가)',
    telno = '02-3676-2352',
    seatscale = '200';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000332', '경기도 평택시 경기대로 1366 (서정동)', '031-8053-3570', '913')
ON DUPLICATE KEY UPDATE
    adres = '경기도 평택시 경기대로 1366 (서정동)',
    telno = '031-8053-3570',
    seatscale = '913';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003705', '전라북도 군산시 번영로 2 (동흥남동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 군산시 번영로 2 (동흥남동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001341', '강원도 춘천시 한림대학길 1', '033-248-1271', '780')
ON DUPLICATE KEY UPDATE
    adres = '강원도 춘천시 한림대학길 1',
    telno = '033-248-1271',
    seatscale = '780';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004408', '강원특별자치도 양양군 현남면 창리길 19', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '강원특별자치도 양양군 현남면 창리길 19',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001834', '서울특별시 성북구 성북로15길 9 (성북동) ', '02-3675-3402', '30')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 성북구 성북로15길 9 (성북동) ',
    telno = '02-3675-3402',
    seatscale = '30';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001214', '서울특별시 종로구 이화장1길 24 (이화동)', '02-766-8484', '50')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 이화장1길 24 (이화동)',
    telno = '02-766-8484',
    seatscale = '50';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001904', '경상북도 포항시 북구 흥해읍 신덕로 60 (죽천리)', '054-251-8000', '2000')
ON DUPLICATE KEY UPDATE
    adres = '경상북도 포항시 북구 흥해읍 신덕로 60 (죽천리)',
    telno = '054-251-8000',
    seatscale = '2000';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003406', '서울특별시 서대문구 연희로26길 20 (연희동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서대문구 연희로26길 20 (연희동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001630', '서울특별시 서초구 남부순환로340길 15 (서초동) 서초구립한우리정보문화센터', '02-2055-0909', '180')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서초구 남부순환로340길 15 (서초동) 서초구립한우리정보문화센터',
    telno = '02-2055-0909',
    seatscale = '180';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004522', '인천광역시 동구 우각로 6 (창영동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 동구 우각로 6 (창영동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003288', '경상북도 포항시 북구 죽파로 6(용흥동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경상북도 포항시 북구 죽파로 6(용흥동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000577', '서울특별시 종로구 대학로12길 38 (동숭동)', '02-3673-0554', '98')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 대학로12길 38 (동숭동)',
    telno = '02-3673-0554',
    seatscale = '98';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000753', '서울특별시 서대문구 신촌역로 13 (대현동)', '02-313-7777', '100')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서대문구 신촌역로 13 (대현동)',
    telno = '02-313-7777',
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003930', '강원특별자치도 춘천시 시청길 11 (옥천동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '강원특별자치도 춘천시 시청길 11 (옥천동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002406', '서울특별시 마포구 월드컵로15길 27 (망원동)', '070-4257-8080', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 월드컵로15길 27 (망원동)',
    telno = '070-4257-8080',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002136', '전라북도 군산시 동령길 33-1 (장미동)', NULL, '50')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 군산시 동령길 33-1 (장미동)',
    telno = NULL,
    seatscale = '50';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004588', '서울특별시 마포구 연희로1길 10 (동교동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 연희로1길 10 (동교동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002089', '강원도 평창군 대관령면 솔봉로 325', NULL, '70000')
ON DUPLICATE KEY UPDATE
    adres = '강원도 평창군 대관령면 솔봉로 325',
    telno = NULL,
    seatscale = '70000';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000023', '인천광역시 계양구 방축로 21(방축동 108-1)  인천어린이과학관', '032-550-3300', '412')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 계양구 방축로 21(방축동 108-1)  인천어린이과학관',
    telno = '032-550-3300',
    seatscale = '412';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003636', '전라남도 무안군 삼향읍 어진누리길 30', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '전라남도 무안군 삼향읍 어진누리길 30',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003562', '서울특별시 노원구 동일로214길 32 (상계동)', '02-950-5401', '680')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 노원구 동일로214길 32 (상계동)',
    telno = '02-950-5401',
    seatscale = '680';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001614', '대구광역시 중구 달구벌대로 2232-18 (대봉동)', '053-426-1545', '100')
ON DUPLICATE KEY UPDATE
    adres = '대구광역시 중구 달구벌대로 2232-18 (대봉동)',
    telno = '053-426-1545',
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002620', '인천광역시 중구 우현로35번길 22-1 (신포동)', '010-7145-9161', '50')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 중구 우현로35번길 22-1 (신포동)',
    telno = '010-7145-9161',
    seatscale = '50';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002631', '서울특별시 종로구 삼일대로 428 (낙원동)', '02-742-4231', '586')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 삼일대로 428 (낙원동)',
    telno = '02-742-4231',
    seatscale = '586';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003863', '서울특별시 동대문구 이문로 107 (이문동)', '02-2173-2114', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 동대문구 이문로 107 (이문동)',
    telno = '02-2173-2114',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000416', '서울특별시 종로구 동숭길 25 (동숭동)', '02-745-8833', '176')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 동숭길 25 (동숭동)',
    telno = '02-745-8833',
    seatscale = '176';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003452', '제주특별자치도 제주시 조천읍 선흘동2길 20-7', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 조천읍 선흘동2길 20-7',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000409', '충청북도 진천군 진천읍 문화로 69-4', '043-539-3613', '1558')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 진천군 진천읍 문화로 69-4',
    telno = '043-539-3613',
    seatscale = '1558';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000281', '대구광역시 달서구 두류공원로 200 (두류동)', '053-620-0001', '700')
ON DUPLICATE KEY UPDATE
    adres = '대구광역시 달서구 두류공원로 200 (두류동)',
    telno = '053-620-0001',
    seatscale = '700';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002276', '충청남도 공주시 신풍면 신풍길 85 ', '041-733-0726', '0')
ON DUPLICATE KEY UPDATE
    adres = '충청남도 공주시 신풍면 신풍길 85 ',
    telno = '041-733-0726',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003158', '서울특별시 마포구 어울마당로 94-8(서교동)', '070-4887-1267', '130')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 어울마당로 94-8(서교동)',
    telno = '070-4887-1267',
    seatscale = '130';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003663', '인천광역시 남동구 논고개로 81 (논현동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 남동구 논고개로 81 (논현동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002895', '서울특별시 중구 세종대로 135(태평로1가)', '02-2171-7000', '100')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 중구 세종대로 135(태평로1가)',
    telno = '02-2171-7000',
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003477', '부산광역시 해운대구 센텀4로 15 (우동)', '00-1544-5110', '600')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 해운대구 센텀4로 15 (우동)',
    telno = '00-1544-5110',
    seatscale = '600';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001841', '인천광역시 중구 영종해안남로321번길 186 (운서동)', '00-1833-8855', '1820')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 중구 영종해안남로321번길 186 (운서동)',
    telno = '00-1833-8855',
    seatscale = '1820';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004032', '경상남도 창원시 마산합포구 해안대로 224-17 (신포동1가)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 창원시 마산합포구 해안대로 224-17 (신포동1가)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002317', '부산광역시 금정구 금정로 89 (장전동)', '051-517-4773', '100')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 금정구 금정로 89 (장전동)',
    telno = '051-517-4773',
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002414', '서울특별시 마포구 양화로6길 19 (서교동)', '010-5360-2821', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 양화로6길 19 (서교동)',
    telno = '010-5360-2821',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003740', '서울특별시 서초구 마방로6길 37 (양재동)', NULL, '80')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서초구 마방로6길 37 (양재동)',
    telno = NULL,
    seatscale = '80';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003875', '서울특별시 강남구 논현로 736 (논현동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 논현로 736 (논현동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002220', '부산광역시 금정구 금정로 94 (장전동)', '070-7375-7867', '43')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 금정구 금정로 94 (장전동)',
    telno = '070-7375-7867',
    seatscale = '43';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000845', '인천광역시 서구 서달로 190 (가정동)', '032-580-1150', '1401')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 서구 서달로 190 (가정동)',
    telno = '032-580-1150',
    seatscale = '1401';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003960', '경기도 화성시 지산1길 22-4 (영천동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 화성시 지산1길 22-4 (영천동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004445', '서울특별시 용산구 청파로 269 (청파동3가)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 용산구 청파로 269 (청파동3가)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001107', '서울특별시 양천구 목동동로 233 (목동) 한국방송회관', '070-7581-8902', '290')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 양천구 목동동로 233 (목동) 한국방송회관',
    telno = '070-7581-8902',
    seatscale = '290';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001238', '제주특별자치도 제주시 신산로 82 (일도이동)', '064-727-7800', '336')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 신산로 82 (일도이동)',
    telno = '064-727-7800',
    seatscale = '336';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003695', '서울특별시 금천구 디지털로9길 56 (가산동)', NULL, '80')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 금천구 디지털로9길 56 (가산동)',
    telno = NULL,
    seatscale = '80';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000398', '제주특별자치도 제주시 제주대학로 102 (아라일동)', '064-754-4697', '448')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 제주대학로 102 (아라일동)',
    telno = '064-754-4697',
    seatscale = '448';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001572', '경기도 평택시 현덕면 평택호길 147', '031-683-3891', '857')
ON DUPLICATE KEY UPDATE
    adres = '경기도 평택시 현덕면 평택호길 147',
    telno = '031-683-3891',
    seatscale = '857';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002058', '서울특별시 영등포구 도림로 428-1 (문래동3가)', '070-7517-6961', '25')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 영등포구 도림로 428-1 (문래동3가)',
    telno = '070-7517-6961',
    seatscale = '25';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003906', '충청북도 충주시 관아1길 20 (성내동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 충주시 관아1길 20 (성내동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002382', '서울특별시 광진구 자양로11길 18 (자양동)', '02-158-4840', '50')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 광진구 자양로11길 18 (자양동)',
    telno = '02-158-4840',
    seatscale = '50';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000262', '제주특별자치도 제주시 오남로 231 (오라이동)', '064-728-1509', '2064')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 오남로 231 (오라이동)',
    telno = '064-728-1509',
    seatscale = '2064';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004192', '서울특별시 종로구 북촌로 61 (가회동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 북촌로 61 (가회동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004645', '경기도 포천시 소흘읍 광릉수목원로 619-27', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 포천시 소흘읍 광릉수목원로 619-27',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004638', '제주특별자치도 제주시 동문로2길 8 (일도일동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 동문로2길 8 (일도일동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002387', '서울특별시 강남구 테헤란로 517 (삼성동) 10층', '02-3467-6608', '420')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 테헤란로 517 (삼성동) 10층',
    telno = '02-3467-6608',
    seatscale = '420';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002295', '경기도 고양시 일산동구 성현로 537 (사리현동)', '031-969-6191', '380')
ON DUPLICATE KEY UPDATE
    adres = '경기도 고양시 일산동구 성현로 537 (사리현동)',
    telno = '031-969-6191',
    seatscale = '380';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004435', '서울특별시 서대문구 연세로7안길 34-3 (창천동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서대문구 연세로7안길 34-3 (창천동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002584', '서울특별시 강동구 천호대로 1005 (천호동)', '02-2225-7557', '420')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강동구 천호대로 1005 (천호동)',
    telno = '02-2225-7557',
    seatscale = '420';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004005', '경상북도 경주시 동방안길 26 (동방동)', NULL, '20')
ON DUPLICATE KEY UPDATE
    adres = '경상북도 경주시 동방안길 26 (동방동)',
    telno = NULL,
    seatscale = '20';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003168', '서울특별시 성동구 상원6나길 24(성수동1가, 청호 서울숲 뜨레피움 오피스텔)', '02-6212-1747', '120')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 성동구 상원6나길 24(성수동1가, 청호 서울숲 뜨레피움 오피스텔)',
    telno = '02-6212-1747',
    seatscale = '120';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003117', '대구광역시 서구 북비산로 378-1(비산동)', '053-628-1205', '80')
ON DUPLICATE KEY UPDATE
    adres = '대구광역시 서구 북비산로 378-1(비산동)',
    telno = '053-628-1205',
    seatscale = '80';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002645', '전라남도 여수시 진남체육관길 74 (오림동)', '061-659-5870', '4197')
ON DUPLICATE KEY UPDATE
    adres = '전라남도 여수시 진남체육관길 74 (오림동)',
    telno = '061-659-5870',
    seatscale = '4197';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001509', '제주특별자치도 제주시 516로 2870 (영평동) 제주국제대학교', '064-754-0200', '315')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 516로 2870 (영평동) 제주국제대학교',
    telno = '064-754-0200',
    seatscale = '315';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004576', '경상남도 창원시 진해구 천자로 103 (덕산동)', NULL, '964')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 창원시 진해구 천자로 103 (덕산동)',
    telno = NULL,
    seatscale = '964';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003972', '서울특별시 강남구 강남대로 588 (논현동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 강남대로 588 (논현동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001563', '경상북도 포항시 북구 중앙로 292-1 (상원동)', '054-283-1152', '150')
ON DUPLICATE KEY UPDATE
    adres = '경상북도 포항시 북구 중앙로 292-1 (상원동)',
    telno = '054-283-1152',
    seatscale = '150';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000713', '경상남도 진주시 남강로1번길 96-8 (판문동)', '055-749-7919', '218')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 진주시 남강로1번길 96-8 (판문동)',
    telno = '055-749-7919',
    seatscale = '218';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004078', '서울특별시 은평구 진관3로 77 (진관동, 은평뉴타운 구파발)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 은평구 진관3로 77 (진관동, 은평뉴타운 구파발)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002878', '서울특별시 서초구 반포대로 27(서초동)', '02-522-8844', '220')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서초구 반포대로 27(서초동)',
    telno = '02-522-8844',
    seatscale = '220';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004277', '충청남도 논산시 은진면 탑정로 596', '010-2915-2959', '55')
ON DUPLICATE KEY UPDATE
    adres = '충청남도 논산시 은진면 탑정로 596',
    telno = '010-2915-2959',
    seatscale = '55';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004569', '서울특별시 강남구 봉은사로 306 (역삼동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 봉은사로 306 (역삼동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002083', '인천광역시 서구 봉수대로 806 (연희동)', '032-456-2100', '29376')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 서구 봉수대로 806 (연희동)',
    telno = '032-456-2100',
    seatscale = '29376';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003776', '서울특별시 송파구 송이로32길 19 (문정동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 송파구 송이로32길 19 (문정동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001433', '대구광역시 수성구 팔현길 212 - 0 호텔인터불고', '053-602-7114', '1500')
ON DUPLICATE KEY UPDATE
    adres = '대구광역시 수성구 팔현길 212 - 0 호텔인터불고',
    telno = '053-602-7114',
    seatscale = '1500';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002303', '서울특별시 마포구 와우산로 156 (서교동)', '010-5500-8711', '70')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 와우산로 156 (서교동)',
    telno = '010-5500-8711',
    seatscale = '70';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001354', '전라북도 전주시 완산구 향교길 119-6 (교동) 전주동헌', '063-281-5271', '20')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 전주시 완산구 향교길 119-6 (교동) 전주동헌',
    telno = '063-281-5271',
    seatscale = '20';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004652', '서울특별시 중구 장충단로13길 20 (을지로6가)', NULL, '80')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 중구 장충단로13길 20 (을지로6가)',
    telno = NULL,
    seatscale = '80';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003986', '서울특별시 강남구 선릉로 603 (논현동) 지하1층', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 선릉로 603 (논현동) 지하1층',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003970', '경상남도 거제시 장승포로1길 13 (장승포동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 거제시 장승포로1길 13 (장승포동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004401', '서울특별시 마포구 와우산로29길 54 (서교동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 와우산로29길 54 (서교동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002369', '전라남도 여수시 대통1길 55 (화장동)', NULL, '934')
ON DUPLICATE KEY UPDATE
    adres = '전라남도 여수시 대통1길 55 (화장동)',
    telno = NULL,
    seatscale = '934';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000832', '부산광역시 해운대구 양운로 97 (좌동)', '051-749-7651', '588')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 해운대구 양운로 97 (좌동)',
    telno = '051-749-7651',
    seatscale = '588';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003491', '충청남도 서천군 장항읍 장항로145번길 10', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '충청남도 서천군 장항읍 장항로145번길 10',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004490', '서울특별시 종로구 인왕산로1길 21 (사직동)', NULL, '326')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 인왕산로1길 21 (사직동)',
    telno = NULL,
    seatscale = '326';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003749', '인천광역시 연수구 인천타워대로132번길 24 (송도동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 연수구 인천타워대로132번길 24 (송도동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002874', '서울특별시 강북구 인수봉로 301(수유동)', '010-2721-8699', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강북구 인수봉로 301(수유동)',
    telno = '010-2721-8699',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000893', '경기도 성남시 중원구 둔촌대로 332 (하대원동)', '031-729-9300', '199')
ON DUPLICATE KEY UPDATE
    adres = '경기도 성남시 중원구 둔촌대로 332 (하대원동)',
    telno = '031-729-9300',
    seatscale = '199';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002332', '경상북도 포항시 남구 행복길 120 (효자동)', '054-221-9755', '731')
ON DUPLICATE KEY UPDATE
    adres = '경상북도 포항시 남구 행복길 120 (효자동)',
    telno = '054-221-9755',
    seatscale = '731';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002113', '서울특별시 마포구 와우산로33길 27 (서교동)', '010-4785-5685', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 와우산로33길 27 (서교동)',
    telno = '010-4785-5685',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003955', '충청남도 공주시 산성시장5길 90 (금성동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '충청남도 공주시 산성시장5길 90 (금성동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004234', '서울특별시 성북구 동소문로6길 4-10 (동소문동2가)', NULL, '20')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 성북구 동소문로6길 4-10 (동소문동2가)',
    telno = NULL,
    seatscale = '20';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002262', '서울특별시 강남구 언주로 640 (논현동)', '02-3440-8000', '600')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 언주로 640 (논현동)',
    telno = '02-3440-8000',
    seatscale = '600';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000405', '충청북도 충주시 중앙로 128 (성내동)', '043-850-3914', '889')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 충주시 중앙로 128 (성내동)',
    telno = '043-850-3914',
    seatscale = '889';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001428', '서울특별시 중구 청계천로 40', '02-6441-3951', '190')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 중구 청계천로 40',
    telno = '02-6441-3951',
    seatscale = '190';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003698', '서울특별시 서대문구 이화여대길 50-6 (대현동)', NULL, '25')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서대문구 이화여대길 50-6 (대현동)',
    telno = NULL,
    seatscale = '25';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001659', '서울특별시 강남구 선릉로 524 (삼성동)', '010-3247-3188', '100')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 선릉로 524 (삼성동)',
    telno = '010-3247-3188',
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000071', '경기도 광명시 시청로 20 (철산동)', '02-2621-8800', '822')
ON DUPLICATE KEY UPDATE
    adres = '경기도 광명시 시청로 20 (철산동)',
    telno = '02-2621-8800',
    seatscale = '822';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003693', '서울특별시 종로구 동숭1길 1 (동숭동 187-3)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 동숭1길 1 (동숭동 187-3)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004288', '제주특별자치도 제주시 서광로2길 24 (오라일동)', NULL, '5400')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 서광로2길 24 (오라일동)',
    telno = NULL,
    seatscale = '5400';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001258', '충청북도 청주시 서원구 예체로 118-1 (사직동)', '043-201-2363', '710')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 청주시 서원구 예체로 118-1 (사직동)',
    telno = '043-201-2363',
    seatscale = '710';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002209', '강원도 춘천시 수변공원길 18 (삼천동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '강원도 춘천시 수변공원길 18 (삼천동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003721', '경상북도 상주시 동문1길 46 (인봉동)', NULL, '50')
ON DUPLICATE KEY UPDATE
    adres = '경상북도 상주시 동문1길 46 (인봉동)',
    telno = NULL,
    seatscale = '50';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001250', '서울특별시 종로구 창경궁로 260 (명륜2가)', '02-745-3641', '170')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 창경궁로 260 (명륜2가)',
    telno = '02-745-3641',
    seatscale = '170';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003681', '충청북도 청주시 청원구 충청대로 114 (율량동)', NULL, '1500')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 청주시 청원구 충청대로 114 (율량동)',
    telno = NULL,
    seatscale = '1500';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003488', '충청북도 제천시 청풍면 청풍호로50길 6', '043-648-4151', '0')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 제천시 청풍면 청풍호로50길 6',
    telno = '043-648-4151',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003897', '서울특별시 종로구 북촌로6길 13-2 (가회동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 북촌로6길 13-2 (가회동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002355', '서울특별시 서대문구 이화여대길 52 (대현동) ', '02-3277-3119', '2900')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서대문구 이화여대길 52 (대현동) ',
    telno = '02-3277-3119',
    seatscale = '2900';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001525', '부산광역시 남구 수영로334번길 13 (대연동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 남구 수영로334번길 13 (대연동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001900', '서울특별시 성북구 삼선교로16길 116 (삼선동2가)', '02-760-4214', '589')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 성북구 삼선교로16길 116 (삼선동2가)',
    telno = '02-760-4214',
    seatscale = '589';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000237', '서울특별시 종로구 우정국로 55 (견지동)', '02-2011-1700', '275')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 우정국로 55 (견지동)',
    telno = '02-2011-1700',
    seatscale = '275';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002732', '전라남도 여수시 돌산읍 무술목길 139', '061-924-1251', '394')
ON DUPLICATE KEY UPDATE
    adres = '전라남도 여수시 돌산읍 무술목길 139',
    telno = '061-924-1251',
    seatscale = '394';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001517', '전라북도 전주시 완산구 한지길 56 (풍남동3가) 한옥생활체험관 옆', '063-231-0771', '265')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 전주시 완산구 한지길 56 (풍남동3가) 한옥생활체험관 옆',
    telno = '063-231-0771',
    seatscale = '265';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002890', '경기도 안성시 원곡면 청원로 1865', '031-657-1865', '210')
ON DUPLICATE KEY UPDATE
    adres = '경기도 안성시 원곡면 청원로 1865',
    telno = '031-657-1865',
    seatscale = '210';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002799', '서울특별시 강남구 강남대로 426 (역삼동)', '070-4090-8005', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 강남대로 426 (역삼동)',
    telno = '070-4090-8005',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001263', '전라북도 전주시 완산구 전주천동로 20 - 0 전통문화센터', '063-280-7000', '774')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 전주시 완산구 전주천동로 20 - 0 전통문화센터',
    telno = '063-280-7000',
    seatscale = '774';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004431', '충청북도 제천시 의림대로42길 22 (고암동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 제천시 의림대로42길 22 (고암동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001360', '충청북도 제천시 숭의로 85 (화산동)', '043-641-5591', '1800')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 제천시 숭의로 85 (화산동)',
    telno = '043-641-5591',
    seatscale = '1800';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002228', '서울특별시 서초구 신반포로47길 52 (잠원동)', '02-545-8270', '70')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서초구 신반포로47길 52 (잠원동)',
    telno = '02-545-8270',
    seatscale = '70';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003193', '서울특별시 강남구 선릉로108길 7(삼성동)', NULL, '130')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 선릉로108길 7(삼성동)',
    telno = NULL,
    seatscale = '130';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003282', '경기도 안산시 단원구 동산로 81(원시동)', NULL, '400')
ON DUPLICATE KEY UPDATE
    adres = '경기도 안산시 단원구 동산로 81(원시동)',
    telno = NULL,
    seatscale = '400';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004555', '경기도 화성시 동탄첨단산업1로 27 (영천동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 화성시 동탄첨단산업1로 27 (영천동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003508', '대구광역시 북구 구암로 228 (구암동)', '053-312-3476', '110')
ON DUPLICATE KEY UPDATE
    adres = '대구광역시 북구 구암로 228 (구암동)',
    telno = '053-312-3476',
    seatscale = '110';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002675', '강원도 춘천시 서면 박사로 770', '033-240-1791', '0')
ON DUPLICATE KEY UPDATE
    adres = '강원도 춘천시 서면 박사로 770',
    telno = '033-240-1791',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001894', '서울특별시 노원구 상계로7길 23 (상계동)', '010-3009-7591', '100')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 노원구 상계로7길 23 (상계동)',
    telno = '010-3009-7591',
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000155', '경기도 성남시 분당구 분당수서로 501(정자동 4-6)', '00-1644-1333', '504')
ON DUPLICATE KEY UPDATE
    adres = '경기도 성남시 분당구 분당수서로 501(정자동 4-6)',
    telno = '00-1644-1333',
    seatscale = '504';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003141', '제주특별자치도 서귀포시 안덕면 산록남로 788', '064-794-5115', '0')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 서귀포시 안덕면 산록남로 788',
    telno = '064-794-5115',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002542', '전라북도 진안군 진안읍 대성길 5', '063-433-1671', '210')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 진안군 진안읍 대성길 5',
    telno = '063-433-1671',
    seatscale = '210';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004504', '제주특별자치도 제주시 애월읍 하소로 735', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 애월읍 하소로 735',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002077', '대전광역시 중구 대종로 373 (부사동)', '042-610-4900', '17371')
ON DUPLICATE KEY UPDATE
    adres = '대전광역시 중구 대종로 373 (부사동)',
    telno = '042-610-4900',
    seatscale = '17371';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004407', '서울특별시 성동구 뚝섬로17길 35 (성수동2가)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 성동구 뚝섬로17길 35 (성수동2가)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001362', '대구광역시 중구 달구벌대로 2077 ', '053-245-3902', '1050')
ON DUPLICATE KEY UPDATE
    adres = '대구광역시 중구 달구벌대로 2077 ',
    telno = '053-245-3902',
    seatscale = '1050';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004306', '서울특별시 구로구 디지털로32가길 25 (구로동)', NULL, '60')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 구로구 디지털로32가길 25 (구로동)',
    telno = NULL,
    seatscale = '60';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004634', '서울특별시 강남구 도산대로53길 39 (신사동)', NULL, '60')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 도산대로53길 39 (신사동)',
    telno = NULL,
    seatscale = '60';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000158', '인천광역시 중구 축항대로296번길 81 (신흥동3가)', '032-760-6400', '638')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 중구 축항대로296번길 81 (신흥동3가)',
    telno = '032-760-6400',
    seatscale = '638';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000790', '경상남도 창녕군 창녕읍 군청1길 35', '055-530-1911', '692')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 창녕군 창녕읍 군청1길 35',
    telno = '055-530-1911',
    seatscale = '692';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004421', '서울특별시 성북구 대사관로 121 (성북동)', NULL, '100')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 성북구 대사관로 121 (성북동)',
    telno = NULL,
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004535', '충청북도 충주시 남한강로 46 (금릉동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 충주시 남한강로 46 (금릉동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002300', '경기도 수원시 팔달구 경수대로 697 (지동)', '031-228-4678', '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 수원시 팔달구 경수대로 697 (지동)',
    telno = '031-228-4678',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001172', '서울특별시 종로구 대학로12길 69 (동숭동)', '02-6221-6485', '118')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 대학로12길 69 (동숭동)',
    telno = '02-6221-6485',
    seatscale = '118';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003936', '서울특별시 강남구 학동로3길 19 (논현동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 학동로3길 19 (논현동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001629', '서울특별시 용산구 한남대로 98 (한남동)', '02-790-3364', '189')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 용산구 한남대로 98 (한남동)',
    telno = '02-790-3364',
    seatscale = '189';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001225', '부산광역시 남구 용소로13번길 10', '010-7331-7674', '124')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 남구 용소로13번길 10',
    telno = '010-7331-7674',
    seatscale = '124';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002537', '제주특별자치도 제주시 고전길 26 (이도일동)', '064-728-3939', '505')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 고전길 26 (이도일동)',
    telno = '064-728-3939',
    seatscale = '505';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004473', '경상북도 경주시 엑스포로 9 (신평동)', '054-776-5502', '400')
ON DUPLICATE KEY UPDATE
    adres = '경상북도 경주시 엑스포로 9 (신평동)',
    telno = '054-776-5502',
    seatscale = '400';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001459', '서울특별시 종로구 대학로12길 73 (동숭동)', '02-731-9199', '314')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 대학로12길 73 (동숭동)',
    telno = '02-731-9199',
    seatscale = '314';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004465', '제주특별자치도 제주시 남성로 143-11 (삼도이동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 남성로 143-11 (삼도이동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001862', '서울특별시 종로구 성균관로3길 20-4 (명륜3가)', '010-5652-4807', '30')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 성균관로3길 20-4 (명륜3가)',
    telno = '010-5652-4807',
    seatscale = '30';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004591', '경기도 연천군 청산면 아우라지길 13-32', NULL, '5')
ON DUPLICATE KEY UPDATE
    adres = '경기도 연천군 청산면 아우라지길 13-32',
    telno = NULL,
    seatscale = '5';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004034', '부산광역시 해운대구 달맞이길 30 (중동, 엘시티)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 해운대구 달맞이길 30 (중동, 엘시티)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004309', '경기도 화성시 봉담읍 삼천병마로 1182', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 화성시 봉담읍 삼천병마로 1182',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003037', '서울특별시 용산구 이태원로 179(이태원동)', '02-3786-6000', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 용산구 이태원로 179(이태원동)',
    telno = '02-3786-6000',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002421', '전라북도 전주시 덕진구 구렛들1길 46 (팔복동1가)', '063-211-0288', '180')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 전주시 덕진구 구렛들1길 46 (팔복동1가)',
    telno = '063-211-0288',
    seatscale = '180';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001524', '서울특별시 마포구 성미산로 198 (연남동)', '010-9838-5768', '27')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 성미산로 198 (연남동)',
    telno = '010-9838-5768',
    seatscale = '27';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004662', '서울특별시 강남구 가로수길 69 (신사동)', '070-8830-0027', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 가로수길 69 (신사동)',
    telno = '070-8830-0027',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004383', '경기도 시흥시 거북섬로 116 (정왕동)', NULL, '50')
ON DUPLICATE KEY UPDATE
    adres = '경기도 시흥시 거북섬로 116 (정왕동)',
    telno = NULL,
    seatscale = '50';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003945', '강원특별자치도 속초시 중앙로46번길 45 (교동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '강원특별자치도 속초시 중앙로46번길 45 (교동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001801', '서울특별시 성동구 왕십리로 222 (사근동)', '02-2220-0135', '3000')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 성동구 왕십리로 222 (사근동)',
    telno = '02-2220-0135',
    seatscale = '3000';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003022', '제주특별자치도 제주시 해안마을서4길 100(해안동)', '064-795-8888', '0')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 해안마을서4길 100(해안동)',
    telno = '064-795-8888',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004206', '서울특별시 종로구 인사동1길 7 (인사동)', NULL, '25')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 인사동1길 7 (인사동)',
    telno = NULL,
    seatscale = '25';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002544', '경상북도 칠곡군 왜관읍 2번도로길 23', '054-974-0450', '360')
ON DUPLICATE KEY UPDATE
    adres = '경상북도 칠곡군 왜관읍 2번도로길 23',
    telno = '054-974-0450',
    seatscale = '360';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002149', '인천광역시 미추홀구 매소홀로 618 (문학동)', '032-200-7507', '49195')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 미추홀구 매소홀로 618 (문학동)',
    telno = '032-200-7507',
    seatscale = '49195';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002896', '서울특별시 마포구 잔다리로 44(서교동)', '02-332-7740', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 잔다리로 44(서교동)',
    telno = '02-332-7740',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001744', '울산광역시 북구 염포로 599 (양정동, 현대사원임대아파트, 현대자동차사택)', '052-219-2447', '192')
ON DUPLICATE KEY UPDATE
    adres = '울산광역시 북구 염포로 599 (양정동, 현대사원임대아파트, 현대자동차사택)',
    telno = '052-219-2447',
    seatscale = '192';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002942', '부산광역시 부산진구 서전로37번길 14-1(전포동)', '010-6607-3313', '40')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 부산진구 서전로37번길 14-1(전포동)',
    telno = '010-6607-3313',
    seatscale = '40';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002679', '충청북도 청주시 청원구 대성로 298 (내덕동)', '043-229-8114', '0')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 청주시 청원구 대성로 298 (내덕동)',
    telno = '043-229-8114',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004333', '경상남도 창원시 성산구 상남로 67 (상남동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 창원시 성산구 상남로 67 (상남동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004562', '서울특별시 강남구 도산대로 114 (논현동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 도산대로 114 (논현동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002553', '서울특별시 용산구 한강대로48길 17-6 (한강로2가)', '02-749-7285', '60')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 용산구 한강대로48길 17-6 (한강로2가)',
    telno = '02-749-7285',
    seatscale = '60';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002318', '대전광역시 서구 대덕대로162번길 11 (갈마동)', '042-537-9447', '80')
ON DUPLICATE KEY UPDATE
    adres = '대전광역시 서구 대덕대로162번길 11 (갈마동)',
    telno = '042-537-9447',
    seatscale = '80';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004552', '경기도 김포시 김포한강9로76번길 49 (구래동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 김포시 김포한강9로76번길 49 (구래동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001442', '서울특별시 종로구 동숭길 68 (동숭동)', '02-3673-1589', '100')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 동숭길 68 (동숭동)',
    telno = '02-3673-1589',
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004596', '경상남도 통영시 미수해안로 72 (미수동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 통영시 미수해안로 72 (미수동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003463', '충청남도 천안시 동남구 은행길 15 (문화동)', '041-418-3394', '272')
ON DUPLICATE KEY UPDATE
    adres = '충청남도 천안시 동남구 은행길 15 (문화동)',
    telno = '041-418-3394',
    seatscale = '272';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003187', '서울특별시 마포구 성미산로29길 35(연남동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 성미산로29길 35(연남동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002758', '경기도 화성시 정남면 세자로 285-22', '031-352-0213', '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 화성시 정남면 세자로 285-22',
    telno = '031-352-0213',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003029', '서울특별시 용산구 한강대로48길 17-6(한강로2가)', NULL, '120')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 용산구 한강대로48길 17-6(한강로2가)',
    telno = NULL,
    seatscale = '120';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003381', '대구광역시 중구 국채보상로 683(동인동2가)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '대구광역시 중구 국채보상로 683(동인동2가)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001271', '경상남도 통영시 큰발개1길 38 (도남동)', '055-650-0400', '1613')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 통영시 큰발개1길 38 (도남동)',
    telno = '055-650-0400',
    seatscale = '1613';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001937', '충청북도 진천군 진천읍 중앙북1길 11-10 (벽암리)', '043-539-3237', '288')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 진천군 진천읍 중앙북1길 11-10 (벽암리)',
    telno = '043-539-3237',
    seatscale = '288';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002397', '경상남도 통영시 도남로 195 (도남동)', '055-643-9322', '120')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 통영시 도남로 195 (도남동)',
    telno = '055-643-9322',
    seatscale = '120';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004103', '서울특별시 도봉구 마들로11길 77 (창동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 도봉구 마들로11길 77 (창동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001951', '전라북도 전주시 완산구 유연로 338 (중화산동2가)', '063-222-8771', '48')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 전주시 완산구 유연로 338 (중화산동2가)',
    telno = '063-222-8771',
    seatscale = '48';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003014', '인천광역시 중구 답동로30번길 9(경동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 중구 답동로30번길 9(경동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001669', '부산광역시 수영구 수영로 765-1 (수영동)', '051-623-6232', '90')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 수영구 수영로 765-1 (수영동)',
    telno = '051-623-6232',
    seatscale = '90';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001910', '경기도 고양시 일산서구 킨텍스로 217-60 (대화동)', '031-995-8036', '2800')
ON DUPLICATE KEY UPDATE
    adres = '경기도 고양시 일산서구 킨텍스로 217-60 (대화동)',
    telno = '031-995-8036',
    seatscale = '2800';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002752', '서울특별시 종로구 청계천로 105 (관수동)', '02-318-0903', '62')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 청계천로 105 (관수동)',
    telno = '02-318-0903',
    seatscale = '62';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003136', '경기도 광명시 오리로347번길 5-6(소하동)', '02-898-0505', '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 광명시 오리로347번길 5-6(소하동)',
    telno = '02-898-0505',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001907', '서울특별시 마포구 와우산로17길 19-22 (서교동)', '02-335-4576', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 와우산로17길 19-22 (서교동)',
    telno = '02-335-4576',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001277', '서울특별시 마포구 독막로6길 27 (합정동)', '02-766-9001', '30')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 독막로6길 27 (합정동)',
    telno = '02-766-9001',
    seatscale = '30';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000825', '서울특별시 종로구 대학로11길 38-11 (명륜4가)', '02-3672-7971', '140')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 대학로11길 38-11 (명륜4가)',
    telno = '02-3672-7971',
    seatscale = '140';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001297', '충청북도 청주시 흥덕구 직지대로 308 (복대동)', '043-909-2680', '540')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 청주시 흥덕구 직지대로 308 (복대동)',
    telno = '043-909-2680',
    seatscale = '540';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000156', '서울특별시 광진구 광나루로 441 (능동)', '02-2204-6028', '450')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 광진구 광나루로 441 (능동)',
    telno = '02-2204-6028',
    seatscale = '450';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001336', '강원도 원주시 문막읍 비야동길 11', '033-732-0827', '440')
ON DUPLICATE KEY UPDATE
    adres = '강원도 원주시 문막읍 비야동길 11',
    telno = '033-732-0827',
    seatscale = '440';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000591', '부산광역시 수영구 수영로 657 (광안동)', '070-8241-2560', '80')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 수영구 수영로 657 (광안동)',
    telno = '070-8241-2560',
    seatscale = '80';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001835', '인천광역시 부평구 부평문화로 77 (부평동)', '032-715-8357', '71')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 부평구 부평문화로 77 (부평동)',
    telno = '032-715-8357',
    seatscale = '71';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003710', '울산광역시 남구 왕생로81번길 9 (달동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '울산광역시 남구 왕생로81번길 9 (달동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003944', '전라남도 담양군 담양읍 지침1길 6', '061-383-8246', '0')
ON DUPLICATE KEY UPDATE
    adres = '전라남도 담양군 담양읍 지침1길 6',
    telno = '061-383-8246',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002976', '서울특별시 마포구 신촌로14길 24(노고산동)', '010-7225-1219', '40')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 신촌로14길 24(노고산동)',
    telno = '010-7225-1219',
    seatscale = '40';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002833', '인천광역시 서구 청라대로 20 (청라동)', '032-580-1196', '480')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 서구 청라대로 20 (청라동)',
    telno = '032-580-1196',
    seatscale = '480';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002287', '부산광역시 금정구 금강로 280 (장전동)', '010-3873-2200', '0')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 금정구 금강로 280 (장전동)',
    telno = '010-3873-2200',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002955', '대구광역시 남구 중앙대로49길 4(대명동)', '010-5782-9349', '40')
ON DUPLICATE KEY UPDATE
    adres = '대구광역시 남구 중앙대로49길 4(대명동)',
    telno = '010-5782-9349',
    seatscale = '40';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003367', '부산광역시 부산진구 전포대로190번길 3(전포동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 부산진구 전포대로190번길 3(전포동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002099', '경기도 남양주시 화도읍 비룡로 59 (마석우리)', '031-590-5498', '342')
ON DUPLICATE KEY UPDATE
    adres = '경기도 남양주시 화도읍 비룡로 59 (마석우리)',
    telno = '031-590-5498',
    seatscale = '342';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002549', '경기도 하남시 하남대로784번안길 10 (신장동)', '031-792-9119', '70')
ON DUPLICATE KEY UPDATE
    adres = '경기도 하남시 하남대로784번안길 10 (신장동)',
    telno = '031-792-9119',
    seatscale = '70';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002539', '부산광역시 금정구 장전온천천로113번길 17 (장전동)', '070-8273-9206', '53')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 금정구 장전온천천로113번길 17 (장전동)',
    telno = '070-8273-9206',
    seatscale = '53';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000562', '경상북도 포항시 북구 서동로 83 (덕산동)', '054-280-9380', '262')
ON DUPLICATE KEY UPDATE
    adres = '경상북도 포항시 북구 서동로 83 (덕산동)',
    telno = '054-280-9380',
    seatscale = '262';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003099', '세종특별자치시 시청대로 167(보람동)', '070-8882-3863', '60')
ON DUPLICATE KEY UPDATE
    adres = '세종특별자치시 시청대로 167(보람동)',
    telno = '070-8882-3863',
    seatscale = '60';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003050', '서울특별시 종로구 창신길 55(창신동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 창신길 55(창신동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002834', '경기도 김포시 양촌읍 양곡4로 164', '031-981-0909', '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 김포시 양촌읍 양곡4로 164',
    telno = '031-981-0909',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003103', '서울특별시 강남구 도산대로57길 8(청담동)', '010-2885-9199', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 도산대로57길 8(청담동)',
    telno = '010-2885-9199',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004374', '서울특별시 마포구 신촌로20길 12 (노고산동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 신촌로20길 12 (노고산동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004221', '대전광역시 중구 중교로 74 (대흥동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '대전광역시 중구 중교로 74 (대흥동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003179', '서울특별시 서초구 반포대로14길 29(서초동)', '010-9144-4503', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서초구 반포대로14길 29(서초동)',
    telno = '010-9144-4503',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001590', '경기도 고양시 일산서구 호수로 817 (대화동)', '031-822-2520', '540')
ON DUPLICATE KEY UPDATE
    adres = '경기도 고양시 일산서구 호수로 817 (대화동)',
    telno = '031-822-2520',
    seatscale = '540';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004441', '서울특별시 마포구 월드컵북로 120 (성산동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 월드컵북로 120 (성산동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003871', '충청북도 청주시 상당구 사직대로 338 (서문동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 청주시 상당구 사직대로 338 (서문동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001715', '제주특별자치도 제주시 노형로 89 (해안동)', '064-746-9007', '1400')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 노형로 89 (해안동)',
    telno = '064-746-9007',
    seatscale = '1400';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002543', '대구광역시 남구 양지로 114 (대명동)', '053-286-7879', '70')
ON DUPLICATE KEY UPDATE
    adres = '대구광역시 남구 양지로 114 (대명동)',
    telno = '053-286-7879',
    seatscale = '70';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004033', '경상북도 포항시 북구 신광면 비학로 558-96', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경상북도 포항시 북구 신광면 비학로 558-96',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001457', '서울특별시 종로구 동숭길 72 - 0', '02-747-7407', '101')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 동숭길 72 - 0',
    telno = '02-747-7407',
    seatscale = '101';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003917', '서울특별시 마포구 어울마당로 68 (서교동)', '010-8877-5497', '650')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 어울마당로 68 (서교동)',
    telno = '010-8877-5497',
    seatscale = '650';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002216', '부산광역시 북구 낙동대로1739번길 7 (구포동)', '051-364-4127', '0')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 북구 낙동대로1739번길 7 (구포동)',
    telno = '051-364-4127',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004276', '서울특별시 마포구 연남로 42 (연남동)', NULL, '30')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 연남로 42 (연남동)',
    telno = NULL,
    seatscale = '30';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002714', '인천광역시 연수구 국제항만대로326번길 57 (송도동)', '00-1599-5985', '0')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 연수구 국제항만대로326번길 57 (송도동)',
    telno = '00-1599-5985',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002002', '전라북도 전주시 덕진구 기린대로 451 (덕진동1가)', '063-239-2556', '30000')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 전주시 덕진구 기린대로 451 (덕진동1가)',
    telno = '063-239-2556',
    seatscale = '30000';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002044', '서울특별시 마포구 월드컵북로 1길 26-9 (서교동)', '010-9836-3522', '100')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 월드컵북로 1길 26-9 (서교동)',
    telno = '010-9836-3522',
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001369', '서울특별시 은평구 가좌로 208 (응암동)', '02-3151-1600', '180')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 은평구 가좌로 208 (응암동)',
    telno = '02-3151-1600',
    seatscale = '180';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004463', '충청남도 천안시 서북구 번영로 156 (불당동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '충청남도 천안시 서북구 번영로 156 (불당동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002415', '서울특별시 강남구 논현로79길 72 (역삼동)', '02-517-0378', '140')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 논현로79길 72 (역삼동)',
    telno = '02-517-0378',
    seatscale = '140';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001071', '충청남도 천안시 동남구 만남로 38 (신부동)', '070-8129-7420', '385')
ON DUPLICATE KEY UPDATE
    adres = '충청남도 천안시 동남구 만남로 38 (신부동)',
    telno = '070-8129-7420',
    seatscale = '385';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002237', '서울특별시 서대문구 연세로5길 38 (창천동)', '02-338-5544', '70')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서대문구 연세로5길 38 (창천동)',
    telno = '02-338-5544',
    seatscale = '70';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003948', '충청북도 제천시 동명로 77 (명동)', '043-641-5520', '799')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 제천시 동명로 77 (명동)',
    telno = '043-641-5520',
    seatscale = '799';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004393', '서울특별시 서대문구 신촌로31안길 3 (북아현동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서대문구 신촌로31안길 3 (북아현동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000095', '경기도 하남시 신평로 125 (덕풍동)', '031-790-7979', '1291')
ON DUPLICATE KEY UPDATE
    adres = '경기도 하남시 신평로 125 (덕풍동)',
    telno = '031-790-7979',
    seatscale = '1291';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003391', '강원도 원주시 종각길 15 (명륜동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '강원도 원주시 종각길 15 (명륜동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003523', '부산부산광역시 수영구 감포로8번길 15(민락동광역시 수영구 감포로8번길 15 (민락동)', '010-5581-5646', '150')
ON DUPLICATE KEY UPDATE
    adres = '부산부산광역시 수영구 감포로8번길 15(민락동광역시 수영구 감포로8번길 15 (민락동)',
    telno = '010-5581-5646',
    seatscale = '150';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000170', '서울특별시 강남구 영동대로 513 (삼성동)', '02-6000-0114', '13325')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 영동대로 513 (삼성동)',
    telno = '02-6000-0114',
    seatscale = '13325';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004597', '서울특별시 성북구 동소문로 65-2 (동소문동4가)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 성북구 동소문로 65-2 (동소문동4가)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002661', '강원도 인제군 인제읍 비봉로44번길 113', '033-460-2182', '250')
ON DUPLICATE KEY UPDATE
    adres = '강원도 인제군 인제읍 비봉로44번길 113',
    telno = '033-460-2182',
    seatscale = '250';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000244', '경상남도 창원시 진해구 진해대로 325 (태백동) 진해구민센터', '055-719-7882', '1359')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 창원시 진해구 진해대로 325 (태백동) 진해구민센터',
    telno = '055-719-7882',
    seatscale = '1359';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002841', '경상북도 포항시 북구 흥해읍 해안로 1374', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경상북도 포항시 북구 흥해읍 해안로 1374',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001952', '울산광역시 중구 문화의거리 14 (옥교동)', '010-3823-7602', '50')
ON DUPLICATE KEY UPDATE
    adres = '울산광역시 중구 문화의거리 14 (옥교동)',
    telno = '010-3823-7602',
    seatscale = '50';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004545', '서울특별시 종로구 인사동5길 25 (인사동)', '02-730-6711', '100')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 인사동5길 25 (인사동)',
    telno = '02-730-6711',
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002767', '서울특별시 마포구 와우산로 147-1 (서교동)', '010-2673-1847', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 와우산로 147-1 (서교동)',
    telno = '010-2673-1847',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001198', '경기도 김포시 통진읍 김포대로 2347-8', '031-983-3460', '217')
ON DUPLICATE KEY UPDATE
    adres = '경기도 김포시 통진읍 김포대로 2347-8',
    telno = '031-983-3460',
    seatscale = '217';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001664', '서울특별시 마포구 와우산로 117 (서교동) 이지플러스오피스텔 B1', '02-324-1421', '96')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 와우산로 117 (서교동) 이지플러스오피스텔 B1',
    telno = '02-324-1421',
    seatscale = '96';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000824', '경기도 이천시 부악로 40 (중리동)', '031-644-2100', '1651')
ON DUPLICATE KEY UPDATE
    adres = '경기도 이천시 부악로 40 (중리동)',
    telno = '031-644-2100',
    seatscale = '1651';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004601', '경상남도 창원시 성산구 중앙대로 151 (용호동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 창원시 성산구 중앙대로 151 (용호동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000336', '경기도 평택시 안중읍 서동대로 1531', '031-8024-8321', '936')
ON DUPLICATE KEY UPDATE
    adres = '경기도 평택시 안중읍 서동대로 1531',
    telno = '031-8024-8321',
    seatscale = '936';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001756', '전라북도 남원시 광한북로 54 (하정동) 4층', '063-620-6155', '99')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 남원시 광한북로 54 (하정동) 4층',
    telno = '063-620-6155',
    seatscale = '99';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002592', '서울특별시 마포구 잔다리로 21 (서교동)', '010-2318-0533', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 잔다리로 21 (서교동)',
    telno = '010-2318-0533',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003407', '부산광역시 수영구 장대골로 6 (광안동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 수영구 장대골로 6 (광안동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001617', '제주특별자치도 제주시 선돌목동길 56-26 (오등동)', '064-723-8878', '651')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 선돌목동길 56-26 (오등동)',
    telno = '064-723-8878',
    seatscale = '651';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000923', '강원도 정선군 정선읍 봉양3길 17', '033-560-2567', '303')
ON DUPLICATE KEY UPDATE
    adres = '강원도 정선군 정선읍 봉양3길 17',
    telno = '033-560-2567',
    seatscale = '303';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003778', '경기도 남양주시 화도읍 맷돌로 84', NULL, '140')
ON DUPLICATE KEY UPDATE
    adres = '경기도 남양주시 화도읍 맷돌로 84',
    telno = NULL,
    seatscale = '140';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003389', '전라남도 해남군 해남읍 수성4길 2', '061-533-5345', '44')
ON DUPLICATE KEY UPDATE
    adres = '전라남도 해남군 해남읍 수성4길 2',
    telno = '061-533-5345',
    seatscale = '44';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002441', '서울특별시 종로구 북촌로6길 30 (계동)', '010-8724-0529', '10')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 북촌로6길 30 (계동)',
    telno = '010-8724-0529',
    seatscale = '10';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003355', '충청남도 천안시 동남구 터미널3길 12(신부동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '충청남도 천안시 동남구 터미널3길 12(신부동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003205', '인천광역시 부평구 길주로 539(갈산동)', '032-511-3141', '302')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 부평구 길주로 539(갈산동)',
    telno = '032-511-3141',
    seatscale = '302';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001691', '대전광역시 유성구 엑스포로97번길 40 (도룡동)', '042-862-2221', '446')
ON DUPLICATE KEY UPDATE
    adres = '대전광역시 유성구 엑스포로97번길 40 (도룡동)',
    telno = '042-862-2221',
    seatscale = '446';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000166', '전라남도 해남군 해남읍 군청길 4(성내리 4)', '061-530-5137', '698')
ON DUPLICATE KEY UPDATE
    adres = '전라남도 해남군 해남읍 군청길 4(성내리 4)',
    telno = '061-530-5137',
    seatscale = '698';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003312', '강원도 춘천시 동면 소양강로 82', '033-255-7375', '0')
ON DUPLICATE KEY UPDATE
    adres = '강원도 춘천시 동면 소양강로 82',
    telno = '033-255-7375',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003739', '경상북도 구미시 옥계신당로5안길 14-5 (옥계동)', NULL, '50')
ON DUPLICATE KEY UPDATE
    adres = '경상북도 구미시 옥계신당로5안길 14-5 (옥계동)',
    telno = NULL,
    seatscale = '50';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001797', '서울특별시 서대문구 북아현로11가길 7 (북아현동)', '02-362-5700', '701')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서대문구 북아현로11가길 7 (북아현동)',
    telno = '02-362-5700',
    seatscale = '701';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003685', '서울특별시 중구 장충단로 72 (장충동2가)', NULL, '530')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 중구 장충단로 72 (장충동2가)',
    telno = NULL,
    seatscale = '530';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003547', '서울특별시 강남구 영동대로 520 (삼성동)', '02-2008-8814', '300')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 영동대로 520 (삼성동)',
    telno = '02-2008-8814',
    seatscale = '300';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003750', '서울특별시 서초구 방배중앙로29길 21 (방배동)', NULL, '50')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서초구 방배중앙로29길 21 (방배동)',
    telno = NULL,
    seatscale = '50';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002170', '전라북도 익산시 무왕로 1397 (부송동)', '063-859-4612', '18137')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 익산시 무왕로 1397 (부송동)',
    telno = '063-859-4612',
    seatscale = '18137';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002887', '충청남도 부여군 규암면 자온로 53-4', '070-8865-0148', '0')
ON DUPLICATE KEY UPDATE
    adres = '충청남도 부여군 규암면 자온로 53-4',
    telno = '070-8865-0148',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004649', '서울특별시 종로구 이화장길 58 (이화동)', NULL, '110')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 이화장길 58 (이화동)',
    telno = NULL,
    seatscale = '110';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004171', '서울특별시 중구 퇴계로36가길 46 (필동2가)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 중구 퇴계로36가길 46 (필동2가)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001356', '전라북도 익산시 동서로 490 (어양동)', '063-859-3254', '1202')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 익산시 동서로 490 (어양동)',
    telno = '063-859-3254',
    seatscale = '1202';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002545', '경기도 고양시 일산동구 정발산로 127 (마두동)', '070-4190-7766', '230')
ON DUPLICATE KEY UPDATE
    adres = '경기도 고양시 일산동구 정발산로 127 (마두동)',
    telno = '070-4190-7766',
    seatscale = '230';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000559', '강원도 인제군 인제읍 비봉로44번길 100', '033-460-8900', '899')
ON DUPLICATE KEY UPDATE
    adres = '강원도 인제군 인제읍 비봉로44번길 100',
    telno = '033-460-8900',
    seatscale = '899';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004651', '강원특별자치도 원주시 지정면 신평로 132', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '강원특별자치도 원주시 지정면 신평로 132',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000585', '경상남도 함양군 함양읍 필봉산길 55', '055-960-5544', '691')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 함양군 함양읍 필봉산길 55',
    telno = '055-960-5544',
    seatscale = '691';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002111', '강원도 평창군 대관령면 장선길 25 (횡계리)', '033-336-1120', '0')
ON DUPLICATE KEY UPDATE
    adres = '강원도 평창군 대관령면 장선길 25 (횡계리)',
    telno = '033-336-1120',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000228', '서울특별시 도봉구 노해로69길 132 (창동)', '02-901-5000', '188')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 도봉구 노해로69길 132 (창동)',
    telno = '02-901-5000',
    seatscale = '188';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000475', '전라북도 남원시 양림길 43 (어현동)', '063-620-5724', '908')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 남원시 양림길 43 (어현동)',
    telno = '063-620-5724',
    seatscale = '908';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001296', '대전광역시 유성구 대학로 99', '042-821-8081', '2395')
ON DUPLICATE KEY UPDATE
    adres = '대전광역시 유성구 대학로 99',
    telno = '042-821-8081',
    seatscale = '2395';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002757', '경기도 화성시 장지로 60-12 (장지동)', '031-376-0158', '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 화성시 장지로 60-12 (장지동)',
    telno = '031-376-0158',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002284', '경기도 남양주시 늘을2로 67 (호평동) ', '031-560-1401', '200')
ON DUPLICATE KEY UPDATE
    adres = '경기도 남양주시 늘을2로 67 (호평동) ',
    telno = '031-560-1401',
    seatscale = '200';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002563', '전라남도 화순군 화순읍 광덕중앙길 37-1', '061-374-0117', '124')
ON DUPLICATE KEY UPDATE
    adres = '전라남도 화순군 화순읍 광덕중앙길 37-1',
    telno = '061-374-0117',
    seatscale = '124';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001302', '전라북도 전주시 완산구 현무1길 20', '063-281-1500', '728')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 전주시 완산구 현무1길 20',
    telno = '063-281-1500',
    seatscale = '728';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004298', '대구광역시 남구 명덕로 102 (대명동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '대구광역시 남구 명덕로 102 (대명동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004439', '서울특별시 성북구 아리랑로 120-10 (정릉동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 성북구 아리랑로 120-10 (정릉동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003572', '충청북도 충주시 중앙탑면 중앙탑길 150', '043-844-3533', '0')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 충주시 중앙탑면 중앙탑길 150',
    telno = '043-844-3533',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004666', '전라남도 영암군 영암읍 기찬랜드로 19-10', '061-470-2803', '206')
ON DUPLICATE KEY UPDATE
    adres = '전라남도 영암군 영암읍 기찬랜드로 19-10',
    telno = '061-470-2803',
    seatscale = '206';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002541', '전라북도 진안군 진안읍 진무로 1054-38', '063-430-2253', '1500')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 진안군 진안읍 진무로 1054-38',
    telno = '063-430-2253',
    seatscale = '1500';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002161', '서울특별시 마포구 잔다리로3안길 31 (서교동) 해돌라운지루프탑', '00-1599-4312', '80')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 잔다리로3안길 31 (서교동) 해돌라운지루프탑',
    telno = '00-1599-4312',
    seatscale = '80';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003759', '서울특별시 강남구 언주로172길 25 (신사동)', NULL, '92')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 언주로172길 25 (신사동)',
    telno = NULL,
    seatscale = '92';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004015', '전라남도 담양군 담양읍 깊은실길 25', '00-1899-1572', '155')
ON DUPLICATE KEY UPDATE
    adres = '전라남도 담양군 담양읍 깊은실길 25',
    telno = '00-1899-1572',
    seatscale = '155';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000755', '강원도 철원군 서면 약수로 3 화강문화센터', '033-450-5591', '348')
ON DUPLICATE KEY UPDATE
    adres = '강원도 철원군 서면 약수로 3 화강문화센터',
    telno = '033-450-5591',
    seatscale = '348';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004144', '울산광역시 남구 중앙로290번길 13-1 (신정동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '울산광역시 남구 중앙로290번길 13-1 (신정동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002093', '서울특별시 서초구 사임당로18길 52-2 (서초동) ', '02-523-6268', '100')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서초구 사임당로18길 52-2 (서초동) ',
    telno = '02-523-6268',
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002246', '서울특별시 중구 을지로 170 (을지로4가)', '02-2288-2864', '280')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 중구 을지로 170 (을지로4가)',
    telno = '02-2288-2864',
    seatscale = '280';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003891', '서울특별시 마포구 와우산로 77 (서교동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 와우산로 77 (서교동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003016', '서울특별시 영등포구 경인로 715(문래동2가)', '010-4785-2986', '30')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 영등포구 경인로 715(문래동2가)',
    telno = '010-4785-2986',
    seatscale = '30';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002561', '세종특별자치시 조치원읍 세종로 2639', '044-860-2114', '200')
ON DUPLICATE KEY UPDATE
    adres = '세종특별자치시 조치원읍 세종로 2639',
    telno = '044-860-2114',
    seatscale = '200';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003638', '서울특별시 중구 정동길 46 (정동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 중구 정동길 46 (정동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001658', '서울특별시 성북구 동소문로 315 (길음동)', '02-2117-2117', '480')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 성북구 동소문로 315 (길음동)',
    telno = '02-2117-2117',
    seatscale = '480';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001766', '제주특별자치도 제주시 애월읍 산록서로 18', NULL, '250')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 애월읍 산록서로 18',
    telno = NULL,
    seatscale = '250';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004013', '전북특별자치도 익산시 선화로6길 7 (모현동1가)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '전북특별자치도 익산시 선화로6길 7 (모현동1가)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000069', '서울특별시 마포구 와우산로 148 (창전동)', '02-337-5961', '200')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 와우산로 148 (창전동)',
    telno = '02-337-5961',
    seatscale = '200';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000014', '서울특별시 중구 퇴계로 387 (흥인동)', '02-2230-6601', '2045')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 중구 퇴계로 387 (흥인동)',
    telno = '02-2230-6601',
    seatscale = '2045';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003774', '광주광역시 동구 중흥로209번길 8 (계림동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '광주광역시 동구 중흥로209번길 8 (계림동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002429', '부산광역시 서구 망양로 72 (동대신동3가)', '051-244-8482', '0')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 서구 망양로 72 (동대신동3가)',
    telno = '051-244-8482',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000152', '서울특별시 종로구 창경궁로 254 (명륜2가)', '02-741-0251', '400')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 창경궁로 254 (명륜2가)',
    telno = '02-741-0251',
    seatscale = '400';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002889', '서울특별시 강남구 역삼로20길 9(역삼동)', '02-556-0209', '50')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 역삼로20길 9(역삼동)',
    telno = '02-556-0209',
    seatscale = '50';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002274', '광주광역시 북구 용봉로 77 (용봉동)', '062-530-5114', '916')
ON DUPLICATE KEY UPDATE
    adres = '광주광역시 북구 용봉로 77 (용봉동)',
    telno = '062-530-5114',
    seatscale = '916';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001321', '경기도 안산시 단원구 광덕대로 187 (고잔동) 장은타워 7층', '010-9178-6888', '80')
ON DUPLICATE KEY UPDATE
    adres = '경기도 안산시 단원구 광덕대로 187 (고잔동) 장은타워 7층',
    telno = '010-9178-6888',
    seatscale = '80';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002806', '서울특별시 중구 명동11길 20(명동1가)', '070-4242-8702', '150')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 중구 명동11길 20(명동1가)',
    telno = '070-4242-8702',
    seatscale = '150';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001975', '서울특별시 마포구 성미산로 64-5 (성산동)', '02-3141-4605', '39')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 성미산로 64-5 (성산동)',
    telno = '02-3141-4605',
    seatscale = '39';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003967', '제주특별자치도 제주시 한경면 저지동길 8-31', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 한경면 저지동길 8-31',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000354', '서울특별시 마포구 와우산로18길 30 (서교동) 지층', '070-7613-3002', '120')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 와우산로18길 30 (서교동) 지층',
    telno = '070-7613-3002',
    seatscale = '120';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001913', '경상남도 진주시 남강로 1655 (초전동)', '055-749-7443', '5184')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 진주시 남강로 1655 (초전동)',
    telno = '055-749-7443',
    seatscale = '5184';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002101', '서울특별시 용산구 청파로45길 5 (청파동3가)', '070-4038-3686', '50')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 용산구 청파로45길 5 (청파동3가)',
    telno = '070-4038-3686',
    seatscale = '50';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004427', '울산광역시 남구 장생포고래로 110 (장생포동)', '052-226-0010', '111')
ON DUPLICATE KEY UPDATE
    adres = '울산광역시 남구 장생포고래로 110 (장생포동)',
    telno = '052-226-0010',
    seatscale = '111';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003697', '인천광역시 중구 하늘달빛로 65 (중산동, 인천영종 동보노빌리티아파트)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 중구 하늘달빛로 65 (중산동, 인천영종 동보노빌리티아파트)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003585', '충청남도 아산시 배방읍 호서로79번길 20', '041-540-5114', '0')
ON DUPLICATE KEY UPDATE
    adres = '충청남도 아산시 배방읍 호서로79번길 20',
    telno = '041-540-5114',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002696', '강원도 고성군 현내면 초도항길 19', '033-680-3356', '0')
ON DUPLICATE KEY UPDATE
    adres = '강원도 고성군 현내면 초도항길 19',
    telno = '033-680-3356',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000113', '서울특별시 서초구 효령로72길 60 (서초동)', '02-2105-8133', '999')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서초구 효령로72길 60 (서초동)',
    telno = '02-2105-8133',
    seatscale = '999';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004631', '경상남도 진주시 남강로659번길 10-1 (동성동)', NULL, '30')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 진주시 남강로659번길 10-1 (동성동)',
    telno = NULL,
    seatscale = '30';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001154', '부산광역시 중구 중앙대로 54 (중앙동5가)', '051-441-2733', '120')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 중구 중앙대로 54 (중앙동5가)',
    telno = '051-441-2733',
    seatscale = '120';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001481', '서울특별시 서대문구 북아현로11가길 7 (북아현동)', '02-393-1671', '958')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서대문구 북아현로11가길 7 (북아현동)',
    telno = '02-393-1671',
    seatscale = '958';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002020', '충청북도 청주시 서원구 충대로 1 (개신동)', '043-261-2049', '719')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 청주시 서원구 충대로 1 (개신동)',
    telno = '043-261-2049',
    seatscale = '719';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002725', '경기도 남양주시 다산중앙로82번안길 138 (다산동)', '031-590-2586', '320')
ON DUPLICATE KEY UPDATE
    adres = '경기도 남양주시 다산중앙로82번안길 138 (다산동)',
    telno = '031-590-2586',
    seatscale = '320';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002338', '광주광역시 동구 동계천로 76 (장동)', '062-222-1377', '500')
ON DUPLICATE KEY UPDATE
    adres = '광주광역시 동구 동계천로 76 (장동)',
    telno = '062-222-1377',
    seatscale = '500';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003107', '서울특별시 은평구 서오릉로 18(녹번동)', '070-7698-8903', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 은평구 서오릉로 18(녹번동)',
    telno = '070-7698-8903',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004060', '서울특별시 종로구 동숭4길 4 (동숭동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 동숭4길 4 (동숭동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001549', '서울특별시 용산구 한남대로 158 (한남동)', '02-766-1774', '40')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 용산구 한남대로 158 (한남동)',
    telno = '02-766-1774',
    seatscale = '40';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001851', '경기도 가평군 설악면 미사리로 258 (송산리)', '031-589-5200', '16991')
ON DUPLICATE KEY UPDATE
    adres = '경기도 가평군 설악면 미사리로 258 (송산리)',
    telno = '031-589-5200',
    seatscale = '16991';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000749', '서울특별시 종로구 대학로8가길 36 (동숭동)', '070-4870-1932', '160')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 대학로8가길 36 (동숭동)',
    telno = '070-4870-1932',
    seatscale = '160';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002426', '강원도 원주시 서원대로 279 (명륜동)', '033-749-4715', '2330')
ON DUPLICATE KEY UPDATE
    adres = '강원도 원주시 서원대로 279 (명륜동)',
    telno = '033-749-4715',
    seatscale = '2330';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002875', '경상남도 진주시 충의로 19(충무공동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 진주시 충의로 19(충무공동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000439', '충청남도 천안시 동남구 신부2길 12 (신부동)', '041-571-3744', '1064')
ON DUPLICATE KEY UPDATE
    adres = '충청남도 천안시 동남구 신부2길 12 (신부동)',
    telno = '041-571-3744',
    seatscale = '1064';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004565', '강원특별자치도 춘천시 서면 툇골길 209', '033-244-1009', '100')
ON DUPLICATE KEY UPDATE
    adres = '강원특별자치도 춘천시 서면 툇골길 209',
    telno = '033-244-1009',
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003426', '대전광역시 동구 백룡로48번길 71-5 (대동)', '070-8777-2019', '0')
ON DUPLICATE KEY UPDATE
    adres = '대전광역시 동구 백룡로48번길 71-5 (대동)',
    telno = '070-8777-2019',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002293', '서울특별시 마포구 와우산로 64 (상수동)', '010-9247-0895', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 와우산로 64 (상수동)',
    telno = '010-9247-0895',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000612', '경기도 포천시 군내면 청성로 111', '031-540-6213', '1162')
ON DUPLICATE KEY UPDATE
    adres = '경기도 포천시 군내면 청성로 111',
    telno = '031-540-6213',
    seatscale = '1162';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001224', '서울특별시 마포구 양화로 100-10 (서교동)', '010-7702-0100', '150')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 양화로 100-10 (서교동)',
    telno = '010-7702-0100',
    seatscale = '150';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002926', '서울특별시 서초구 바우뫼로31길 70(양재동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서초구 바우뫼로31길 70(양재동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004389', '서울특별시 종로구 인사동5길 10 (인사동)', NULL, '20')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 인사동5길 10 (인사동)',
    telno = NULL,
    seatscale = '20';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002883', '부산광역시 해운대구 장산로 331-18(좌동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 해운대구 장산로 331-18(좌동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004280', '경상북도 포항시 북구 삼호로 328 (두호동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경상북도 포항시 북구 삼호로 328 (두호동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000714', '경상남도 진주시 진주대로 1038 (동성동)', '055-746-7411', '109')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 진주시 진주대로 1038 (동성동)',
    telno = '055-746-7411',
    seatscale = '109';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000382', '서울특별시 종로구 대학로8가길 85 (동숭동)', '00-1544-8303', '555')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 대학로8가길 85 (동숭동)',
    telno = '00-1544-8303',
    seatscale = '555';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003191', '서울특별시 강남구 도산대로81길 45(청담동)', NULL, '90')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 도산대로81길 45(청담동)',
    telno = NULL,
    seatscale = '90';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004213', '서울특별시 강남구 테헤란로7길 22 (역삼동)', '02-3420-1200', '550')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 테헤란로7길 22 (역삼동)',
    telno = '02-3420-1200',
    seatscale = '550';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002554', '경기도 포천시 군내면 포천로 1517', '031-531-1982', '60')
ON DUPLICATE KEY UPDATE
    adres = '경기도 포천시 군내면 포천로 1517',
    telno = '031-531-1982',
    seatscale = '60';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004133', '충청북도 충주시 중앙탑면 탑정안길 6', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 충주시 중앙탑면 탑정안길 6',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002672', '인천광역시 서구 장고개로231번길 9 (가좌동)', '032-575-2319', '0')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 서구 장고개로231번길 9 (가좌동)',
    telno = '032-575-2319',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002575', '서울특별시 중구 정동길 9 (정동)', '02-6364-2200', '275')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 중구 정동길 9 (정동)',
    telno = '02-6364-2200',
    seatscale = '275';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002613', '강원도 춘천시 스포츠타운길 136 (송암동)', '033-264-0660', '20500')
ON DUPLICATE KEY UPDATE
    adres = '강원도 춘천시 스포츠타운길 136 (송암동)',
    telno = '033-264-0660',
    seatscale = '20500';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001411', '서울특별시 서초구 반포대로 18 (서초동)', '070-4676-7032', '202')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서초구 반포대로 18 (서초동)',
    telno = '070-4676-7032',
    seatscale = '202';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000215', '서울특별시 구로구 새말로 97 (구로동)', '02-2111-1146', '400')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 구로구 새말로 97 (구로동)',
    telno = '02-2111-1146',
    seatscale = '400';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003163', '강원도 춘천시 공지로 255(효자동)', '033-912-5003', '0')
ON DUPLICATE KEY UPDATE
    adres = '강원도 춘천시 공지로 255(효자동)',
    telno = '033-912-5003',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002712', '서울특별시 마포구 잔다리로 19-6 (서교동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 잔다리로 19-6 (서교동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002576', '경기도 안산시 상록구 한양대학로 55 (사동)', '031-400-5114', '796')
ON DUPLICATE KEY UPDATE
    adres = '경기도 안산시 상록구 한양대학로 55 (사동)',
    telno = '031-400-5114',
    seatscale = '796';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003398', '제주특별자치도 제주시 월평9길 2-19 (월평동)', '064-753-8996', '120')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 월평9길 2-19 (월평동)',
    telno = '064-753-8996',
    seatscale = '120';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003910', '대구광역시 중구 중앙대로 273 (남산동)', NULL, '40')
ON DUPLICATE KEY UPDATE
    adres = '대구광역시 중구 중앙대로 273 (남산동)',
    telno = NULL,
    seatscale = '40';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001245', '경기도 안양시 동안구 평촌대로 76 (호계동)', '031-687-0500', '638')
ON DUPLICATE KEY UPDATE
    adres = '경기도 안양시 동안구 평촌대로 76 (호계동)',
    telno = '031-687-0500',
    seatscale = '638';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000508', '대구광역시 달서구 달구벌대로 1611 (감삼동)', '053-565-0877', '176')
ON DUPLICATE KEY UPDATE
    adres = '대구광역시 달서구 달구벌대로 1611 (감삼동)',
    telno = '053-565-0877',
    seatscale = '176';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003385', '경상남도 진주시 논개길 16(본성동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 진주시 논개길 16(본성동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002326', '서울특별시 성동구 아차산로7나길 14 (성수동2가) ', '070-8845-7382', '90')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 성동구 아차산로7나길 14 (성수동2가) ',
    telno = '070-8845-7382',
    seatscale = '90';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002897', '서울특별시 영등포구 도림로 459(문래동4가)', '010-9455-5185', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 영등포구 도림로 459(문래동4가)',
    telno = '010-9455-5185',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004492', '서울특별시 서대문구 이화여대길 52 (대현동)', NULL, '100')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서대문구 이화여대길 52 (대현동)',
    telno = NULL,
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002729', '경기도 남양주시 고산로 184-1 (삼패동)', '031-590-8636', '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 남양주시 고산로 184-1 (삼패동)',
    telno = '031-590-8636',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003785', '경기도 포천시 영북면 비둘기낭길 176', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 포천시 영북면 비둘기낭길 176',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003714', '경기도 김포시 김포한강1로84번길 8 (장기동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 김포시 김포한강1로84번길 8 (장기동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004330', '경상북도 울진군 북면 울진북로 2040', '054-785-2948', '0')
ON DUPLICATE KEY UPDATE
    adres = '경상북도 울진군 북면 울진북로 2040',
    telno = '054-785-2948',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004027', '전라남도 여수시 안산1길 62 (안산동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '전라남도 여수시 안산1길 62 (안산동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002534', '전라북도 임실군 임실읍 호국로 1703', '063-640-2911', '1360')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 임실군 임실읍 호국로 1703',
    telno = '063-640-2911',
    seatscale = '1360';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001219', '경기도 성남시 중원구 양현로405번길 12', '031-779-1500', '244')
ON DUPLICATE KEY UPDATE
    adres = '경기도 성남시 중원구 양현로405번길 12',
    telno = '031-779-1500',
    seatscale = '244';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003118', '전라북도 전주시 완산구 바람쐬는길 120(대성동)', '063-288-5755', '0')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 전주시 완산구 바람쐬는길 120(대성동)',
    telno = '063-288-5755',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004207', '경기도 수원시 영통구 매영로39번길 5 (매탄동)', NULL, '189')
ON DUPLICATE KEY UPDATE
    adres = '경기도 수원시 영통구 매영로39번길 5 (매탄동)',
    telno = NULL,
    seatscale = '189';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003938', '서울특별시 서초구 남부순환로317길 31 (서초동)', NULL, '50')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서초구 남부순환로317길 31 (서초동)',
    telno = NULL,
    seatscale = '50';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002218', '부산광역시 부산진구 부전로20번길 47 (부전동)', '00-1577-2863', '0')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 부산진구 부전로20번길 47 (부전동)',
    telno = '00-1577-2863',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001778', '부산광역시 중구 구덕로48번길 3 (남포동5가)', '010-4630-8706', '72')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 중구 구덕로48번길 3 (남포동5가)',
    telno = '010-4630-8706',
    seatscale = '72';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003051', '서울특별시 양천구 목동동로 33(신정동)', '070-8095-2442', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 양천구 목동동로 33(신정동)',
    telno = '070-8095-2442',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001826', '서울특별시 용산구 이태원로 246 (한남동)', '02-331-6301', '205')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 용산구 이태원로 246 (한남동)',
    telno = '02-331-6301',
    seatscale = '205';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001474', '서울특별시 동작구 사당로 143 (사당동)', '02-3479-0200', '453')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 동작구 사당로 143 (사당동)',
    telno = '02-3479-0200',
    seatscale = '453';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003375', '전라북도 전주시 완산구 세내로 39 (삼천동2가)', '063-225-0505', '0')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 전주시 완산구 세내로 39 (삼천동2가)',
    telno = '063-225-0505',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003296', '서울특별시 동대문구 안암로 86-1(제기동)', '02-953-3383', '100')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 동대문구 안암로 86-1(제기동)',
    telno = '02-953-3383',
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002133', '부산광역시 해운대구 달맞이길62번길 47 (중동)', '051-749-7601', '120000')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 해운대구 달맞이길62번길 47 (중동)',
    telno = '051-749-7601',
    seatscale = '120000';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002552', '충청북도 증평군 증평읍 대학로 61', '043-820-5114', '388')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 증평군 증평읍 대학로 61',
    telno = '043-820-5114',
    seatscale = '388';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004210', '서울특별시 마포구 와우산로 70 (서교동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 와우산로 70 (서교동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003207', '경기도 파주시 파주읍 우계로 216-7', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 파주시 파주읍 우계로 216-7',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002261', '경기도 평택시 장안웃길 149 (이충동)', '031-8024-7440', '1757')
ON DUPLICATE KEY UPDATE
    adres = '경기도 평택시 장안웃길 149 (이충동)',
    telno = '031-8024-7440',
    seatscale = '1757';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000250', '경상남도 하동군 하동읍 섬진강대로 2222', '055-880-2401', '878')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 하동군 하동읍 섬진강대로 2222',
    telno = '055-880-2401',
    seatscale = '878';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002573', '충청북도 영동군 용화면 횡지구백길 5', '043-743-0004', '700')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 영동군 용화면 횡지구백길 5',
    telno = '043-743-0004',
    seatscale = '700';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002628', '강원도 인제군 기린면 상하답로 130', '00-1644-3366', '500')
ON DUPLICATE KEY UPDATE
    adres = '강원도 인제군 기린면 상하답로 130',
    telno = '00-1644-3366',
    seatscale = '500';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000841', '서울특별시 종로구 동숭길 55 (동숭동)', '02-747-2232', '196')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 동숭길 55 (동숭동)',
    telno = '02-747-2232',
    seatscale = '196';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002130', '경기도 평택시 평남로 616 (합정동)', '031-646-5400', '740')
ON DUPLICATE KEY UPDATE
    adres = '경기도 평택시 평남로 616 (합정동)',
    telno = '031-646-5400',
    seatscale = '740';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000613', '경기도 화성시 태안로 145 (병점동)', '031-8015-8153', '678')
ON DUPLICATE KEY UPDATE
    adres = '경기도 화성시 태안로 145 (병점동)',
    telno = '031-8015-8153',
    seatscale = '678';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004572', '광주광역시 광산구 선운로2번길 42 (선암동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '광주광역시 광산구 선운로2번길 42 (선암동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001383', '충청남도 천안시 동남구 성남면 종합휴양지로 185', '00-1566-0155', '2085')
ON DUPLICATE KEY UPDATE
    adres = '충청남도 천안시 동남구 성남면 종합휴양지로 185',
    telno = '00-1566-0155',
    seatscale = '2085';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003761', '제주특별자치도 제주시 동광로23길 15 (일도이동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 동광로23길 15 (일도이동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002686', '서울특별시 서초구 본마을4길 3 (신원동)', '02-785-5737', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서초구 본마을4길 3 (신원동)',
    telno = '02-785-5737',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002872', '서울특별시 종로구 율곡로 99(와룡동)', '02-3668-2300', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 율곡로 99(와룡동)',
    telno = '02-3668-2300',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003011', '제주특별자치도 제주시 관덕로 26(삼도이동)', '064-751-9502', '0')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 관덕로 26(삼도이동)',
    telno = '064-751-9502',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003862', '경상남도 창원시 진해구 용원동로 248-9 (용원동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 창원시 진해구 용원동로 248-9 (용원동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000584', '경상남도 함안군 가야읍 함안대로 619-1', '055-580-3608', '650')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 함안군 가야읍 함안대로 619-1',
    telno = '055-580-3608',
    seatscale = '650';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002442', '부산광역시 해운대구 해운대해변로 154 (우동)', '051-742-0154', '20')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 해운대구 해운대해변로 154 (우동)',
    telno = '051-742-0154',
    seatscale = '20';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001799', '서울특별시 서대문구 이화여대길 52 (대현동)', '02-6380-4430', '702')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서대문구 이화여대길 52 (대현동)',
    telno = '02-6380-4430',
    seatscale = '702';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002700', '서울특별시 성동구 왕십리로 82-20 (성수동1가)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 성동구 왕십리로 82-20 (성수동1가)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002899', '서울특별시 성동구 뚝섬로1나길 5(성수동1가)', '02-6495-0181', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 성동구 뚝섬로1나길 5(성수동1가)',
    telno = '02-6495-0181',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004332', '부산광역시 부산진구 서전로58번길 16 (전포동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 부산진구 서전로58번길 16 (전포동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000830', '서울특별시 용산구 장문로 60 (동빙고동)', '070-7606-5573', '130')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 용산구 장문로 60 (동빙고동)',
    telno = '070-7606-5573',
    seatscale = '130';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001925', '경상남도 창원시 성산구 원이대로 362 (대원동)', '055-212-1000', '10400')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 창원시 성산구 원이대로 362 (대원동)',
    telno = '055-212-1000',
    seatscale = '10400';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001311', '서울특별시 종로구 삼일대로32길 55 - 3', '02-766-3545', '20')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 삼일대로32길 55 - 3',
    telno = '02-766-3545',
    seatscale = '20';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002310', '서울특별시 중구 퇴계로6가길 30 (남창동)', '02-318-3233', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 중구 퇴계로6가길 30 (남창동)',
    telno = '02-318-3233',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003383', '경상북도 경주시 엑스포로 40(신평동)', '054-760-0500', '0')
ON DUPLICATE KEY UPDATE
    adres = '경상북도 경주시 엑스포로 40(신평동)',
    telno = '054-760-0500',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002654', '서울특별시 종로구 돈화문로 13 (관수동)', '02-738-0366', '186')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 돈화문로 13 (관수동)',
    telno = '02-738-0366',
    seatscale = '186';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003561', '충청북도 청주시 상당구 교서로 16-5 (영동)', '043-255-7774', '85')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 청주시 상당구 교서로 16-5 (영동)',
    telno = '043-255-7774',
    seatscale = '85';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002038', '서울특별시 마포구 연희로 35 (연남동)', '010-5581-1112', '150')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 연희로 35 (연남동)',
    telno = '010-5581-1112',
    seatscale = '150';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003503', '서울특별시 서대문구 이화여대길 52 (대현동)', '02-3277-2969', '200')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서대문구 이화여대길 52 (대현동)',
    telno = '02-3277-2969',
    seatscale = '200';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000369', '서울특별시 강남구 선릉로 805 (신사동)', '070-4842-6966', '200')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 선릉로 805 (신사동)',
    telno = '070-4842-6966',
    seatscale = '200';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001990', '경기도 파주시 탄현면 성동리 53-2', '070-7018-1084', '180')
ON DUPLICATE KEY UPDATE
    adres = '경기도 파주시 탄현면 성동리 53-2',
    telno = '070-7018-1084',
    seatscale = '180';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002176', '제주특별자치도 제주시 제주대학로 102 (아라일동)', '064-754-2271', '752')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 제주대학로 102 (아라일동)',
    telno = '064-754-2271',
    seatscale = '752';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001566', '서울특별시 종로구 대학로11길 39 (명륜4가)', NULL, '70')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 대학로11길 39 (명륜4가)',
    telno = NULL,
    seatscale = '70';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002094', '경기도 가평군 가평읍 자라섬로 60 (달전리)', '031-580-4632', '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 가평군 가평읍 자라섬로 60 (달전리)',
    telno = '031-580-4632',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002827', '서울특별시 중구 퇴계로18길 77(남산동2가)', '02-779-0215', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 중구 퇴계로18길 77(남산동2가)',
    telno = '02-779-0215',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004106', '강원특별자치도 춘천시 영서로 3035 (사농동)', '033-259-5892', '0')
ON DUPLICATE KEY UPDATE
    adres = '강원특별자치도 춘천시 영서로 3035 (사농동)',
    telno = '033-259-5892',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002614', '서울특별시 마포구 와우산로 63 (서교동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 와우산로 63 (서교동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003341', '서울특별시 마포구 양화로 100-10(서교동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 양화로 100-10(서교동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001453', '경상남도 김해시 분성로 259 (봉황동)', '055-339-9110', '70')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 김해시 분성로 259 (봉황동)',
    telno = '055-339-9110',
    seatscale = '70';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001195', '강원도 횡성군 횡성읍 문예로 75', '033-340-5974', '740')
ON DUPLICATE KEY UPDATE
    adres = '강원도 횡성군 횡성읍 문예로 75',
    telno = '033-340-5974',
    seatscale = '740';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001676', '부산광역시 동구 자성로141번길 13 (범일동)', '051-635-5370', '100')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 동구 자성로141번길 13 (범일동)',
    telno = '051-635-5370',
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002127', '서울특별시 마포구 양화로12길 6 (서교동)', '070-8150-2979', '120')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 양화로12길 6 (서교동)',
    telno = '070-8150-2979',
    seatscale = '120';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004335', '서울특별시 마포구 와우산로37길 30 (동교동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 와우산로37길 30 (동교동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001857', '부산광역시 강서구 명지오션시티4로 88 (명지동)', '00-1899-5435', '174')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 강서구 명지오션시티4로 88 (명지동)',
    telno = '00-1899-5435',
    seatscale = '174';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002849', '서울특별시 마포구 와우산로29길 16(서교동)', '070-8692-8277', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 와우산로29길 16(서교동)',
    telno = '070-8692-8277',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001865', '충청북도 청주시 서원구 청남로 2065 (수곡동)', '043-299-0632', '5394')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 청주시 서원구 청남로 2065 (수곡동)',
    telno = '043-299-0632',
    seatscale = '5394';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000013', '인천광역시 남동구 예술로 149 (구월동)', '032-427-8401', '2236')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 남동구 예술로 149 (구월동)',
    telno = '032-427-8401',
    seatscale = '2236';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004100', '서울특별시 종로구 창경궁로35길 21 (혜화동)', '070-8058-9839', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 창경궁로35길 21 (혜화동)',
    telno = '070-8058-9839',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004305', '서울특별시 종로구 필운대로 35-16 (누하동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 필운대로 35-16 (누하동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003000', '인천광역시 동구 참외전로 245(창영동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 동구 참외전로 245(창영동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003792', '제주특별자치도 제주시 만덕로 18 (건입동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 만덕로 18 (건입동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004117', '대구광역시 동구 옻골로 179 (둔산동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '대구광역시 동구 옻골로 179 (둔산동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003510', '전라북도 전주시 완산구 향교길 119-6 (교동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 전주시 완산구 향교길 119-6 (교동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000099', '서울특별시 서대문구 이화여대길 52 (대현동)', '02-393-0191', '3088')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서대문구 이화여대길 52 (대현동)',
    telno = '02-393-0191',
    seatscale = '3088';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002286', '대전광역시 유성구 대학로76번안길 62 (궁동)', '042-826-7773', '0')
ON DUPLICATE KEY UPDATE
    adres = '대전광역시 유성구 대학로76번안길 62 (궁동)',
    telno = '042-826-7773',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004344', '전북특별자치도 전주시 덕진구 백제대로 567 (금암동)', '063-270-2114', '0')
ON DUPLICATE KEY UPDATE
    adres = '전북특별자치도 전주시 덕진구 백제대로 567 (금암동)',
    telno = '063-270-2114',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003753', '서울특별시 종로구 필운대로5가길 11-4 (누하동)', NULL, '30')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 필운대로5가길 11-4 (누하동)',
    telno = NULL,
    seatscale = '30';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001824', '경기도 부천시 원미구 길주로 180 (중동)', '032-623-3250', '500')
ON DUPLICATE KEY UPDATE
    adres = '경기도 부천시 원미구 길주로 180 (중동)',
    telno = '032-623-3250',
    seatscale = '500';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003032', '인천광역시 연수구 비류대로 299(청학동)', NULL, '222')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 연수구 비류대로 299(청학동)',
    telno = NULL,
    seatscale = '222';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004350', '충청북도 청주시 청원구 내수읍 세교초정로 47', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 청주시 청원구 내수읍 세교초정로 47',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003209', '서울특별시 종로구 종로 272(종로6가)', NULL, '80')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 종로 272(종로6가)',
    telno = NULL,
    seatscale = '80';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004037', '강원특별자치도 양양군 현남면 인구중앙길 10', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '강원특별자치도 양양군 현남면 인구중앙길 10',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003626', '경기도 부천시 석천로2번길 83 (상동)', '010-3286-7993', '10')
ON DUPLICATE KEY UPDATE
    adres = '경기도 부천시 석천로2번길 83 (상동)',
    telno = '010-3286-7993',
    seatscale = '10';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004155', '서울특별시 용산구 한강대로7길 22 (한강로3가)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 용산구 한강대로7길 22 (한강로3가)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000070', '서울특별시 강동구 성안로 30 (성내동)', '02-482-8794', '453')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강동구 성안로 30 (성내동)',
    telno = '02-482-8794',
    seatscale = '453';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004151', '서울특별시 종로구 효자로7길 10-3 (통의동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 효자로7길 10-3 (통의동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002242', '부산광역시 금정구 기찰로108번길 49 (부곡동)', '010-7517-5859', '100')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 금정구 기찰로108번길 49 (부곡동)',
    telno = '010-7517-5859',
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003343', '광주광역시 남구 사직길 17(사동)', '062-654-3626', '0')
ON DUPLICATE KEY UPDATE
    adres = '광주광역시 남구 사직길 17(사동)',
    telno = '062-654-3626',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002547', '제주특별자치도 서귀포시 중문관광로 154-17 (색달동)', '064-738-2888', '1000')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 서귀포시 중문관광로 154-17 (색달동)',
    telno = '064-738-2888',
    seatscale = '1000';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003673', '강원특별자치도 속초시 미시령로2983번길 111 (장사동)', '033-630-5500', '0')
ON DUPLICATE KEY UPDATE
    adres = '강원특별자치도 속초시 미시령로2983번길 111 (장사동)',
    telno = '033-630-5500',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002779', '충청남도 천안시 동남구 옛시청길 39 (문화동)', '070-4944-0360', '396')
ON DUPLICATE KEY UPDATE
    adres = '충청남도 천안시 동남구 옛시청길 39 (문화동)',
    telno = '070-4944-0360',
    seatscale = '396';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001943', '인천광역시 남동구 소래로 500 (수산동)', '032-715-5173', '8828')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 남동구 소래로 500 (수산동)',
    telno = '032-715-5173',
    seatscale = '8828';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004138', '서울특별시 서대문구 이화여대길 52 (대현동)', '02-3277-2157', '360')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서대문구 이화여대길 52 (대현동)',
    telno = '02-3277-2157',
    seatscale = '360';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000251', '서울특별시 중랑구 면목로 238 (면목동)', '02-2207-6130', '648')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 중랑구 면목로 238 (면목동)',
    telno = '02-2207-6130',
    seatscale = '648';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003708', '경상남도 밀양시 남천강변로 39 (내일동)', NULL, '40')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 밀양시 남천강변로 39 (내일동)',
    telno = NULL,
    seatscale = '40';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001232', '서울특별시 종로구 대학로10길 15 - 11', '02-766-0830', '270')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 대학로10길 15 - 11',
    telno = '02-766-0830',
    seatscale = '270';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003432', '제주특별자치도 제주시 연삼로 489 (이도이동)', '064-750-1691', '1049')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 연삼로 489 (이도이동)',
    telno = '064-750-1691',
    seatscale = '1049';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000680', '강원도 춘천시 영서로 3017 (사농동)', '033-242-8450', '1458')
ON DUPLICATE KEY UPDATE
    adres = '강원도 춘천시 영서로 3017 (사농동)',
    telno = '033-242-8450',
    seatscale = '1458';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003743', '강원특별자치도 강릉시 창해로14번길 18 (견소동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '강원특별자치도 강릉시 창해로14번길 18 (견소동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002135', '경기도 파주시 광인사길 161 (문발동)경기도 파주시 문발동 500-8', '031-955-3727', '120')
ON DUPLICATE KEY UPDATE
    adres = '경기도 파주시 광인사길 161 (문발동)경기도 파주시 문발동 500-8',
    telno = '031-955-3727',
    seatscale = '120';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004448', '서울특별시 서대문구 연희로11마길 39 (연희동)', NULL, '20')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서대문구 연희로11마길 39 (연희동)',
    telno = NULL,
    seatscale = '20';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001410', '강원도 춘천시 삼천동 200-9', '033-250-4291', '0')
ON DUPLICATE KEY UPDATE
    adres = '강원도 춘천시 삼천동 200-9',
    telno = '033-250-4291',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000234', '서울특별시 종로구 이화장길 86-8 (동숭동)', '02-765-0717', '134')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 이화장길 86-8 (동숭동)',
    telno = '02-765-0717',
    seatscale = '134';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003112', '대구광역시 중구 경상감영길 60(종로1가)', '053-353-4878', '0')
ON DUPLICATE KEY UPDATE
    adres = '대구광역시 중구 경상감영길 60(종로1가)',
    telno = '053-353-4878',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004123', '서울특별시 중구 청계천로 40 (다동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 중구 청계천로 40 (다동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000090', '서울특별시 마포구 양화로16길 29 (서교동)', '02-739-8288', '323')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 양화로16길 29 (서교동)',
    telno = '02-739-8288',
    seatscale = '323';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000692', '충청남도 천안시 동남구 옛농고1길 41 (원성동)', '041-904-8458', '1181')
ON DUPLICATE KEY UPDATE
    adres = '충청남도 천안시 동남구 옛농고1길 41 (원성동)',
    telno = '041-904-8458',
    seatscale = '1181';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003834', '부산광역시 동래구 금강공원로20번길 23 (온천동)', NULL, '110')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 동래구 금강공원로20번길 23 (온천동)',
    telno = NULL,
    seatscale = '110';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003351', '전라남도 구례군 산동면 산업로 1590-18', '010-9900-9005', '0')
ON DUPLICATE KEY UPDATE
    adres = '전라남도 구례군 산동면 산업로 1590-18',
    telno = '010-9900-9005',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002316', '서울특별시 마포구 월드컵로5길 20 (합정동)', '02-332-3181', '30')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 월드컵로5길 20 (합정동)',
    telno = '02-332-3181',
    seatscale = '30';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004232', '경상북도 안동시 남후면 암산1길 15', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경상북도 안동시 남후면 암산1길 15',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002057', '경상북도 청도군 이서면 이서로 565 (양원리)', '054-370-8700', '167')
ON DUPLICATE KEY UPDATE
    adres = '경상북도 청도군 이서면 이서로 565 (양원리)',
    telno = '054-370-8700',
    seatscale = '167';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003874', '충청북도 청주시 서원구 호국로 97 (사직동)', '043-222-7200', '0')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 청주시 서원구 호국로 97 (사직동)',
    telno = '043-222-7200',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003395', '경기도 성남시 수정구 오야북로6번길 14-1 (오야동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 성남시 수정구 오야북로6번길 14-1 (오야동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000810', '서울특별시 서초구 반포대로 150 (서초동)', '02-535-7119', '972')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서초구 반포대로 150 (서초동)',
    telno = '02-535-7119',
    seatscale = '972';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004664', '충청북도 청주시 흥덕구 오송읍 오송생명로 250', '043-230-4000', '600')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 청주시 흥덕구 오송읍 오송생명로 250',
    telno = '043-230-4000',
    seatscale = '600';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004481', '전북특별자치도 전주시 덕진구 명륜3길 17-2 (덕진동1가)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '전북특별자치도 전주시 덕진구 명륜3길 17-2 (덕진동1가)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002404', '경기도 남양주시 호평로68번길 21 (호평동) ', '031-590-6904', '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 남양주시 호평로68번길 21 (호평동) ',
    telno = '031-590-6904',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003741', '서울특별시 성동구 연무장길 28-12 (성수동2가)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 성동구 연무장길 28-12 (성수동2가)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000127', '경기도 고양시 일산동구 중앙로 1286 (마두동) 고양아람누리', '00-1577-7766', '4640')
ON DUPLICATE KEY UPDATE
    adres = '경기도 고양시 일산동구 중앙로 1286 (마두동) 고양아람누리',
    telno = '00-1577-7766',
    seatscale = '4640';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001905', '서울특별시 강남구 강남대로110길 19', '010-4674-8064', '40')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 강남대로110길 19',
    telno = '010-4674-8064',
    seatscale = '40';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000479', '전라북도 전주시 완산구 팔달로 161 (경원동1가)', '063-270-8000', '357')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 전주시 완산구 팔달로 161 (경원동1가)',
    telno = '063-270-8000',
    seatscale = '357';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001479', '부산광역시 북구 백양대로 1167 (구포동)', '051-336-8521', '123')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 북구 백양대로 1167 (구포동)',
    telno = '051-336-8521',
    seatscale = '123';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001583', '서울특별시 도봉구 마들로11길 74 (창동)', '02-993-0561', '150')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 도봉구 마들로11길 74 (창동)',
    telno = '02-993-0561',
    seatscale = '150';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002283', '서울특별시 종로구 자하문로10길 16 (통의동)', '010-4113-4768', '40')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 자하문로10길 16 (통의동)',
    telno = '010-4113-4768',
    seatscale = '40';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004655', '경기도 평택시 고덕로 310 (고덕동)', NULL, '1318')
ON DUPLICATE KEY UPDATE
    adres = '경기도 평택시 고덕로 310 (고덕동)',
    telno = NULL,
    seatscale = '1318';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004115', '서울특별시 용산구 소월로 132 (후암동)', '02-2021-2800', '100')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 용산구 소월로 132 (후암동)',
    telno = '02-2021-2800',
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003828', '강원특별자치도 평창군 대관령면 올림픽로 395', '033-240-1375', '3500')
ON DUPLICATE KEY UPDATE
    adres = '강원특별자치도 평창군 대관령면 올림픽로 395',
    telno = '033-240-1375',
    seatscale = '3500';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002854', '서울특별시 종로구 대학로 128(동숭동)', '070-4870-1931', '160')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 대학로 128(동숭동)',
    telno = '070-4870-1931',
    seatscale = '160';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002558', '전라남도 영암군 삼호읍 대불로 91', '061-463-2233', '500')
ON DUPLICATE KEY UPDATE
    adres = '전라남도 영암군 삼호읍 대불로 91',
    telno = '061-463-2233',
    seatscale = '500';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003129', '세종특별자치시 조치원읍 새내4길 17', NULL, '150')
ON DUPLICATE KEY UPDATE
    adres = '세종특별자치시 조치원읍 새내4길 17',
    telno = NULL,
    seatscale = '150';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004476', '서울특별시 마포구 와우산로 63 (서교동)', NULL, '20')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 와우산로 63 (서교동)',
    telno = NULL,
    seatscale = '20';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003752', '서울특별시 서대문구 연희로 227 (연희동) 러브아트빌딩 신관 지하3층', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서대문구 연희로 227 (연희동) 러브아트빌딩 신관 지하3층',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002962', '인천광역시 동구 송림로110번길 5-8(송림동)', '032-772-7700', '495')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 동구 송림로110번길 5-8(송림동)',
    telno = '032-772-7700',
    seatscale = '495';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004488', '서울특별시 용산구 독서당로29길 5-6 (한남동, 리플레이스 한남 )', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 용산구 독서당로29길 5-6 (한남동, 리플레이스 한남 )',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003622', '전라북도 전주시 덕진구 와룡로 30 (송천동2가)', NULL, '50')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 전주시 덕진구 와룡로 30 (송천동2가)',
    telno = NULL,
    seatscale = '50';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002215', '서울특별시 마포구 독막로20길 42 (창전동) ', '02-336-8553', '80')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 독막로20길 42 (창전동) ',
    telno = '02-336-8553',
    seatscale = '80';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004080', '서울특별시 강남구 도산대로98길 30-3 (청담동, INYOURS cheongdam)', NULL, '20')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 도산대로98길 30-3 (청담동, INYOURS cheongdam)',
    telno = NULL,
    seatscale = '20';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000195', '서울특별시 종로구 대학로 60 (연건동)', '02-764-7606', '110')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 대학로 60 (연건동)',
    telno = '02-764-7606',
    seatscale = '110';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003461', '서울특별시 마포구 월드컵북로 88 (성산동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 월드컵북로 88 (성산동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000667', '경기도 파주시 시민회관길 33 (금촌동)', '031-950-1854', '1702')
ON DUPLICATE KEY UPDATE
    adres = '경기도 파주시 시민회관길 33 (금촌동)',
    telno = '031-950-1854',
    seatscale = '1702';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001290', '광주광역시 동구 금남로 250-9 (금남로1가)', '062-222-0933', '116')
ON DUPLICATE KEY UPDATE
    adres = '광주광역시 동구 금남로 250-9 (금남로1가)',
    telno = '062-222-0933',
    seatscale = '116';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002164', '경기도 남양주시 의안로 134 (평내동)', '031-590-8560', '325')
ON DUPLICATE KEY UPDATE
    adres = '경기도 남양주시 의안로 134 (평내동)',
    telno = '031-590-8560',
    seatscale = '325';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001469', '서울특별시 동작구 흑석로 84 (흑석동)', '02-820-6474', '595')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 동작구 흑석로 84 (흑석동)',
    telno = '02-820-6474',
    seatscale = '595';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003447', '강원도 철원군 갈말읍 명성로139번길 52', '033-450-4741', '330')
ON DUPLICATE KEY UPDATE
    adres = '강원도 철원군 갈말읍 명성로139번길 52',
    telno = '033-450-4741',
    seatscale = '330';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002049', '서울특별시 송파구 올림픽로 25 (잠실동)', '02-422-2285', '5400')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 송파구 올림픽로 25 (잠실동)',
    telno = '02-422-2285',
    seatscale = '5400';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002395', '서울특별시 성동구 성수이로7가길 9 (성수동2가)', '010-3934-2301', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 성동구 성수이로7가길 9 (성수동2가)',
    telno = '010-3934-2301',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003812', '전라북도 정읍시 서당길 14 (신정동) 1동 1층 포레스트베이', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 정읍시 서당길 14 (신정동) 1동 1층 포레스트베이',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004678', '충청남도 천안시 서북구 불당19로 82 (불당동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '충청남도 천안시 서북구 불당19로 82 (불당동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002557', '경기도 양평군 옥천면 신촌길 188', '031-772-3811', '1000')
ON DUPLICATE KEY UPDATE
    adres = '경기도 양평군 옥천면 신촌길 188',
    telno = '031-772-3811',
    seatscale = '1000';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002623', '서울특별시 은평구 연서로50길 7-9 (진관동)', '010-9988-8432', '90')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 은평구 연서로50길 7-9 (진관동)',
    telno = '010-9988-8432',
    seatscale = '90';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002739', '서울특별시 광진구 광나루로54길 9 (구의동)', '010-3442-0866', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 광진구 광나루로54길 9 (구의동)',
    telno = '010-3442-0866',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004244', '경기도 고양시 덕양구 항공대학로 76 (화전동)', NULL, '50')
ON DUPLICATE KEY UPDATE
    adres = '경기도 고양시 덕양구 항공대학로 76 (화전동)',
    telno = NULL,
    seatscale = '50';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004414', '경기도 화성시 장조1로 34 (안녕동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 화성시 장조1로 34 (안녕동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001712', '전라북도 정읍시 중앙로 73 (연지동)', '063-539-7872', '203')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 정읍시 중앙로 73 (연지동)',
    telno = '063-539-7872',
    seatscale = '203';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003412', '서울특별시 종로구 충신길 22 (종로6가)', '02-765-1511', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 충신길 22 (종로6가)',
    telno = '02-765-1511',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002025', '서울특별시 마포구 동교로 142-10 (서교동)', '02-2065-1233', '13')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 동교로 142-10 (서교동)',
    telno = '02-2065-1233',
    seatscale = '13';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003408', '경상북도 안동시 도산면 월천길 300', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경상북도 안동시 도산면 월천길 300',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001418', '전라북도 전주시 완산구 홍산북로 23-9 (효자동2가)', '063-282-1033', '60')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 전주시 완산구 홍산북로 23-9 (효자동2가)',
    telno = '063-282-1033',
    seatscale = '60';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003252', '서울특별시 마포구 서강로 144(노고산동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 서강로 144(노고산동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004239', '서울특별시 마포구 양화로 186 (동교동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 양화로 186 (동교동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001365', '전라북도 전주시 완산구 홍산중앙로 13 (효자동2가)', '00-1644-4356', '223')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 전주시 완산구 홍산중앙로 13 (효자동2가)',
    telno = '00-1644-4356',
    seatscale = '223';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003384', '서울특별시 관악구 관천로 58(신림동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 관악구 관천로 58(신림동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004573', '서울특별시 강남구 언주로133길 11 (논현동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 언주로133길 11 (논현동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004196', '서울특별시 성동구 뚝섬로 325-2 (성수동1가)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 성동구 뚝섬로 325-2 (성수동1가)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004308', '서울특별시 중구 퇴계로 176 (남학동)', '02-2039-0884', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 중구 퇴계로 176 (남학동)',
    telno = '02-2039-0884',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004395', '서울특별시 영등포구 경인로 757 (문래동3가)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 영등포구 경인로 757 (문래동3가)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002826', '제주특별자치도 제주시 조천읍 함덕로 32', '064-784-5353', '0')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 조천읍 함덕로 32',
    telno = '064-784-5353',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000806', '서울특별시 종로구 대학로10길 24 (동숭동)', '02-764-8760', '244')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 대학로10길 24 (동숭동)',
    telno = '02-764-8760',
    seatscale = '244';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002876', '경기도 하남시 신장로 58(천현동)', '031-796-6556', '96')
ON DUPLICATE KEY UPDATE
    adres = '경기도 하남시 신장로 58(천현동)',
    telno = '031-796-6556',
    seatscale = '96';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002782', '서울특별시 종로구 대학로11길 23 (명륜4가)', NULL, '100')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 대학로11길 23 (명륜4가)',
    telno = NULL,
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001539', '서울특별시 종로구 대학로8가길 79 (동숭동)', '070-4162-8320', '250')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 대학로8가길 79 (동숭동)',
    telno = '070-4162-8320',
    seatscale = '250';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002536', '서울특별시 마포구 월드컵북로 323 (상암동)', '02-309-3355', '250')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 월드컵북로 323 (상암동)',
    telno = '02-309-3355',
    seatscale = '250';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000506', '전라남도 여수시 좌수영로 69 (광무동 42-4)', '061-659-3770', '1226')
ON DUPLICATE KEY UPDATE
    adres = '전라남도 여수시 좌수영로 69 (광무동 42-4)',
    telno = '061-659-3770',
    seatscale = '1226';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003524', '서울특별시 종로구 대학로5길 57 (연건동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 대학로5길 57 (연건동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004116', '서울특별시 중구 창경궁로 6 (충무로5가)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 중구 창경궁로 6 (충무로5가)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004073', '경상남도 김해시 대청계곡길 47 (대청동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 김해시 대청계곡길 47 (대청동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000723', '제주특별자치도 제주시 중앙로 2 (삼도이동)', '064-759-1339', '2500')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 중앙로 2 (삼도이동)',
    telno = '064-759-1339',
    seatscale = '2500';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004679', '대구광역시 중구 동성로4길 20-7 (삼덕동1가)', NULL, '30')
ON DUPLICATE KEY UPDATE
    adres = '대구광역시 중구 동성로4길 20-7 (삼덕동1가)',
    telno = NULL,
    seatscale = '30';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000719', '경상남도 함안군 가야읍 선왕길 1-1', '055-583-1023', '330')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 함안군 가야읍 선왕길 1-1',
    telno = '055-583-1023',
    seatscale = '330';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004216', '경기도 파주시 탄현면 헤이리마을길 59-6', '031-949-9786', '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 파주시 탄현면 헤이리마을길 59-6',
    telno = '031-949-9786',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001741', '부산광역시 영도구 전망로 24 (동삼동)', '051-405-8745', '300')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 영도구 전망로 24 (동삼동)',
    telno = '051-405-8745',
    seatscale = '300';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002873', '제주특별자치도 제주시 조천읍 북촌9길 31', '064-783-1225', '14')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 조천읍 북촌9길 31',
    telno = '064-783-1225',
    seatscale = '14';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000932', '인천광역시 남동구 장수로 42 청소년수련관', '032-722-9133', '430')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 남동구 장수로 42 청소년수련관',
    telno = '032-722-9133',
    seatscale = '430';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003286', '충청남도 천안시 동남구 풍세로 835(용곡동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '충청남도 천안시 동남구 풍세로 835(용곡동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002205', '서울특별시 중구 덕수궁길 130 (정동)', '02-722-1928', '150')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 중구 덕수궁길 130 (정동)',
    telno = '02-722-1928',
    seatscale = '150';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002749', '서울특별시 강동구 명일로 167 (둔촌동)', '02-477-9554', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강동구 명일로 167 (둔촌동)',
    telno = '02-477-9554',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004636', '경상남도 진주시 진양호로369번길 3 (신안동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 진주시 진양호로369번길 3 (신안동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001718', '서울특별시 강남구 언주로133길 11 (논현동)', '02-6929-4470', '172')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 언주로133길 11 (논현동)',
    telno = '02-6929-4470',
    seatscale = '172';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002719', '대구광역시 서구 당산로 403 (이현동)', '053-663-3081', '0')
ON DUPLICATE KEY UPDATE
    adres = '대구광역시 서구 당산로 403 (이현동)',
    telno = '053-663-3081',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002175', '서울특별시 마포구 와우산로17길 12 (서교동)', '010-9025-3407', '130')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 와우산로17길 12 (서교동)',
    telno = '010-9025-3407',
    seatscale = '130';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002824', '경상북도 상주시 함창읍 무운로 1557-4', '054-541-6995', '0')
ON DUPLICATE KEY UPDATE
    adres = '경상북도 상주시 함창읍 무운로 1557-4',
    telno = '054-541-6995',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001431', '서울특별시 종로구 동숭길 76 (동숭동)', '02-747-7331', '61')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 동숭길 76 (동숭동)',
    telno = '02-747-7331',
    seatscale = '61';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003208', '전라북도 전주시 완산구 천잠로 235(효자동2가)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 전주시 완산구 천잠로 235(효자동2가)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000627', '울산광역시 남구 삼산로 261 (삼산동)', '052-228-1004', '500')
ON DUPLICATE KEY UPDATE
    adres = '울산광역시 남구 삼산로 261 (삼산동)',
    telno = '052-228-1004',
    seatscale = '500';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003795', '부산광역시 수영구 광안해변로 225 (광안동)', NULL, '490')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 수영구 광안해변로 225 (광안동)',
    telno = NULL,
    seatscale = '490';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003013', '서울특별시 마포구 잔다리로 6(서교동)', '010-5208-5319', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 잔다리로 6(서교동)',
    telno = '010-5208-5319',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004689', '서울특별시 중구 청계천로 14 (무교동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 중구 청계천로 14 (무교동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004107', '서울특별시 중구 을지로 167 (을지로4가)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 중구 을지로 167 (을지로4가)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004544', '서울특별시 성동구 아차산로13길 2 (성수동2가)', '02-6397-0171', '60')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 성동구 아차산로13길 2 (성수동2가)',
    telno = '02-6397-0171',
    seatscale = '60';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004385', '강원특별자치도 원주시 지정면 조엄로 14', NULL, '50')
ON DUPLICATE KEY UPDATE
    adres = '강원특별자치도 원주시 지정면 조엄로 14',
    telno = NULL,
    seatscale = '50';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001482', '서울특별시 서대문구 신촌로 83 (창천동)', '02-3145-3453', '420')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서대문구 신촌로 83 (창천동)',
    telno = '02-3145-3453',
    seatscale = '420';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000247', '경상남도 통영시 남망공원길 29 (동호동)', '055-641-2622', '1170')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 통영시 남망공원길 29 (동호동)',
    telno = '055-641-2622',
    seatscale = '1170';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002227', '전라북도 군산시 해망로 244-7 (장미동)', '063-461-1908', '70')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 군산시 해망로 244-7 (장미동)',
    telno = '063-461-1908',
    seatscale = '70';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002699', '전라북도 전주시 완산구 천잠로 303 (효자동2가)', '00-1577-7177', '2294')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 전주시 완산구 천잠로 303 (효자동2가)',
    telno = '00-1577-7177',
    seatscale = '2294';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002868', '경상남도 창원시 의창구 동읍 동읍로 238', '010-8109-3340', '0')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 창원시 의창구 동읍 동읍로 238',
    telno = '010-8109-3340',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001475', '서울특별시 마포구 마포대로 12 (마포동)', '02-6356-2121', '150')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 마포대로 12 (마포동)',
    telno = '02-6356-2121',
    seatscale = '150';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000724', '제주특별자치도 제주시 한라대학로 38 (노형동)', '064-741-7575', '1311')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 한라대학로 38 (노형동)',
    telno = '064-741-7575',
    seatscale = '1311';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002967', '부산광역시 해운대구 송정광어골로 76(송정동)', NULL, '30')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 해운대구 송정광어골로 76(송정동)',
    telno = NULL,
    seatscale = '30';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003842', '서울특별시 은평구 가좌로 283-1 (신사동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 은평구 가좌로 283-1 (신사동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003844', '서울특별시 마포구 포은로 75 (망원동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 포은로 75 (망원동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002337', '서울특별시 동작구 남부순환로 2019 (사당동)', '02-558-1013', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 동작구 남부순환로 2019 (사당동)',
    telno = '02-558-1013',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001265', '서울특별시 중구 정동길 26 (정동)', '02-777-4258', '427')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 중구 정동길 26 (정동)',
    telno = '02-777-4258',
    seatscale = '427';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001599', '세종특별자치시 도움6로 11 (어진동)', '044-200-1189', '624')
ON DUPLICATE KEY UPDATE
    adres = '세종특별자치시 도움6로 11 (어진동)',
    telno = '044-200-1189',
    seatscale = '624';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002333', '인천광역시 남동구 문화로 119 (구월동) 지하1층', '010-2023-1774', '50')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 남동구 문화로 119 (구월동) 지하1층',
    telno = '010-2023-1774',
    seatscale = '50';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002139', '제주특별자치도 제주시 구좌읍 해맞이해안로 2265', NULL, '34')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 구좌읍 해맞이해안로 2265',
    telno = NULL,
    seatscale = '34';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003678', '경상남도 합천군 합천읍 장수로 1', NULL, '1111')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 합천군 합천읍 장수로 1',
    telno = NULL,
    seatscale = '1111';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003802', '경기도 용인시 수지구 고기로173번길 10-8 (동천동56)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 용인시 수지구 고기로173번길 10-8 (동천동56)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003664', '경기도 수원시 팔달구 정조로 817 (팔달로1가)', '031-290-3578', '258')
ON DUPLICATE KEY UPDATE
    adres = '경기도 수원시 팔달구 정조로 817 (팔달로1가)',
    telno = '031-290-3578',
    seatscale = '258';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001407', '대전광역시 동구 대전로448번길 70 (가오동)', '042-282-2116', '200')
ON DUPLICATE KEY UPDATE
    adres = '대전광역시 동구 대전로448번길 70 (가오동)',
    telno = '042-282-2116',
    seatscale = '200';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004384', '경기도 여주시 강천면 이문안길 28', NULL, '50')
ON DUPLICATE KEY UPDATE
    adres = '경기도 여주시 강천면 이문안길 28',
    telno = NULL,
    seatscale = '50';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003670', '인천광역시 중구 공항문화로 127 (운서동)', NULL, '18483')
ON DUPLICATE KEY UPDATE
    adres = '인천광역시 중구 공항문화로 127 (운서동)',
    telno = NULL,
    seatscale = '18483';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000459', '충청북도 청주시 청원구 공항로287번길 56 (주중동)', '043-229-2600', '1211')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 청주시 청원구 공항로287번길 56 (주중동)',
    telno = '043-229-2600',
    seatscale = '1211';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002048', '서울특별시 마포구 잔다리로 10 (서교동)', '010-7430-6640', '1500')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 잔다리로 10 (서교동)',
    telno = '010-7430-6640',
    seatscale = '1500';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003484', '경기도 남양주시 화도읍 수레로 1259', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 남양주시 화도읍 수레로 1259',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002972', '부산광역시 남구 용소로19번길 15(대연동)', '051-626-4582', '0')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 남구 용소로19번길 15(대연동)',
    telno = '051-626-4582',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003326', '부산광역시 남구 용소로 26(대연동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 남구 용소로 26(대연동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002052', '서울특별시 중구 충무로7길 17 (을지로3가)', '010-2077-2221', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 중구 충무로7길 17 (을지로3가)',
    telno = '010-2077-2221',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000371', '강원도 춘천시 효자상길5번길 13 (효자동)', '033-259-5841', '940')
ON DUPLICATE KEY UPDATE
    adres = '강원도 춘천시 효자상길5번길 13 (효자동)',
    telno = '033-259-5841',
    seatscale = '940';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004525', '경상남도 통영시 한산면 호두1길 41', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 통영시 한산면 호두1길 41',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003819', '서울특별시 강남구 압구정로 416 (청담동) 더트리니티빌딩 9층', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 강남구 압구정로 416 (청담동) 더트리니티빌딩 9층',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003717', '경기도 남양주시 와부읍 경강로926번길 30', '031-577-2977', '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 남양주시 와부읍 경강로926번길 30',
    telno = '031-577-2977',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002735', '경기도 고양시 덕양구 행주산성로 38 (행주외동)', '00-1599-4985', '200')
ON DUPLICATE KEY UPDATE
    adres = '경기도 고양시 덕양구 행주산성로 38 (행주외동)',
    telno = '00-1599-4985',
    seatscale = '200';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000649', '경기도 수원시 장안구 송원로 101 (조원동)', '031-240-3000', '499')
ON DUPLICATE KEY UPDATE
    adres = '경기도 수원시 장안구 송원로 101 (조원동)',
    telno = '031-240-3000',
    seatscale = '499';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002721', '서울특별시 마포구 동교로 63 (망원동)', '010-9941-5296', '100')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 마포구 동교로 63 (망원동)',
    telno = '010-9941-5296',
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003922', '강원특별자치도 원주시 천사로 60 (단계동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '강원특별자치도 원주시 천사로 60 (단계동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004006', '서울특별시 서초구 나루터로15길 30-9 (잠원동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서초구 나루터로15길 30-9 (잠원동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002555', '울산광역시 동구 바드래1길 30 (전하동)', '052-209-7900', '200')
ON DUPLICATE KEY UPDATE
    adres = '울산광역시 동구 바드래1길 30 (전하동)',
    telno = '052-209-7900',
    seatscale = '200';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002436', '서울특별시 양천구 목동동로 257 (목동, 현대하이페리온) ', '02-2163-1700', '530')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 양천구 목동동로 257 (목동, 현대하이페리온) ',
    telno = '02-2163-1700',
    seatscale = '530';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003691', '강원특별자치도 동해시 중앙로 184 (천곡동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '강원특별자치도 동해시 중앙로 184 (천곡동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001540', '경상남도 창원시 의창구 용지로153번길 3 (용호동)', '00-1899-9498', '195')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 창원시 의창구 용지로153번길 3 (용호동)',
    telno = '00-1899-9498',
    seatscale = '195';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003170', '경기도 용인시 수지구 고기로129번길 18 (동천동)', '070-4799-2201', '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 용인시 수지구 고기로129번길 18 (동천동)',
    telno = '070-4799-2201',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004647', '서울특별시 용산구 한강대로49길 14 (한강로2가)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 용산구 한강대로49길 14 (한강로2가)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002167', '전라북도 전주시 완산구 충경로 100 (경원동3가) 지하1층', '063-287-2012', '70')
ON DUPLICATE KEY UPDATE
    adres = '전라북도 전주시 완산구 충경로 100 (경원동3가) 지하1층',
    telno = '063-287-2012',
    seatscale = '70';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003588', '부산광역시 연제구 연수로235번길 7 (연산동)', NULL, '104')
ON DUPLICATE KEY UPDATE
    adres = '부산광역시 연제구 연수로235번길 7 (연산동)',
    telno = NULL,
    seatscale = '104';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003151', '충청북도 청주시 청원구 상당로 314(내덕동)', '043-268-0255', '300')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 청주시 청원구 상당로 314(내덕동)',
    telno = '043-268-0255',
    seatscale = '300';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000162', '전라남도 진도군 진도읍 남동1길 40-18', '061-544-2181', '0')
ON DUPLICATE KEY UPDATE
    adres = '전라남도 진도군 진도읍 남동1길 40-18',
    telno = '061-544-2181',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004176', '충청북도 충주시 사직로 140 (문화동)', '043-842-5909', '200')
ON DUPLICATE KEY UPDATE
    adres = '충청북도 충주시 사직로 140 (문화동)',
    telno = '043-842-5909',
    seatscale = '200';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004148', '경상북도 포항시 남구 오천읍 정몽주로 566', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '경상북도 포항시 남구 오천읍 정몽주로 566',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001707', '서울특별시 종로구 이화장길 58 (이화동)', '00-1661-3124', '204')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 이화장길 58 (이화동)',
    telno = '00-1661-3124',
    seatscale = '204';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001915', '경기도 이천시 마장면 지산로 267 (해월리)', '031-644-1200', '72')
ON DUPLICATE KEY UPDATE
    adres = '경기도 이천시 마장면 지산로 267 (해월리)',
    telno = '031-644-1200',
    seatscale = '72';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004378', '대전광역시 중구 대흥로139번길 38 (대흥동)', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '대전광역시 중구 대흥로139번길 38 (대흥동)',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003911', '강원특별자치도 태백시 태백로 1485 (문곡동)', NULL, '5000')
ON DUPLICATE KEY UPDATE
    adres = '강원특별자치도 태백시 태백로 1485 (문곡동)',
    telno = NULL,
    seatscale = '5000';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003724', '강원특별자치도 동해시 해안로 79 (용정동)', '033-532-7697', '0')
ON DUPLICATE KEY UPDATE
    adres = '강원특별자치도 동해시 해안로 79 (용정동)',
    telno = '033-532-7697',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003745', '강원특별자치도 강릉시 주문진읍 학교담길 32-8', NULL, '0')
ON DUPLICATE KEY UPDATE
    adres = '강원특별자치도 강릉시 주문진읍 학교담길 32-8',
    telno = NULL,
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC000053', '전라남도 장성군 장성읍 문화로 110', '061-390-7552', '883')
ON DUPLICATE KEY UPDATE
    adres = '전라남도 장성군 장성읍 문화로 110',
    telno = '061-390-7552',
    seatscale = '883';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001257', '울산광역시 중구 중앙길 92 (성남동)', '052-247-7751', '100')
ON DUPLICATE KEY UPDATE
    adres = '울산광역시 중구 중앙길 92 (성남동)',
    telno = '052-247-7751',
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004657', '강원특별자치도 홍천군 홍천읍 태학여내길 22', NULL, '1360')
ON DUPLICATE KEY UPDATE
    adres = '강원특별자치도 홍천군 홍천읍 태학여내길 22',
    telno = NULL,
    seatscale = '1360';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002551', '대전광역시 유성구 대학로 291 (구성동)', '042-350-2114', '990')
ON DUPLICATE KEY UPDATE
    adres = '대전광역시 유성구 대학로 291 (구성동)',
    telno = '042-350-2114',
    seatscale = '990';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001104', '서울특별시 서대문구 연세로 38 (창천동) 창천교회', '02-364-8631', '400')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 서대문구 연세로 38 (창천동) 창천교회',
    telno = '02-364-8631',
    seatscale = '400';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC004263', '경상남도 창원시 진해구 충무로 43 (도만동)', NULL, '15000')
ON DUPLICATE KEY UPDATE
    adres = '경상남도 창원시 진해구 충무로 43 (도만동)',
    telno = NULL,
    seatscale = '15000';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002794', '서울특별시 관악구 관악로14길 110 (봉천동)', '02-545-4083', '0')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 관악구 관악로14길 110 (봉천동)',
    telno = '02-545-4083',
    seatscale = '0';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003468', '서울특별시 종로구 동숭길 64 (동숭동)', NULL, '40')
ON DUPLICATE KEY UPDATE
    adres = '서울특별시 종로구 동숭길 64 (동숭동)',
    telno = NULL,
    seatscale = '40';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC002239', '대구광역시 남구 현충로 244 (대명동)', '010-2338-1340', '100')
ON DUPLICATE KEY UPDATE
    adres = '대구광역시 남구 현충로 244 (대명동)',
    telno = '010-2338-1340',
    seatscale = '100';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC001755', '제주특별자치도 제주시 한경면 저지14길 35 현대미술관 야외공연장', '064-710-7801', '1000')
ON DUPLICATE KEY UPDATE
    adres = '제주특별자치도 제주시 한경면 저지14길 35 현대미술관 야외공연장',
    telno = '064-710-7801',
    seatscale = '1000';

INSERT INTO venue_details (mt10id, adres, telno, seatscale)
VALUES ('FC003334', '경기도 성남시 분당구 양현로 322(야탑동)', '031-780-2246', '0')
ON DUPLICATE KEY UPDATE
    adres = '경기도 성남시 분당구 양현로 322(야탑동)',
    telno = '031-780-2246',
    seatscale = '0';
