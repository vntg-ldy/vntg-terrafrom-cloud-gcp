# vntg-terraform-cloud-gcp
> 이 프로젝트는 Terraform Cloud 실습 용 프로젝트로 실사용이 불가능한 프로젝트입니다.

## Getting started

먼저 Terraform 설치되어 있는지 확인합니다.
```shell
$ terraform -v
Terraform v1.0.6
...
```

만약에 설치되어 있지 않다면 brew를 이용해 설치합니다.
```shell
$ brew install terraform
```

Terraform을 설치했다면 초기화 후 작동 테스트합니다.
```shell
# 작업 directory 초기화
$ terraform init
# 형식 및 스타일 조정
$ terraform fmt
# 유효성 검사
$ terraform validate
# 실행 계획 생성
$ terraform plan
# 실행 계획에서 제안한 작업 수행
$ terraform apply
```

## Reference
- [HashiCorp doc](https://www.terraform.io/docs/index.html)
