## 과제 풀이 - 라이브러리, 외장함수, 내장함수, 시나리오

** 패키지 = 라이브러리라고도 부름

특정 기능과 관련된 여러 모듈을 한 그룹으로 묶은 것
패키지 안에 서브패키지가 있을 수도 있다.
import 패키지/모듈, from 패키지/모듈 import 서브패키지/모듈

** 모듈

여러 기능들이 뭉쳐진 하나의. py파일
함수, 클래스, 변수 등 포함
import 모듈

** 함수
하나의 기능을 가진 코드의 집합
함수를 사용한다 = 함수를 호출한다
함수 사용 형태: 함수( )
필요한 경우 () 안에 매개변수 또는 옵션

종류
내장 함수(built in function)
외장 함수: import 해주어야 함

**클래스

파이썬은 객체 지향 언어로클래스를 기반으로 객체를 만들어 사용한다.
한 파이썬 파일(. py) 내에서 "class class명():"을 통해 클래스 선언

** 함수와 메소드 주요 차이점

정의: 함수는 독립적으로 정의되지만, 메소드는 클래스 내부에서 정의
호출: 함수는 이름만으로 호출될 수 있지만, 메소드는 객체를 통해 호출
참조: 메소드는 첫 번째 매개변수로 객체 자신을 참조(self), 반면 함수는 이런 자체 참조 매개변수를 갖지 않는다.

- 함수가 다른 객체와 마찬가지로 변수에 할당되거나, 다른 함수로 전달되거나, 다른 함수로부터 반환될 수 있음

*** sort, sorted 모두 key, reverse 매개변수를 갖고 있다

reverse : 기본값은 reverse=False(오름차순), reverse=True를 매개변수로 입력하면 내림차순으로 정렬

key : 정렬을 목적으로 하는 함수를 값으로 넣는다. lambda를 이용할 수 있고 key값을 기준으로 정렬되고 기본값은 오름차순

* 첫번재 인자를 기준으로 오름차순 정렬 -> 같을 경우 두번째 인자를 기준으로 내림차순
* -를 하면 내림차순으로 설정된다

  **** eval 함수

  문자열을 숫자연산으로 바꾸어 출력해준다
  ex) eval('3+5') -> 8

  - import 모듈
    Counter 모듈
    most_common : 데이터의 개수가 많은순으로 정렬
    #메서드의 인자로 숫자 K를 넘기면 그 숫자 만큼만 리턴하기 때문에, 가장 개수가 많은 K개의 데이터를 얻을 수도

    - datetime 모듈
      현재 날짜와 시간등..을 알려준다
      
      날짜와 시간(datetime)을 문자열로 출력하려면 strftime

      날짜와 시간 형식의 문자열을 datetime으로 변환하려면 strptime을 사용하면 된다.

    - 외부 라이브러리
    - 
     requests : HTTP 요청을 보낼 수 있도록 기능을 제공하는 라이브러리
    Beautiful Soup : 웹 페이지의 정보를 쉽게 스크랩할 수 있도록 기능 제공하는 라이브러리

    response = requests.get(url)
    ->>
      url에서 데이터를 가져와서
      requests.get() 메서드를 사용하여 GET 요청을 보내고, 응답을 response 변수에 저장합니다
     
    if response.status_code == 200:
    ->>
    받은 HTML 내용을 BeautifulSoup 클래스의 객체 형태로 생성/반환합니다.
    BeautifulSoup 객체를 통해 HTML 코드를 파싱하기 위한 여러 가지 기능을 사용할 수 있습니다.
    
    - response.status_code  응답의 상태 코드 출력
    - response.headers 응답의 헤더 출력
    - response.text 응답의 본문 출력
   
    soup = BeautifulSoup(response.text, 'html.parser')
    ->>
    HTML 내용을 BeautifulSoup 객체로 파싱합니다
    (response.text는 응답 받은 내용(HTML)을 Unicode 형태로 반환합니다.)
