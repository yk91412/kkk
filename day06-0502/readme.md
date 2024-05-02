## 과제풀이 random 모듈, string 모듈

random.shuffle은 원본자체를 바꾼다(원본을 무작위로 섞는다)

** zip함수의 특징 :
  이터레이터를 반환하고 단 한번만 소비가능함
  소비가 끝나면 빈 이터레이터가 되므로 다시 사용하고싶다면 다시 zip호출해야함

  ex) couples = zip(male,female)
      print(list(couples)) -> 한번 사용이 끝났으므로 빈 이터레이터가 됨
      couples= zip(male,female) -> 다시 사용하고 싶어서 다시 호출

  ### string 모듈 -> 문자열로 반환
  - 일반적인 문자열 연산

    string.ascii_letters 대소문자 상수 이어붙인 것
    string.ascii_lowercase 소문자 전체
    string.ascii_uppercase 대문자 전체
    string.digits 0~9
    string.punctuation !"#$%&'()*+,-./:;<=>?@[\]^_`{|}~. -> 특수기호
    string.whitespace 공백으로 간주하는 문자 포함
    ex ) 스페이스, 탭, 줄바꿈...
    string.hexdigits 16진수에 포함하는 0~9a~fA~F
    stirng.octdigits 8진수에 포함하는 0~7
    string.pritable 숫자대소문자특수기호공백의 조합

    ! string.ascii_letters를 활용했으면 대소문자를 일일이 적을 필요가 없었다

    ! 12로 나눈 나머지에 따라 띠가 정해진다는 것을 이용해
     나머지를 인덱스 번호로 지정할 수 있게 띠를 리스트형식으로 저장해서
      인덱스로 띠를 추출하면 됐었다 
