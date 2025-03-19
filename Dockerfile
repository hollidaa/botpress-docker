FROM botpress/botpress:v16.0.20

# 기존 DATABASE_URL 대신 직접적인 데이터베이스 연결 변수들 사용
ENV BP_DATABASE_TYPE=postgres
ENV BP_DATABASE_HOST=dep-cnrsrciu0t7l75l58g-a.oregon-postgres.render.com
ENV BP_DATABASE_PORT=5432
ENV BP_DATABASE_USER=bot_base_user
ENV BP_DATABASE_PASSWORD=MNDKyBvGTFzvt3PJMZJzScfst8pw4
ENV BP_DATABASE_DB=bot_base
ENV BP_DATABASE_URL=postgresql://bot_base_user:MNDKyBvGTFzvt3PJMZJzScfst8pw4@dep-cnrsrciu0t7l75l58g-a.oregon-postgres.render.com/bot_base?sslmode=require

# 필수 기본 설정
ENV EXTERNAL_URL=https://botpress-docker-d75i.onrender.com
ENV PORT=3000
ENV BP_PORT=3000
ENV NODE_ENV=production

# SSL 관련 설정
ENV PG_SSL=true
ENV PGSSLMODE=require
ENV BP_DATABASE_SSL=true

# 포트 바인딩 설정
ENV BP_RUNTIME_SERVER_PORT=3000
ENV BP_RUNTIME_SERVER_HOST=0.0.0.0

# HTTP 서버 활성화
ENV HTTP_ENABLED=true
ENV PROXY_ENABLED=false

EXPOSE 3000

# 명시적 명령 추가
CMD ["./bp", "--port", "3000", "--host", "0.0.0.0"]
