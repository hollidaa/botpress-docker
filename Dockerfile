FROM botpress/server

ENV DATABASE_URL=postgresql://bot_base_user:MNDKyBvGTFzvt3PJMZJzScfst8pw4@dep-cnrsrciu0t7l75l58g-a.oregon-postgres.render.com/bot_base
ENV EXTERNAL_URL=https://your-botpress-app.onrender.com
ENV PORT=3000
ENV BP_PORT=3000

EXPOSE 3000

CMD ["./bp"]
