{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html

module Stratosphere.Resources.DMSReplicationInstance where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for DMSReplicationInstance. See
-- 'dmsReplicationInstance' for a more convenient constructor.
data DMSReplicationInstance =
  DMSReplicationInstance
  { _dMSReplicationInstanceAllocatedStorage :: Maybe (Val Integer')
  , _dMSReplicationInstanceAllowMajorVersionUpgrade :: Maybe (Val Bool')
  , _dMSReplicationInstanceAutoMinorVersionUpgrade :: Maybe (Val Bool')
  , _dMSReplicationInstanceAvailabilityZone :: Maybe (Val Text)
  , _dMSReplicationInstanceEngineVersion :: Maybe (Val Text)
  , _dMSReplicationInstanceKmsKeyId :: Maybe (Val Text)
  , _dMSReplicationInstanceMultiAZ :: Maybe (Val Bool')
  , _dMSReplicationInstancePreferredMaintenanceWindow :: Maybe (Val Text)
  , _dMSReplicationInstancePubliclyAccessible :: Maybe (Val Bool')
  , _dMSReplicationInstanceReplicationInstanceClass :: Val Text
  , _dMSReplicationInstanceReplicationInstanceIdentifier :: Maybe (Val Text)
  , _dMSReplicationInstanceReplicationSubnetGroupIdentifier :: Maybe (Val Text)
  , _dMSReplicationInstanceTags :: Maybe [Tag]
  , _dMSReplicationInstanceVpcSecurityGroupIds :: Maybe [Val Text]
  } deriving (Show, Eq)

instance ToJSON DMSReplicationInstance where
  toJSON DMSReplicationInstance{..} =
    object $
    catMaybes
    [ ("AllocatedStorage" .=) <$> _dMSReplicationInstanceAllocatedStorage
    , ("AllowMajorVersionUpgrade" .=) <$> _dMSReplicationInstanceAllowMajorVersionUpgrade
    , ("AutoMinorVersionUpgrade" .=) <$> _dMSReplicationInstanceAutoMinorVersionUpgrade
    , ("AvailabilityZone" .=) <$> _dMSReplicationInstanceAvailabilityZone
    , ("EngineVersion" .=) <$> _dMSReplicationInstanceEngineVersion
    , ("KmsKeyId" .=) <$> _dMSReplicationInstanceKmsKeyId
    , ("MultiAZ" .=) <$> _dMSReplicationInstanceMultiAZ
    , ("PreferredMaintenanceWindow" .=) <$> _dMSReplicationInstancePreferredMaintenanceWindow
    , ("PubliclyAccessible" .=) <$> _dMSReplicationInstancePubliclyAccessible
    , Just ("ReplicationInstanceClass" .= _dMSReplicationInstanceReplicationInstanceClass)
    , ("ReplicationInstanceIdentifier" .=) <$> _dMSReplicationInstanceReplicationInstanceIdentifier
    , ("ReplicationSubnetGroupIdentifier" .=) <$> _dMSReplicationInstanceReplicationSubnetGroupIdentifier
    , ("Tags" .=) <$> _dMSReplicationInstanceTags
    , ("VpcSecurityGroupIds" .=) <$> _dMSReplicationInstanceVpcSecurityGroupIds
    ]

instance FromJSON DMSReplicationInstance where
  parseJSON (Object obj) =
    DMSReplicationInstance <$>
      obj .:? "AllocatedStorage" <*>
      obj .:? "AllowMajorVersionUpgrade" <*>
      obj .:? "AutoMinorVersionUpgrade" <*>
      obj .:? "AvailabilityZone" <*>
      obj .:? "EngineVersion" <*>
      obj .:? "KmsKeyId" <*>
      obj .:? "MultiAZ" <*>
      obj .:? "PreferredMaintenanceWindow" <*>
      obj .:? "PubliclyAccessible" <*>
      obj .: "ReplicationInstanceClass" <*>
      obj .:? "ReplicationInstanceIdentifier" <*>
      obj .:? "ReplicationSubnetGroupIdentifier" <*>
      obj .:? "Tags" <*>
      obj .:? "VpcSecurityGroupIds"
  parseJSON _ = mempty

-- | Constructor for 'DMSReplicationInstance' containing required fields as
-- arguments.
dmsReplicationInstance
  :: Val Text -- ^ 'dmsriReplicationInstanceClass'
  -> DMSReplicationInstance
dmsReplicationInstance replicationInstanceClassarg =
  DMSReplicationInstance
  { _dMSReplicationInstanceAllocatedStorage = Nothing
  , _dMSReplicationInstanceAllowMajorVersionUpgrade = Nothing
  , _dMSReplicationInstanceAutoMinorVersionUpgrade = Nothing
  , _dMSReplicationInstanceAvailabilityZone = Nothing
  , _dMSReplicationInstanceEngineVersion = Nothing
  , _dMSReplicationInstanceKmsKeyId = Nothing
  , _dMSReplicationInstanceMultiAZ = Nothing
  , _dMSReplicationInstancePreferredMaintenanceWindow = Nothing
  , _dMSReplicationInstancePubliclyAccessible = Nothing
  , _dMSReplicationInstanceReplicationInstanceClass = replicationInstanceClassarg
  , _dMSReplicationInstanceReplicationInstanceIdentifier = Nothing
  , _dMSReplicationInstanceReplicationSubnetGroupIdentifier = Nothing
  , _dMSReplicationInstanceTags = Nothing
  , _dMSReplicationInstanceVpcSecurityGroupIds = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-allocatedstorage
dmsriAllocatedStorage :: Lens' DMSReplicationInstance (Maybe (Val Integer'))
dmsriAllocatedStorage = lens _dMSReplicationInstanceAllocatedStorage (\s a -> s { _dMSReplicationInstanceAllocatedStorage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-allowmajorversionupgrade
dmsriAllowMajorVersionUpgrade :: Lens' DMSReplicationInstance (Maybe (Val Bool'))
dmsriAllowMajorVersionUpgrade = lens _dMSReplicationInstanceAllowMajorVersionUpgrade (\s a -> s { _dMSReplicationInstanceAllowMajorVersionUpgrade = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-autominorversionupgrade
dmsriAutoMinorVersionUpgrade :: Lens' DMSReplicationInstance (Maybe (Val Bool'))
dmsriAutoMinorVersionUpgrade = lens _dMSReplicationInstanceAutoMinorVersionUpgrade (\s a -> s { _dMSReplicationInstanceAutoMinorVersionUpgrade = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-availabilityzone
dmsriAvailabilityZone :: Lens' DMSReplicationInstance (Maybe (Val Text))
dmsriAvailabilityZone = lens _dMSReplicationInstanceAvailabilityZone (\s a -> s { _dMSReplicationInstanceAvailabilityZone = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-engineversion
dmsriEngineVersion :: Lens' DMSReplicationInstance (Maybe (Val Text))
dmsriEngineVersion = lens _dMSReplicationInstanceEngineVersion (\s a -> s { _dMSReplicationInstanceEngineVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-kmskeyid
dmsriKmsKeyId :: Lens' DMSReplicationInstance (Maybe (Val Text))
dmsriKmsKeyId = lens _dMSReplicationInstanceKmsKeyId (\s a -> s { _dMSReplicationInstanceKmsKeyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-multiaz
dmsriMultiAZ :: Lens' DMSReplicationInstance (Maybe (Val Bool'))
dmsriMultiAZ = lens _dMSReplicationInstanceMultiAZ (\s a -> s { _dMSReplicationInstanceMultiAZ = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-preferredmaintenancewindow
dmsriPreferredMaintenanceWindow :: Lens' DMSReplicationInstance (Maybe (Val Text))
dmsriPreferredMaintenanceWindow = lens _dMSReplicationInstancePreferredMaintenanceWindow (\s a -> s { _dMSReplicationInstancePreferredMaintenanceWindow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-publiclyaccessible
dmsriPubliclyAccessible :: Lens' DMSReplicationInstance (Maybe (Val Bool'))
dmsriPubliclyAccessible = lens _dMSReplicationInstancePubliclyAccessible (\s a -> s { _dMSReplicationInstancePubliclyAccessible = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-replicationinstanceclass
dmsriReplicationInstanceClass :: Lens' DMSReplicationInstance (Val Text)
dmsriReplicationInstanceClass = lens _dMSReplicationInstanceReplicationInstanceClass (\s a -> s { _dMSReplicationInstanceReplicationInstanceClass = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-replicationinstanceidentifier
dmsriReplicationInstanceIdentifier :: Lens' DMSReplicationInstance (Maybe (Val Text))
dmsriReplicationInstanceIdentifier = lens _dMSReplicationInstanceReplicationInstanceIdentifier (\s a -> s { _dMSReplicationInstanceReplicationInstanceIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-replicationsubnetgroupidentifier
dmsriReplicationSubnetGroupIdentifier :: Lens' DMSReplicationInstance (Maybe (Val Text))
dmsriReplicationSubnetGroupIdentifier = lens _dMSReplicationInstanceReplicationSubnetGroupIdentifier (\s a -> s { _dMSReplicationInstanceReplicationSubnetGroupIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-tags
dmsriTags :: Lens' DMSReplicationInstance (Maybe [Tag])
dmsriTags = lens _dMSReplicationInstanceTags (\s a -> s { _dMSReplicationInstanceTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-vpcsecuritygroupids
dmsriVpcSecurityGroupIds :: Lens' DMSReplicationInstance (Maybe [Val Text])
dmsriVpcSecurityGroupIds = lens _dMSReplicationInstanceVpcSecurityGroupIds (\s a -> s { _dMSReplicationInstanceVpcSecurityGroupIds = a })