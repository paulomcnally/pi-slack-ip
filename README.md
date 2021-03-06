# pi-slack-ip

Send Raspberry PI ip to Slack Channel.

## Instructions

Create a Slack Webhook URL.

https://slack.com/apps/A0F7XDUAZ-incoming-webhooks?next_id=0

```bash
$ cd ~
$ git clone https://github.com/paulomcnally/pi-slack-ip.git
$ cd pi-slack-ip
```

Update `piip.conf`.

- `SLACK_WEBHOOK_IP` = Slack Webhook URL.
- `SLACK_USERNAME_IP` = The username from Raspberry (ubuntu or redis or postgres or pi, etc).

```bash
$ sudo mkdir /etc/piip
$ sudo cp ./piip.conf /etc/piip/piip.conf
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

**Example**:

![Imgur](https://i.imgur.com/6D3Jh2o.png)