## 반복문, zip함수, random 모듈
### 과제풀이 - 정규표현식 re.split()

- #### 제어문 관련 키워드
  * pass : 코드를 수행할 때 넣을 조건은 없지만 반복문의 형태를 유지하고 싶을 때 사용
  * continue : 반복문의 나머지 부분을 건너뛰고, 다음 반복을 시작 / 반복문은 유지하면서 하위코드를 실행하고 싶지 않을 
  * break : 현재의 반복문을 중단하고, 반복문 바깥의 코드를 실행

- #### 예외처리
  1. try ~ except
    try :
          실행할 코드(에러 발생할 수도 있는)
    except :
          에러를 처리할 코드

  2. try ~ except ~ else
     try :
         실행할 코드(에러 발생할 수도 있는)
    except :
          에러를 처리할 코드
    else :
          에러 발생하지 않을 때 거치는 구문(단독 사용 불가능)
           try 내부의 모든 코드가 실행된 후 else 구문이 실행
     
  4. try ~ finally
     try :
         실행할 코드(에러 발생할 수도 있는)
     finally :
         에러가 발생해도, 하지 않아도 무조건 거치는 구문
         except로 예외처리를 안했다면 finally까지 실행하고 코드 오류발생 
  
- ### zip()함수
  여러 개의 이터러블(리스트, 튜플 등)을 인자로 받아, 동일한 인덱스에 있는 요소들을 하나의 튜플로 묶어서 이터레이터를 반환
  데이터를 병렬로 처리할 때 유용

- ### random 모듈
- import random -> random 모듈안에 모든 함수 이용가능
- from random import randint -> random 모듈 중 import한 특정 함수만 이용가능
  난수를 생성하기 위한 다양한 함수를 제공

  * 기본 난수 생성:
    random.random(): 0과 1 사이의 무작위 부동소수점 숫자를 반환.
  
  * 범위 지정 난수 생성:
    random.randint(a, b): a와 b 사이의 무작위 정수를 반환(b 포함).
    random.randrange(start, stop[, step]): 지정된 범위에서 무작위 정수를 반환. step을 설정하여 수의 간격을 조정할 수 있다.

  * 시퀀스용 함수:
    random.choice(sequence): 주어진 시퀀스(리스트, 튜플 등)에서 무작위로 아이템을 선택하여 반환.
    random.shuffle(x[, random]): 리스트의 항목들을 무작위로 섞는다. random은 섞기를 위한 함수를 커스텀할 때 사용.
    random.sample(population, k): 주어진 시퀀스에서 무작위로 k개의 항목을 뽑아 새 리스트로 반환.

  * 분포 기반 난수 생성:
    random.uniform(a, b): a와 b 사이의 무작위 부동소수점 숫자를 균등 분포로 반환.
    random.gauss(mu, sigma): 평균 mu와 표준편차 sigma를 가지는 정규 분포에서 난수를 반환.

    ** 과제풀이
    - #### re.split()
    - import re
    - 주어진 문자열에서 공백, 쉼표, 마침표, 물음표, 느낌표를 포함하여 연속된 어떤 조합이라도 하나의 구분자로 취급하고, 이에 따라 문자열을 분리하는 정규 표현식
   
    - 사용법 : re.split('[ ,.?!]+', 문자열) -> 리스트로 반환 !!!
    - [] : 대괄호는 클래스를 만들며 대괄호 안에 포함된 어떤 문자와도 일치 가능
    - + : 하나 이상 일치. 여러 구분자가 연속적으로 위치해 있는 경우에도 단일 구분점으로 취급할 수 있다

      * 다른 특수문자도 사용 가능
      * ()를 사용할 시 특수문자 하나만 제거가능
      * re.split()엔 구분자까지 저장되는 기능 존재 str.split()은 없다
      * ()일 때는 구분자까지 나옴 []로 바꿀 때는 구분자가 안 나온다
      * 대괄호 뒤에 +가 없을 때 구분자가 연속되어 있어도 한 개로만 인식해서
        구분자가 없어지고 공백이 연속되어 있는 만큼에서 -1만큼 나온다
        ex) <^,라면 '문자', '' , '' , '문자'
        연속된 구분자가 있을 수 있으니 되도 +를 쓰는게 좋을 듯 !

      * 간혹 '' 공백도 함께 출력이 되므로 공백을 제거 해야한다
        1. 반복문 사용
           [i for i in 출력된 리스트 if token]
           공백이 아닌 문자라면 출력하게함
           
        2. filter 사용
           만들 형식(tuple,list,set/dict불가)(filter(None,원하는 리스트))
           filter(함수,반복 가능한 값)
           *** 원래 값에서 함수에 Ture값만 출력하게 되는데
           None일 때는 기본함수로 가정이 되고 그건 False가 제거된 모든 반복된 원소를 출력하게됨
           따라서 공백을 제거할 수 있게된다
           
           
    - 내가 푼 방식
    - re.sub() : 정규 표현식 패턴과 일치하는 문자열을 찾아 다른 문자열로 대체
    - 특수문자를 공백으로 대체하여 특수문자를 제거했다. 문자열로 반환되어서 split을 쓰고 리스트형식으로 바꿈
    - 사용법 : re.sub(r'[특수문자]',바꾸고싶은 문자, 문자열) -> 문자열로 반환 !!!
    - 여기서 r은 정규표현식이라는걸 알려주는 것

    - 2진수 0b
    - bin()으로 10진수를 2진수로 변경
    - 8진수 0o
    - oct()으로 10진수를 8진수로 변경
    - 16진수 0x
    - hex()으로 10진수를 16진수로 변경

    - 리스트 메소드
    - insert : 추가 시 리스트 값 자체가 변경이 되어 맨 뒤에는 추가할 수 가 없다
      ex) -1 -2로 추가하게 된다면
        .insert(-1,3) -> [1,3,2]
        .insert(-2,4) -> [1,4,3,2]
        그 자리 왼쪽 옆에 추가된다고 생각하면 될 것 같다
    - append : 넣고싶은 것을 통째로(그 자체)로 입력
      ex) a= [1,2,3]
          .append(a)를 하게되면 [1,2,3]그자체가 리스트 안에 들어감
    - extend : 넣고싶은 것의 내용만 입력
      ex) a =[1,2,3]
        .extend(a)를 하게되면 1,2,3 값만 리스트 안에 들어감