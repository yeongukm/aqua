# 공식 Nginx 이미지를 기반으로 한다
FROM nginx:latest

# 작성자 정보
LABEL maintainer="yeongukm"

# 컨테이너 내부의 Nginx 구성 파일을 교체한다
COPY nginx.conf /etc/nginx/nginx.conf

# 컨테이너가 시작될 때 Nginx를 자동으로 시작한다
CMD ["nginx", "-g", "daemon off;"]
