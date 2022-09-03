from slack_sdk.webhook import WebhookClient
from datetime import datetime

now = datetime.now()

current_time = now.strftime("%H:%M:%S")

print("Current Time is :", current_time)

## 可參考格式 https://app.slack.com/block-kit-builder/TGQCRQ19V#%7B%22blocks%22:%5B%5D%7D

url = "https://hooks.slack.com/services/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"

webhook = WebhookClient(url)

response = webhook.send(text="打擾了，測試中 請見諒, {0}".format(current_time))


def tool_script():
    pass


# x = 
# 	"blocks": [
# 		{
# 			"type": "section",
# 			"text": {
# 				"type": "mrkdwn",
# 				"text": "RobotFrameWork Test"
# 			},
# 			"accessory": {
# 				"type": "button",
# 				"text": {
# 					"type": "plain_text",
# 					"text": "Click Me",
# 					"emoji": True
# 				},
# 				"value": "click_me_123",
# 				"action_id": "button-action"
# 			}
# 		}
# 	]


# response = webhook.send(
#     text="Mark Test",
#     blocks=[
# 		{
# 			"type": "section",
# 			"text": {
# 				"type": "mrkdwn",
# 				"text": "RobotFrameWork Test"
# 			},
# 			"accessory": {
# 				"type": "button",
# 				"text": {
# 					"type": "plain_text",
# 					"text": "Click Me",
# 					"emoji": True
# 				},
# 				"value": "click_me_123",
# 				"action_id": "button-action"
# 			}
# 		}
# 	]
# )


        