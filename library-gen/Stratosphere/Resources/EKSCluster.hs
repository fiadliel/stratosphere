{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html

module Stratosphere.Resources.EKSCluster where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EKSClusterResourcesVpcConfig

-- | Full data type definition for EKSCluster. See 'eksCluster' for a more
-- convenient constructor.
data EKSCluster =
  EKSCluster
  { _eKSClusterName :: Maybe (Val Text)
  , _eKSClusterResourcesVpcConfig :: EKSClusterResourcesVpcConfig
  , _eKSClusterRoleArn :: Val Text
  , _eKSClusterVersion :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EKSCluster where
  toJSON EKSCluster{..} =
    object $
    catMaybes
    [ fmap (("Name",) . toJSON) _eKSClusterName
    , (Just . ("ResourcesVpcConfig",) . toJSON) _eKSClusterResourcesVpcConfig
    , (Just . ("RoleArn",) . toJSON) _eKSClusterRoleArn
    , fmap (("Version",) . toJSON) _eKSClusterVersion
    ]

instance FromJSON EKSCluster where
  parseJSON (Object obj) =
    EKSCluster <$>
      (obj .:? "Name") <*>
      (obj .: "ResourcesVpcConfig") <*>
      (obj .: "RoleArn") <*>
      (obj .:? "Version")
  parseJSON _ = mempty

-- | Constructor for 'EKSCluster' containing required fields as arguments.
eksCluster
  :: EKSClusterResourcesVpcConfig -- ^ 'ekscResourcesVpcConfig'
  -> Val Text -- ^ 'ekscRoleArn'
  -> EKSCluster
eksCluster resourcesVpcConfigarg roleArnarg =
  EKSCluster
  { _eKSClusterName = Nothing
  , _eKSClusterResourcesVpcConfig = resourcesVpcConfigarg
  , _eKSClusterRoleArn = roleArnarg
  , _eKSClusterVersion = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html#cfn-eks-cluster-name
ekscName :: Lens' EKSCluster (Maybe (Val Text))
ekscName = lens _eKSClusterName (\s a -> s { _eKSClusterName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html#cfn-eks-cluster-resourcesvpcconfig
ekscResourcesVpcConfig :: Lens' EKSCluster EKSClusterResourcesVpcConfig
ekscResourcesVpcConfig = lens _eKSClusterResourcesVpcConfig (\s a -> s { _eKSClusterResourcesVpcConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html#cfn-eks-cluster-rolearn
ekscRoleArn :: Lens' EKSCluster (Val Text)
ekscRoleArn = lens _eKSClusterRoleArn (\s a -> s { _eKSClusterRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html#cfn-eks-cluster-version
ekscVersion :: Lens' EKSCluster (Maybe (Val Text))
ekscVersion = lens _eKSClusterVersion (\s a -> s { _eKSClusterVersion = a })
