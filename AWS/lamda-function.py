import boto3
import datetime
import os

s3 = boto3.client('s3')

def lambda_handler(event, context):
    timestamp = str(datetime.datetime.now())
    log_message = f"Lambda function invoked at {timestamp}"
    
    s3.put_object(Bucket= 'infuse-bucket', Key=f"{timestamp}.txt", Body=log_message.encode())
    return {
        'statusCode': 200,
        'body': 'Log created successfully'
    }
