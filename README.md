# Haversack: Bedrock on SAM

This is the SAM template to deploy the [bedrock-access-gateway](https://github.com/aws-samples/bedrock-access-gateway/) quickly and neatly -- in the form of a simple Lambda function with response streaming support enabled, i.e. without ALB, dedicated VPC, subnets, etc.

## Quickstart

You need SAM CLI installed.

```
export REGION=$(aws configure get region)
aws ecr --region=${REGION} get-login-password | docker login --username=AWS --password-stdin 366590864501.dkr.ecr.${REGION}.amazonaws.com
sam build --region=${REGION}
sam deploy -g --region=${REGION}
```

That's it! You should now have an OpenAI-compatible API endpoint to your Bedrock infrastructure.
