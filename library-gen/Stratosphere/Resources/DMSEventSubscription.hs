{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-eventsubscription.html

module Stratosphere.Resources.DMSEventSubscription where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for DMSEventSubscription. See
-- 'dmsEventSubscription' for a more convenient constructor.
data DMSEventSubscription =
  DMSEventSubscription
  { _dMSEventSubscriptionEnabled :: Maybe (Val Bool')
  , _dMSEventSubscriptionEventCategories :: Maybe [Val Text]
  , _dMSEventSubscriptionSnsTopicArn :: Val Text
  , _dMSEventSubscriptionSourceIds :: Maybe [Val Text]
  , _dMSEventSubscriptionSourceType :: Maybe (Val Text)
  , _dMSEventSubscriptionSubscriptionName :: Maybe (Val Text)
  , _dMSEventSubscriptionTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToJSON DMSEventSubscription where
  toJSON DMSEventSubscription{..} =
    object $
    catMaybes
    [ ("Enabled" .=) <$> _dMSEventSubscriptionEnabled
    , ("EventCategories" .=) <$> _dMSEventSubscriptionEventCategories
    , Just ("SnsTopicArn" .= _dMSEventSubscriptionSnsTopicArn)
    , ("SourceIds" .=) <$> _dMSEventSubscriptionSourceIds
    , ("SourceType" .=) <$> _dMSEventSubscriptionSourceType
    , ("SubscriptionName" .=) <$> _dMSEventSubscriptionSubscriptionName
    , ("Tags" .=) <$> _dMSEventSubscriptionTags
    ]

instance FromJSON DMSEventSubscription where
  parseJSON (Object obj) =
    DMSEventSubscription <$>
      obj .:? "Enabled" <*>
      obj .:? "EventCategories" <*>
      obj .: "SnsTopicArn" <*>
      obj .:? "SourceIds" <*>
      obj .:? "SourceType" <*>
      obj .:? "SubscriptionName" <*>
      obj .:? "Tags"
  parseJSON _ = mempty

-- | Constructor for 'DMSEventSubscription' containing required fields as
-- arguments.
dmsEventSubscription
  :: Val Text -- ^ 'dmsesSnsTopicArn'
  -> DMSEventSubscription
dmsEventSubscription snsTopicArnarg =
  DMSEventSubscription
  { _dMSEventSubscriptionEnabled = Nothing
  , _dMSEventSubscriptionEventCategories = Nothing
  , _dMSEventSubscriptionSnsTopicArn = snsTopicArnarg
  , _dMSEventSubscriptionSourceIds = Nothing
  , _dMSEventSubscriptionSourceType = Nothing
  , _dMSEventSubscriptionSubscriptionName = Nothing
  , _dMSEventSubscriptionTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-eventsubscription.html#cfn-dms-eventsubscription-enabled
dmsesEnabled :: Lens' DMSEventSubscription (Maybe (Val Bool'))
dmsesEnabled = lens _dMSEventSubscriptionEnabled (\s a -> s { _dMSEventSubscriptionEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-eventsubscription.html#cfn-dms-eventsubscription-eventcategories
dmsesEventCategories :: Lens' DMSEventSubscription (Maybe [Val Text])
dmsesEventCategories = lens _dMSEventSubscriptionEventCategories (\s a -> s { _dMSEventSubscriptionEventCategories = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-eventsubscription.html#cfn-dms-eventsubscription-snstopicarn
dmsesSnsTopicArn :: Lens' DMSEventSubscription (Val Text)
dmsesSnsTopicArn = lens _dMSEventSubscriptionSnsTopicArn (\s a -> s { _dMSEventSubscriptionSnsTopicArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-eventsubscription.html#cfn-dms-eventsubscription-sourceids
dmsesSourceIds :: Lens' DMSEventSubscription (Maybe [Val Text])
dmsesSourceIds = lens _dMSEventSubscriptionSourceIds (\s a -> s { _dMSEventSubscriptionSourceIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-eventsubscription.html#cfn-dms-eventsubscription-sourcetype
dmsesSourceType :: Lens' DMSEventSubscription (Maybe (Val Text))
dmsesSourceType = lens _dMSEventSubscriptionSourceType (\s a -> s { _dMSEventSubscriptionSourceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-eventsubscription.html#cfn-dms-eventsubscription-subscriptionname
dmsesSubscriptionName :: Lens' DMSEventSubscription (Maybe (Val Text))
dmsesSubscriptionName = lens _dMSEventSubscriptionSubscriptionName (\s a -> s { _dMSEventSubscriptionSubscriptionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-eventsubscription.html#cfn-dms-eventsubscription-tags
dmsesTags :: Lens' DMSEventSubscription (Maybe [Tag])
dmsesTags = lens _dMSEventSubscriptionTags (\s a -> s { _dMSEventSubscriptionTags = a })