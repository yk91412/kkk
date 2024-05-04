## 과제풀이 - 대각선 수 구하기, 함수

** 과제풀이

- [대각선 수 구하기 ]

4행 3열에서 첫 번째 행은 3개의 대각선에 각각 기여합니다.
첫 번째 열은 4개의 대각선에 각각 기여합니다.

하지만 가장 왼쪽 상단의 원소가 두 방향에서 모두 카운트되므로, 총 대각선 수는 3 + 4 − 1 = 6개가 됩니다.

따라서 열의 수 + 행의수 -1이 대각선의 수가 된다 !

- [ 대각선 합 구하기 ]

a b c

d e f

g h i

j k l

대각선 0: a

대각선 1: b + d

대각선 2: c + e + g

대각선 3: f + h + j

대각선 4: i + k

더해야하는 위치를 적어봤을 때 
첫 인덱스값과 두번째 인덱스 값을 더하면 같다는걸 알게되었다

ex ) 0의 1번/1의 0번 첫번째 두번째 인덱스를 더하면 1인게 똑같다

 0의 0
 
 0의 1번과 1의 0번
 
 0의 2번과 1의 1번 2의 0번
 
 1의 2번과 2의 1번 3의 0번
 
 2의 2번과 3의2번
 
 3의 2번

 이를 통해서 대각선의 수는
 for문을 통해서 i, j의 범위를 정하고
 인덱스 값을 i+j로 새로운 인덱스 값을 만든다
 그리고 0이 들어있는 새로운 리스트에
 인덱스 값에 위치한 [i][j]위치 값들을 더해주면
 대각선의 합을 합친 새로운 리스트를 만들 수 있다

 이렇게 인덱스 위치를 더했을 때 같다면
 더한 값을 새로운 인덱스 위치 값으로 정하고 
 그 새로운 인덱스 위치값에 더했을 때 같았던 위치를 더하면된다는
 사실을 알았다 !! 

 ** 함수

 #### main 함수
 if name == "main":
 
ㄴ 메인 함수의 선언, 시작을 의미한다

현재 모듈이 직접 실행되는지 또는 다른 파일에 의해 임포트되어 사용되는지를 판단할 때 사용.

만약 모듈이 직접 실행되면 name 변수의 값은 "main"이 되고, 모듈이 다른 파일에서 임포트되어 사용될 경우 name은 모듈의 이름이 된다.

** 내장 함수 (Built-in Functions):

내장 함수는 파이썬 인터프리터에 포함되어 있어, 별도의 모듈을 임포트(import)하지 않고도 사용

ex) print(), len(), type(), range(), zip() 등

이러한 함수들은 기본적인 작업을 수행하며, 파이썬 프로그래밍의 기본적인 빌딩 블록(building blocks)으로 작동

** 외장 함수 (External Functions):

- 표준 라이브러리에 포함된 모듈과 함수를 가리키는 것으로 모듈을 임포트하여 사용

파이썬 표준 라이브러리의 os, sys, math, random, datetime 등의 모듈에는 다양한 외장 함수가 포함

- 외부 라이브러리나 패키지

표준 라이브러리에 포함되지 않아 기본 설치에는 포함되지 않는다.
이를 사용하려면 먼저 해당 라이브러리나 패키지를 설치

외부 라이브러리는 통상적으로 파이썬의 패키지 관리자인 pip를 사용하여 설치
설치 후에는 외장 함수와 마찬가지로 필요한 모듈을 임포트하여 사용

ex) numpy, pandas, requests 등의 외부 라이브러리에 포함된 함수들.

** 사용자 정의 함수(User-Defined Functions):
사용자가 직접 정의하여 사용하는 함수

def 키워드를 사용하여 함수를 정의하며, 필요에 따라 매개변수와 반환 값을 지정

람다 함수(Lambda Functions):

이름 없는 간단한 함수를 정의할 때 사용하는 익명 함수

lambda 키워드를 사용하여 한 줄로 함수를 정의하며, 주로 간단한 연산이 필요할 때 사용

ex) multiply = lambda x, y : x * y
    print(multiply(3,4))
    