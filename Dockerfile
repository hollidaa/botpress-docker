FROM botpress/server:latest

ENV DATABASE_URL=postgres://bot_base_user:MNDKyBvGTFzvt3PJMZJzScfst8pw4@dep-cnrsrciu0t7l75l58g-a.oregon-postgres.render.com:5432/bot_base
ENV EXTERNAL_URL=https://botpress-docker-d75i.onrender.com
ENV PORT=3000
ENV BP_PORT=3000
ENV PG_SSL=true
ENV PGSSLMODE=require
ENV NODE_TLS_REJECT_UNAUTHORIZED=0
ENV BP_RUNTIME_SERVER_PORT=3000
ENV BP_RUNTIME_SERVER_HOST=0.0.0.0

EXPOSE 3000

CMD ["./bp", "--port", "3000", "--host", "0.0.0.0"]
