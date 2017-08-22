{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-retrystrategy.html

module Stratosphere.ResourceProperties.BatchJobDefinitionRetryStrategy where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for BatchJobDefinitionRetryStrategy. See
-- 'batchJobDefinitionRetryStrategy' for a more convenient constructor.
data BatchJobDefinitionRetryStrategy =
  BatchJobDefinitionRetryStrategy
  { _batchJobDefinitionRetryStrategyAttempts :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON BatchJobDefinitionRetryStrategy where
  toJSON BatchJobDefinitionRetryStrategy{..} =
    object $
    catMaybes
    [ fmap (("Attempts",) . toJSON . fmap Integer') _batchJobDefinitionRetryStrategyAttempts
    ]

instance FromJSON BatchJobDefinitionRetryStrategy where
  parseJSON (Object obj) =
    BatchJobDefinitionRetryStrategy <$>
      fmap (fmap (fmap unInteger')) (obj .:? "Attempts")
  parseJSON _ = mempty

-- | Constructor for 'BatchJobDefinitionRetryStrategy' containing required
-- fields as arguments.
batchJobDefinitionRetryStrategy
  :: BatchJobDefinitionRetryStrategy
batchJobDefinitionRetryStrategy  =
  BatchJobDefinitionRetryStrategy
  { _batchJobDefinitionRetryStrategyAttempts = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-retrystrategy.html#cfn-batch-jobdefinition-retrystrategy-attempts
bjdrsAttempts :: Lens' BatchJobDefinitionRetryStrategy (Maybe (Val Integer))
bjdrsAttempts = lens _batchJobDefinitionRetryStrategyAttempts (\s a -> s { _batchJobDefinitionRetryStrategyAttempts = a })
