# dind-aws-git
Docker in docker plus git and aws cli for use in AWS CodeBuild  
It is build on a more recent version of docker so multi-stage builds can be used https://docs.docker.com/engine/userguide/eng-image/multistage-build/

This image will be obsolete when AWS updates their managed images  

We use it for aspnetcore multi stage builds but should work for pretty much any docker build


## Usage
The image is meant to be used in AWS CodeBuild and is available on docker hub as `gdevos/dind-aws-git`    
You can reference it in AWS CodeBuild as a custom image. You need to check "privileged" in the advanced settings for it to work

See http://docs.aws.amazon.com/codebuild/latest/userguide/sample-docker.html for the buildspec.yml and more

To match the newer docker commands change the aws ecr command to:  
`$(aws ecr get-login --no-include-email --region $AWS_DEFAULT_REGION)`
