# Use the official Node.js 14.x base image
FROM node:14

ENV SERVICE_ACCOUNT_KEY='{"type": "service_account","project_id": "rahayoo-app","private_key_id": "8bf55de9945f9de00a72a68d76bd1c0d3379967f","private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCpfb+cyYaD+EUl\nmIySvIpblyufVgvex5FptQHfGVnZCCvUM69X4SNGRBKh4QkA9En94UWPTpbJ4bj2\n1g5aS7jws4/997Yk4a8bNEYu7RypeUYlifKsLLttMq3lJJkFHJbADJ+L+v4fe4c3\n7mxuMGpwyKIwWCqkRg6VjRjDNduI+3WN5N1w+5XfyMXIHfgCZ3mIUdPPrdjijepT\npvm9pGhwS7pdKAkZ5F623Y+IZ/oTNPkb6BbUr1Od2tIevizqTCXCeDheo9yUmA9t\nd0nyjkutJ9K507WgFy/bc4cTLA49Cw8nMD1PfLusAS8Z9Hzw8U3Dly3yIGUxIEdK\nlZ8jKa7hAgMBAAECggEAG41PADA8VyidKPLm6xWOEjx9QV4N+O2NJFdh0f//fInZ\nAhpSxyDYiJwZQUphGdAcVRJxKc4XMgMo+6spUyFbE3nFDv5dFBrBydTSEd/GmIAX\n2JNXqQhugV5LKWQtIckXcmm659jpxXlhrkRqSPFC5EmhH+W9LM4coc/5dgZDxT0D\nM0IVDWAz4nBGTwrDW5D0BEeU8yoCmVN0Sqe5YSWwqIMCXH/g2KFsJ/kx4UBSVFEG\niHbgroP5sWlRlXmzrR7t5VYXSHjHYnMPr/5aYoV+aAc7kWFXts04TdFwQ9G5M5PR\n9Auyby/UPt8Z63uCAT2dDQ8QxmCMbdIxU1F5UlcwzwKBgQDnThiq2zj9SAKXheuc\ntyeJRIsISYSbYkwBElfIpFazbgXFncp9V3bRyaariHpukXnlxOcXQ47Z2sZDDr8A\nNfoiqd8qZJcb7jgUy8WoHKVnBQZ2wo9dWpRvivMeA+R6GbEVx/BKMrMp8PCgWI5h\n+FimQh5Y6ZhfsLu8xEwh0PJ3uwKBgQC7ljCDk/a78vmS/s3FV0f5dmeYk0UuL5/p\nkJtaXGFzvU3aU6J6jdUirpWt3Lg4oAkgo/kZ3rPtu13TTLZ+Rv6wV/PPz33mT5fV\nKwW9KQsTvgrBzQZk4jWylKHC9eFqgvDhMH8Zn24pfDgB4Sr05vGUwitHydFy4z9y\no4k2fHWkEwKBgQDDfSix9lfDEQJHx8KrD8zVYd3Tojb2EGzGFxekFujD+z/blhGW\nP77HbZN0tAMtwbvxaqoY6lsoWpNoB2V8KyJ9+24GaT+hNoOlZ9dkztkoKYIeCy+Z\nqb18TEZPXuDSJTaafwHh49myn9Tu4AluWbOqyITXho3mifsRfiIODodukwKBgQCh\nPTt+HdTbQMKdQz+D/L31A32QfCXeyTje/llKllV9sp4UqAbk6LznDsHBrBL9OTIf\nSFJ5lh96nK7NTQcgC84nrbH4UhWZvZh4tn48VecblSKR6rUwSfB2C6PvfIHBl8ON\nDK5zS8LZDdjmZLETyN6mSzAAiMzrv8FtvHvYxaoo2QKBgG2VRx3zaH2l75M/sbHs\nqGbJkqk8kfCkk/B3cFaZDXjnIP5a8PMFP44sw4VHWmuzCFXjzY8glIMFHG4WZKTX\ns39rgP/zWUxIhaGGYcO2+1JOGmw9wpYIG90AJnKINZkNOVDxTpYnSVh2S64qN3bz\n2xQ5eOTjTK5LgQjgcLRdgxij\n-----END PRIVATE KEY-----\n","client_email": "firebase-adminsdk-macn4@rahayoo-app.iam.gserviceaccount.com","client_id": "118400046049409177803","auth_uri": "https://accounts.google.com/o/oauth2/auth","token_uri": "https://oauth2.googleapis.com/token","auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs","client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-macn4%40rahayoo-app.iam.gserviceaccount.com","universe_domain": "googleapis.com"}'
ENV DB_HOST=34.101.116.40
ENV DB_USER='rahayoo_data'
ENV DB_PASSWORD='rahayoo_data'
ENV DB_NAME='rahayoo-app'

WORKDIR /app

COPY package*.json ./

RUN npm install
 
COPY . .

EXPOSE 8080

CMD ["npm", "start"]