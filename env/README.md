## Instructions

You need to create the following env files in this folder: 

.env.advisorareafe
```
REACT_APP_VALUEBUILDER_APP_REDIRECT_URL="https://127.0.0.1:80"
REACT_APP_VALUEBUILDER_APP_DEFAULT_REDIRECT_PATH="advisorarea/"

REACT_APP_API_CORE_BASE_URL='https://127.0.0.1:80/api.php'
REACT_APP_API_FLOW_BASE_URL='https://127.0.0.1:3000'
REACT_APP_API_VB_BASE_URL='https://127.0.0.1:80'
REACT_APP_API_UMC_BASE_UR='https://dev-user-management-service.valuebuildersystem.com'

REACT_APP_ADVISORAREA_APP_URL="https://127.0.0.1:80/advisorarea"
REACT_APP_API_TIMELINE_BASE_URL="http://127.0.0.1:86"

REACT_APP_USER_PILOT_TOKEN=NX-a3985013

ZENDESK_KEY="9551ad5e-0034-48c1-b4a9-1f7d562fa0c8"

```

.env.emails
```
APP_ENV=dev
APP_DEBUG=1
APP_SECRET=eeb958012d0316021fe1715029b5f326
APP_PORT=8000

# Database
DATABASE_NAME=valuebuilder
DATABASE_USER=rootdev
DATABASE_PASSWORD=pass
FORWARD_DB_PORT=3306
DATABASE_URL=mysql://rootdev:pass@vb-mysql:3306/valuebuilder?server_version=8.0.32
DATABASE_PRIMARY_URL=mysql://rootdev:pass@vb-mysql:3306/valuebuilder?server_version=8.0.32

# Mongo (specific to Emails)
MONGODB_URL=mongodb://mongo:mongo@emails-mongo:27017/?serverSelectionTimeoutMS=5000&connectTimeoutMS=10000
MONGODB_DB=vb

# Redis
REDIS_HOST=vb-redis
REDIS_PASSWORD=7f88c967311fb6c769c333af4ff3c67a
REDIS_PORT=6379

XDEBUG_MODE=develop,debug,trace,coverage
XDEBUG_CONFIG="-client_host=0.0.0.0"
XDEBUG_SESSION=1

MEMCACHED_SERVERS=memcached://localhost

SOPHIA_SUPPORT_ADVISOR_ID=1801

WWWGROUP=1000
WWWUSER=1000

# External services
VB_DOMAIN=localhost:80
WEBHOOKS_DOMAIN=localhost:8000
SCORE_DOMAIN=localhost:8082

# Timeline
TIMELINE_DOMAIN=timeline-local-nginx:80
SERVICE_TIMELINE_API_URL=http://timeline-local-nginx:80/api/
SERVICE_TIMELINE_SECRET=eeb958012d0316021fe1715029b5f326

TIMELINE_API_KEY_PASS_PHRASE=111111

# Messages Queues
MESSENGER_CONSUMER_NAME=0

MESSENGER_TIMELINE_TRANSPORT_DSN=redis://${REDIS_HOST}:${REDIS_PORT}/timeline/messages/consumer-timeline-%MESSENGER_CONSUMER_NAME%?auto_setup=false&delete_after_ack=true
MESSENGER_TIMELINE_FIFO_TRANSPORT_DSN=redis://${REDIS_HOST}:${REDIS_PORT}/timeline_fifo/messages/consumer-timeline_fifo-%MESSENGER_CONSUMER_NAME%?auto_setup=false&delete_after_ack=true
MESSENGER_USER_TRANSPORT_DSN=redis://${REDIS_HOST}:${REDIS_PORT}/user/messages/consumer-user-%MESSENGER_CONSUMER_NAME%?auto_setup=true&delete_after_ack=true
MESSENGER_USER_FIFO_TRANSPORT_DSN=redis://${REDIS_HOST}:${REDIS_PORT}/user_fifo/messages/consumer-user_fifo-%MESSENGER_CONSUMER_NAME%?auto_setup=true&delete_after_ack=true
MESSENGER_TIMELINE_STATISTICS_TRANSPORT_DSN=redis://${REDIS_HOST}:${REDIS_PORT}/timeline_statistics/messages/consumer-timeline_statistics-%MESSENGER_CONSUMER_NAME%?auto_setup=true&delete_after_ack=true
MESSENGER_BATCH_EMAIL_GENERATE_NC_TRANSPORT_DSN=redis://${REDIS_HOST}:${REDIS_PORT}/email_generate_nc_user/messages/consumer-email_generate_nc_user-%MESSENGER_CONSUMER_NAME%?auto_setup=true&delete_after_ack=true
MESSENGER_BATCH_EMAIL_GENERATE_INVITATION_TRANSPORT_DSN=redis://${REDIS_HOST}:${REDIS_PORT}/batch_email_generate_invitation/messages/consumer-batch_email_generate_invitation-${MESSENGER_CONSUMER_NAME}?auto_setup=true&delete_after_ack=true
MESSENGER_BATCH_EMAIL_GENERATE_WELCOME_TRANSPORT_DSN=redis://${REDIS_HOST}:${REDIS_PORT}/batch_email_generate_welcome/messages/consumer-batch_email_generate_welcome-${MESSENGER_CONSUMER_NAME}?auto_setup=true&delete_after_ack=true
MESSENGER_BATCH_EMAIL_SEND_NC_TRANSPORT_DSN=redis://${REDIS_HOST}:${REDIS_PORT}/batch_email_send_nc/messages/consumer-batch_email_send_nc-${MESSENGER_CONSUMER_NAME}?auto_setup=true&delete_after_ack=true
MESSENGER_BATCH_EMAIL_SEND_INVITATION_TRANSPORT_DSN=redis://${REDIS_HOST}:${REDIS_PORT}/batch_email_send_invitation/messages/consumer-batch_email_send_invitation-${MESSENGER_CONSUMER_NAME}?auto_setup=true&delete_after_ack=true
MESSENGER_BATCH_EMAIL_SEND_WELCOME_TRANSPORT_DSN=redis://${REDIS_HOST}:${REDIS_PORT}/batch_email_send_welcome/messages/consumer-batch_email_send_welcome-${MESSENGER_CONSUMER_NAME}?auto_setup=true&delete_after_ack=true
MESSENGER_EMAIL_SINGLE_EMAIL_TRANSPORT_DSN=redis://${REDIS_HOST}:${REDIS_PORT}/email_single_email/messages/consumer-email_single_email-%MESSENGER_CONSUMER_NAME%?auto_setup=true&delete_after_ack=true
MESSENGER_EMAIL_GENERATE_SINGLE_TRANSPORT_DSN=redis://${REDIS_HOST}:${REDIS_PORT}/email_generate_single/messages/consumer-email_generate_single-%MESSENGER_CONSUMER_NAME%?auto_setup=true&delete_after_ack=true
MESSENGER_ADVISOR_PUSH_NOTIFICATION_DSN=redis://${REDIS_HOST}:${REDIS_PORT}/push_notification/messages/consumer-advisor_push_notification-%MESSENGER_CONSUMER_NAME%?auto_setup=true&delete_after_ack=true
MESSENGER_DOCUMENT_GENERATE_TRANSPORT_DSN=redis://${REDIS_HOST}:${REDIS_PORT}/document_generate/messages/consumer-document_generate-%MESSENGER_CONSUMER_NAME%?auto_setup=true&delete_after_ack=true
MESSENGER_SALESFORCE_HIGH_TRANSPORT_DSN=redis://${REDIS_HOST}:${REDIS_PORT}/salesforce/messages/consumer-salesforce_high-%MESSENGER_CONSUMER_NAME%?auto_setup=true&delete_after_ack=true
MESSENGER_BATCH_GENERATE_TRANSPORT_DSN=redis://${REDIS_HOST}:${REDIS_PORT}/vb_batch_generate/messages/consumer-vb_batch_generate-%MESSENGER_CONSUMER_NAME%?auto_setup=true&delete_after_ack=true
MESSENGER_BATCH_PROCESS_TRANSPORT_DSN=redis://${REDIS_HOST}:${REDIS_PORT}/vb_batch_process/messages/consumer-vb_batch_process-%MESSENGER_CONSUMER_NAME%?auto_setup=true&delete_after_ack=true
MESSENGER_EMAIL_MASS_GENERATE_TRANSPORT_DSN=redis://${REDIS_HOST}:${REDIS_PORT}/email_mass_generate_email/messages/consumer-email_mass_generate_email-%MESSENGER_CONSUMER_NAME%?auto_setup=true&delete_after_ack=true
MESSENGER_EMAIL_MASS_SEND_TRANSPORT_DSN=redis://${REDIS_HOST}:${REDIS_PORT}/email_mass_send_email/messages/consumer-email_mass_send_email-%MESSENGER_CONSUMER_NAME%?auto_setup=true&delete_after_ack=true
MESSENGER_ZAPIER_TRANSPORT_DSN=redis://${REDIS_HOST}:${REDIS_PORT}/zapier_trigger/messages/consumer-zapier_trigger-%MESSENGER_CONSUMER_NAME%?auto_setup=true&delete_after_ack=true
MESSENGER_EMAIL_SINGLE_EMAIL_NC_TRANSPORT_DSN=redis://${REDIS_HOST}:${REDIS_PORT}/email_single_email_nc/messages/consumer-${MESSENGER_CONSUMER_NAME}?auto_setup=true&delete_after_ack=true
MESSENGER_EMAIL_SINGLE_EMAIL_SMARTFLOW_TRANSPORT_DSN=redis://${REDIS_HOST}:${REDIS_PORT}/email_single_email_smartflow/messages/consumer-${MESSENGER_CONSUMER_NAME}?auto_setup=true&delete_after_ack=true
MESSENGER_EMAIL_SINGLE_EMAIL_MASS_EMAIL_TRANSPORT_DSN=redis://${REDIS_HOST}:${REDIS_PORT}/email_single_email_mass_email/messages/consumer-${MESSENGER_CONSUMER_NAME}?auto_setup=true&delete_after_ack=true


# Mailhug
MAILHOG_HOST=email-mailhog
MAILHOG_PORT=1025
```

.env.flow

```
APP_PORT=3000
APP_NAME=flow-service
NODE_ENV=local

# New Relic
NEW_RELIC_APP_NAME=flow-service
NEW_RELIC_ENABLED=false

LOG_LEVEL=info # error | warn | info | debug

TEST_ENV_SEND_EMAIL_IMMEDIATELY=true
STEP_MAX_RETRY_ATTEMPTS=10

# Possibly shared:
VB_API_URL_ME=https://dev-api.valuebuildersystem.com/
CONTACTS_SERVICE_URL=https://dev-user-management-service.valuebuildersystem.com/
PASS_PHRASE='111111'
TIMELINE_API_URL=https://dev-timeline.valuebuildersystem.com/api/

# Bull redis
BULL_REDIS_LISTENER_CONCURRENCY=5
BULL_REDIS_JOB_MAX_RETRY_ATTEMPTS=10
BULL_REDIS_JOB_RETRY_DELAY_MS=300000
FLOW_BULL_REDIS_DB='redis://default:eYVX7EwVmmxKPCDmwMtyKVge8oLd2t81@flow-redis:6379'

ENROLLMENT_QUEUE_NAME=flow_enrollments

# Flow Config MySQL
FLOW_MYSQL_PORT=3307
FLOW_MYSQL_USER=root
FLOW_MYSQL_ROOT_PASSWORD=pass
FLOW_MYSQL_DATABASE=flow

FLOW_DATABASE_URL=mysql://root:root@flow-mysql:3306/flow

# Flow Database
MYSQL_HOST=flow-mysql
MYSQL_PORT=3306
MYSQL_USER=root
MYSQL_PSW=pass
MYSQL_DATABASE=flow

# Flow Config Redis
FLOW_REDIS_PORT=6380
FLOW_REDIS_PASSWORD=eYVX7EwVmmxKPCDmwMtyKVge8oLd2t81 

# Flow Redis
REDIS_HOST=flow-redis
REDIS_PORT=6379
REDIS_PASSWORD=eYVX7EwVmmxKPCDmwMtyKVge8oLd2t81

# Existing Mongo
MONGODB_URL=mongodb://root:pass@vb-mongodb:27017/vb?authSource=admin&connectTimeoutMS=10000&readPreference=primary&retryWrites=true&directConnection=true

# JWT Config
JWT_SECRET='9552847bcc6f530572b5e924b7bf877fbf71a15ce5a32cfe18344ed7286072877d6e6d'
JWT_PRIVATE_KEY=

# AWS
MAIN_AWS_REGION=us-east-1

AWS_SECRET_CONFIG_KEY=vb-secrets-dev
AWS_REGION=us-east-1
AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=

FETCH_AWS_SECRETS=false
```

.env.shared
```
TZ=Etc/UTC
APP_ENV=docker

# local domains if you want
VB_DOMAIN=http://localhost
TIMELINE_DOMAIN=timeline-local-nginx:80

VALUEBUILDER_DATABASE_PASSWORD=pass
VALUEBUILDER_DATABASE_NAME=valuebuilder
VALUEBUILDER_DATABASE_USER=rootdev

MONGO_ROOT_USERNAME=root
MONGO_ROOT_PASSWORD=pass

MONGO_INITDB_ROOT_USERNAME=root
MONGO_INITDB_ROOT_PASSWORD=pass
MONGO_INITDB_DATABASE=vb
```


.env.timeline
```
APP_ENV=dev
APP_DEBUG=0
APP_SECRET=eeb958012d0316021fe1715029b5f326

CORS_ALLOW_ORIGIN='*'

# MySQL (local)
DATABASE_URL=mysql://rootdev:pass@vb-mysql:3306/valuebuilder?server_version=8.0.32
DATABASE_PRIMARY_URL=mysql://rootdev:pass@vb-mysql:3306/valuebuilder?server_version=8.0.32
DATABASE_REPLICA_URL=mysql://rootdev:pass@vb-mysql:3306/valuebuilder?server_version=8.0.32

# Mongo (local)
MONGODB_URL=mongodb://root:pass@vb-mongodb:27017/vb?authSource=admin
MONGODB_DB=vb

# Redis (local)
REDIS_HOST=vb-redis
REDIS_PORT=6379

# Sentry
SENTRY_DSN=

# Mailgun
MAILGUN_API_KEY=replace_me

# Mailer URL
MAILER_URL=null://localhost

# Project Config
PROJECT_DIR=%kernel.project_dir%/web
FOLDER_UPLOADS_DATA_ROOT="/var/www/uploads/"

# Keys
PUBLIC_KEY_PATH=%kernel.project_dir%/config/jwt/public.pem
PRIVATE_KEY_PATH=%kernel.project_dir%/config/jwt/private.pem

TIMELINE_API_KEY_PASS_PHRASE=111111

API_ALLOWED_SECRETS=["7f88c967311fb6c769c333af4ff3c67a","eeb958012d0316021fe1715029b5f326"]

# AWS Variables
AWS_VERSION=latest
AWS_REGION=us-east-2
AWS_SECRET_CONFIG_KEY=
AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=
AWS_SESSION_TOKEN=

# Messengers
MESSENGER_TIMELINE_TRANSPORT_DSN=doctrine://default?queue_name=timeline
MESSENGER_USER_TRANSPORT_DSN=doctrine://default?queue_name=user
MESSENGER_ACTIVITY_FEED_TRANSPORT_DSN=doctrine://default?queue_name=activity_feed
MESSENGER_TIMELINE_FIFO_TRANSPORT_DSN=doctrine://default?queue_name=timeline_fifo
MESSENGER_USER_FIFO_TRANSPORT_DSN=doctrine://default?queue_name=user_fifo
MESSENGER_TIMELINE_FAILED_TRANSPORT_DSN=doctrine://default?queue_name=timeline_failed
MESSENGER_ADVISOR_PUSH_NOTIFICATION_DSN=doctrine://default?queue_name=advisor_push_notification

# Exposed
EXPOSE_VARIABLES='[
    "APP_ENV",
    "DATABASE_URL",
    "DATABASE_PRIMARY_URL",
    "DATABASE_REPLICA_URL",
    "MONGODB_URL",
    "API_ALLOWED_SECRETS",
    "TIMELINE_API_KEY_PASS_PHRASE",
    "REDIS_HOST",
    "VB_DOMAIN",
    "TIMELINE_DOMAIN",
    "SUPERVISORD_SLACK_CHANNEL_URL"
]'
```

.env.valuebuilder

```
APP_ENV=dev
APP_DEBUG=1
APP_PORT=8080

# Database
DATABASE_NAME=valuebuilder
DATABASE_USER=rootdev
DATABASE_PASSWORD=pass
FORWARD_DB_PORT=3306

DATABASE_URL=mysql://rootdev:pass@vb-mysql:3306/valuebuilder?server_version=8.0

# Redis
REDIS_HOST=vb-redis
REDIS_PASSWORD=7f88c967311fb6c769c333af4ff3c67a
REDIS_PORT=6379

# Xdebuger
XDEBUG_MODE=develop,debug,trace
XDEBUG_CONFIG="-client_host=0.0.0.0"
XDEBUG_SESSION=1
MEMCACHED_SERVERS=memcached://localhost
APP_SECRET=eeb958012d0316021fe1715029b5f326

WWWGROUP=1000
WWWUSER=1000

UNIVERSAL_PASSWORD=123456
SOPHIA_SUPPORT_ADVISOR_ID=15

# Google
GOOGLE_RECAPTCHA_SITE_KEY=6Lcr2h0sAAAAAEUDl8bHwx5Zm7SSyWhhSIC0uTu0
GOOGLE_RECAPTCHA_SECRET=6Lcr2h0sAAAAAPfkaAV0K-pz3r6wIwZOJOKQcTbM
GOOGLE_RECAPTCHA_ENABLED=1

# Timeline
TIMELINE_DOMAIN=timeline-local-nginx:80
```
