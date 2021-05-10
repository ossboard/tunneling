# tunneling
Mac으로 터널링 스크립트 예제

## 원격
``` 
- MAC 환경설정(System Preferences) > 공유(Sharing) >  원격 로그인 (Remote Login) > + 버튼으로 사용자 추가 > 종료
- VPN 접속 ( ex: MotionPro Plus )
- ifconfig > utun2..  10.10.xxx.xxx 기억!!
```

## 로컬
``` 
- ssh 계정@10.10.xxx.xxx 접근테스트 후
- ssh-key 복사
  (ssh-keygen && ssh-copy-id 계정@10.10.xxx.xxx )
- sh tunneling.sh 
```

## 설명
```
ssh -L 8081:10.10.14.61:8081  \
    -L 8629:10.110.16.111:8629  \
    계정@호스트 -p 22
로컬> http://127.0.0.1:8081 -> 원격> http://10.10.14.61:8081 터널링 접근 가능
로컬> http://127.0.0.1:8629 -> 원격> http://10.110.16.111:8629 터널링 접근 가능

``` 
