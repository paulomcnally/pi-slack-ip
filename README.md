# pi-slack-ip

## Instructions

Create a Slack webhook url.

https://slack.com/apps/A0F7XDUAZ-incoming-webhooks?next_id=0


Create a `SLACK_WEBHOOK_IP` environment variable with the slack webhook url.
Create a `SLACK_USERNAME_IP` environment variable with the username from Raspberry (ubuntu or redis or postgres or pi, etc).

https://help.ubuntu.com/community/EnvironmentVariables (System-wide environment variables)

```bash
$ sudo cp ./piip.sh /usr/local/bin/piip.sh
$ sudo cp ./piip.service /etc/systemd/system/piip.service
```

```bash
$ sudo chmod 744 /usr/local/bin/piip.sh
$ sudo chmod 664 /etc/systemd/system/piip.service
```

```bash
$ sudo systemctl daemon-reload
$ sudo systemctl enable piip.service

```