Creating an S3 bucket for storing logs
- goto services and search for s3 also we can make use of search box
- give a name to bucket (name should be unique)
- click on create


Creating a Lambda function to log each invocation with the timestamp to the created S3 bucket. 
- goto services and search for Lambda also we can make use of search box
- Select option Author from scratch
- Give a name to the function 
- Runtime python 3.7
- In permissions select Create a new role with basic Lambda permissions 
- click on Create function
- Go to permissions and policy
- click Add permissions and Attach policies
- and add AWSLambdaExecute
- After writing the code click on deploy and then test


Create an API in API Gateway and link it to the above created lambda, so that you can invoke the lambda function via curl command/postman or programmatically. 
- In above step we created a lambda function
- now to add trigger to the function we get option to the left of function name
- In Trigger configuration select API Gateway and create a new API
- Select REST API
- For security select Open and click Add
- a link will be generated below, open it in postman or also in browser 
- when the api is hit a file will be created in bucket