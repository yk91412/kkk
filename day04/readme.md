- 나누기(/)를 할 때 0으로 나누면 오류가 발생하므로("Error : Division by zero")
  a / b 라면 if b == 0:
            print("Error : Division by zero")
            else :
            print(a/b)
            를 같이 넣으면 오류 발생 줄일 수 있다

 - return 사용시 함수 종료의 의미도 있기 때문에 위치를 잘 설정해야한다
    ex ) for i in numbers:
           if i > threshold :
              return True
          return False

- 문자열 메소드 .split()
      원하는 기준으로 문자를 나눌 수 있다 비어있을 시 공백(즉, 띄어쓰기로 나눈다)

- 문자열 메소드 대소문자 변환 .lower() .upper() .capitalize()
      순서대로 소문자로 모두 변환, 대문자로 모두 변환, 첫글자만 대문자 그 후는 소문자
      
 - 복합대입연산자
      사칙연산과 함께 변수에 다시 저장할 수 있다

- 이스케이프 문자
      \n \t \\ "\'문자\'" '\"문자\"' %%
   
  - 문자열 포맷
      %연산자 str.format f-string

  - 총자리 수 / 소수점 표현
      print(f"{변수명:원하는 자리수.원하는 소수점자리수f}")
      ex ) print(f"{num:10d}") -> num값을 총 자리수 10에 맞춘다
          print(f"{y:10.4f}) -> y의 값을 총 자리수 10에 맞추고 소수점 4까지 출력한다
          print(f"{c:012.1f}") -> c의 값을 12자리수로 맞추는데 남은 값은 0으로 채우고
                                  소수점을 1까지 출력한다
  - 2진수 8진수 16진수 표현법
     2진수 : binary -> 0b로 시작(0과 1)
      8진수 : octal number -> 0o로 시작(0~7까지 숫자)
      16진수 : hexadecimal -> 0x로 시작
      10 a, 11 b, 12 c , 13 d, 14 e, 15 f
      계산법 : print(0xAB)     print(16*10+11)
              print(0xABC)     print(16*16*10+16*11+12)
              print(0xABCD)  print(16*16*16*10+16*16*11+16*12+13)
              수가 늘어나는 만큼 앞에 16을 더 곱해준다
    * 조건문
    * if ~ elif ~ else
    * 조건은 비교연산자와 논리연산자를 사용하여 표현할 수 있다
    * elif는 else if의 축약형으로 이전 if 혹은 elif문의 조건이 거짓일 때이며
      여러 elif문을 사용할 수 있다

    * if문
    * if문을 여러개 사용할 때는 각 조건이 서로 독립적일 때 사용한다
   
    * if ~ else문
      
      
