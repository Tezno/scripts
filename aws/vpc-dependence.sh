#!/bin/bash

[[ -z "$VPC" ]] &&
	VPC=""
[[ -z "$REGION" ]] &&
	REGION=""

aws ec2 describe-vpc-peering-connections --region $REGION --filters 'Name=requester-vpc-info.vpc-id,Values='$VPC | grep VpcPeeringConnectionId
aws ec2 describe-nat-gateways --region $REGION --filter 'Name=vpc-id,Values='$VPC | grep NatGatewayId
aws ec2 describe-instances --region $REGION --filters 'Name=vpc-id,Values='$VPC | grep InstanceId
aws ec2 describe-vpn-gateways --region $REGION --filters 'Name=attachment.vpc-id,Values='$VPC | grep VpnGatewayId
aws ec2 describe-network-interfaces --region $REGION --filters 'Name=vpc-id,Values='$VPC | grep NetworkInterfaceId
