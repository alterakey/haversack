ARG region
FROM 366590864501.dkr.ecr.$region.amazonaws.com/bedrock-proxy-api-ecs:latest
COPY --from=public.ecr.aws/awsguru/aws-lambda-adapter:0.9.0 /lambda-adapter /opt/extensions/

ENV AWS_LWA_INVOKE_MODE=RESPONSE_STREAM
ENV PORT=8000
CMD ["sh", "-c", "uvicorn api.app:app --host 0.0.0.0 --port ${PORT}"]
