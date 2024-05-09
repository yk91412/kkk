## 외장함수

** pickle : 객체의 형태를 유지하면서 파일에 저장하고 불러올 수 있게 하는 모듈

    import pickle

    f = open(저장하고싶은 이름,wb(write..같은데))
    data = ~~
    pickle.dump(data,f)
    f.close()

    =>
    
    f = open(저장한 이름,rb(read..))
    data = pickle.load(f)
    f.close()

** 타임존을 한국 기준으로 바꾸기

    import pytz
    from datetime import datetime

    def datetime_to_string(dt):
      soeul_timezone = pytz.timezone('Asia/Seoul')
      dt_korea = dt.astimezone(soeul_timezone)
      return dt_korea.strftime('%Y-%m-%d %H:%M:%S')

    result = datetime_to_string(datetime.now())
    print(result , type(result))
    
=================================================================================================

- !ls : 현재 디렉터의 파일 및 폴더 목록 보여줌
- !ls -la => 더 자세하게 나옴
- !ls / : 루트 디렉터리의 내용을 보여줌, 최상위 디렉터리를 나타내는데 사용

- %pwd : 주피터노트북에서 사용하는 매직 명령어, 현재 작업 디렉터리의 경로 반환
  
- os.environ['PATH'] 명령의 출력 결과는 운영 체제가 프로그램이나 실행 파일을 찾기 위해 검색하는 디렉터리들의 리스트
  
- PATH 설정은 시스템이 사용자가 입력하는 명령어를 인식하고 해당 실행 파일을 효율적으로 찾아내도록 도와준다.
  
      import os
      os.environ['PATH']

- os.getcwd() : 현재 작업폴더

- os.rename(현재 파일 이름, 변경하고싶은 이름)

- os.chdir(변경할 폴더) : 폴더 변경

- !mkdir : 셸 명령어 중 하나, 디렉터리(폴더)를 만드는 명령어
  
        EX) !mkdir new_directory -> 현재 디렉터리에 new_directory라는 이름의 새 디렉터리 생성

- !pwd : 현재 폴더 확인

- !touch 만든파일 이름 : 빈 파일 만들기

- glob() 함수 : 인자로 받은 패턴과 이름이 일치하는 모든 파일과 디렉토리의 리스트를 반환
  
      import glob
      golb.glob(패턴이 있는 파일)
  
- with open(만들 파일 이름, 'w'(쓰기 모드)) as f:
      f.write()
  with open(만든 파일 이름, 'r'(읽기 모드)) as f:
    담을 변수명 = f.read()

=============================================================================================================

  ** 정규표현식
  import re
  re.sub : 특정 특수기호 및 공백을 원하는 문자나 기호로 변환해준다
    사용법 : re.sub(r'[원하는 기호]','바꿀 문자',원하는 문자열)

  - < 왼쪽 정렬 > 오른쪽 정렬 ^ 가운데 정렬
 
  ** 외부 라이브러리

  seaborn : 시각화, 데이터셋 제공

  - myList = [lambda a,b:a+b, lambda a,b:a*b]
  - 이런 식으로 인덱싱하여 함수를 사용할 수도 있다
      print(myList[0](3,4))
      print(myList[1](3,4))

  - map과 filter 함수의 차이점
 
  - * filter함수 : 특정 조건으로 걸러서 걸러진 요소들로 iterator객체를 만들어서 리턴해줍니다.
  - * map함수 : 사용 방법은 동일하나, 함수의 결과가 참인지 거짓인지에 따라, 해당 요소를 포함할지를 결정합니다.

===============================================================================================================
   
  ** 사용자 함수

  - 문자는 문자, 숫자는 숫자끼리 +가 가능(숫자를 문자형으로 바꾸면 가능)
 
  - 기본값에 대입한 기본인자(디폴트값)은 마지막에 위치
 
  - (*args) : 가변 인자, 함수 내부에서 튜플로 처리
 
  - (**kwargs) : 키워드 가변 인자, 키워드가 불명확한 경우 사용하며, 함수 내부에서 사전으로 처리
 
  - 함수의 반환값(return)의 값은 언제나 하나 -> 두개를 적을 경우 튜플 값 하나 갖게됨
 
  - 지역 변수와 전역 변수
    
  - 지역 변수 : 함수 내부에서만 유효
    
  - 전역 변수 : 코드 전반에 걸쳐서 유효 -> 함수 내부에서 사용할 경우 global 키워드 이용해 전역변수를 사용한다고 명시
  
