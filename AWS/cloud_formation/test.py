import json
import boto3
import time
          
s3_client = boto3.client('s3')
    
def lambda_handler(event, context):
    bucket_name = 'infuse-bucket-o1'
    file_name = f"logs/{time.time()}.txt"
    
    s3_client.put_object(Body=json.dumps(event), Bucket=bucket_name, Key=file_name)
    
    return {
        'statusCode': 200,
        'body': json.dumps('File created successfully')}