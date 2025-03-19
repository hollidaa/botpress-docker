FROM botpress/server:latest

ENV DATABASE_URL=postgresql://bot_base_user:MNDKyBvGTFzvt3PJMZJzScfst8pw4@dep-cnrsrciu0t7l75l58g-a.oregon-postgres.render.com/bot_base?sslmode=require
ENV EXTERNAL_URL=https://botpress-docker-d75i.onrender.com
ENV PORT=3000
ENV PG_SSL=true
ENV PGSSLMODE=require
ENV NODE_TLS_REJECT_UNAUTHORIZED=0

EXPOSE 3000

CMD ["./bp"]
