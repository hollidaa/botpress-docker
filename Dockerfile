FROM botpress/server:v12.30.11

ENV DATABASE_URL=postgresql://bot_base_user:MNDKyBvGTFzvt3PJMZJzScfst8pw4@dep-cnrsrciu0t7l75l58g-a.oregon-postgres.render.com/bot_base
ENV EXTERNAL_URL=https://your-botpress-app.onrender.com

EXPOSE 3000
