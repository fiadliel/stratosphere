{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-schedule.html

module Stratosphere.ResourceProperties.SyntheticsCanarySchedule where

import Stratosphere.ResourceImports


-- | Full data type definition for SyntheticsCanarySchedule. See
-- 'syntheticsCanarySchedule' for a more convenient constructor.
data SyntheticsCanarySchedule =
  SyntheticsCanarySchedule
  { _syntheticsCanaryScheduleDurationInSeconds :: Maybe (Val Text)
  , _syntheticsCanaryScheduleExpression :: Val Text
  } deriving (Show, Eq)

instance ToJSON SyntheticsCanarySchedule where
  toJSON SyntheticsCanarySchedule{..} =
    object $
    catMaybes
    [ fmap (("DurationInSeconds",) . toJSON) _syntheticsCanaryScheduleDurationInSeconds
    , (Just . ("Expression",) . toJSON) _syntheticsCanaryScheduleExpression
    ]

-- | Constructor for 'SyntheticsCanarySchedule' containing required fields as
-- arguments.
syntheticsCanarySchedule
  :: Val Text -- ^ 'scsExpression'
  -> SyntheticsCanarySchedule
syntheticsCanarySchedule expressionarg =
  SyntheticsCanarySchedule
  { _syntheticsCanaryScheduleDurationInSeconds = Nothing
  , _syntheticsCanaryScheduleExpression = expressionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-schedule.html#cfn-synthetics-canary-schedule-durationinseconds
scsDurationInSeconds :: Lens' SyntheticsCanarySchedule (Maybe (Val Text))
scsDurationInSeconds = lens _syntheticsCanaryScheduleDurationInSeconds (\s a -> s { _syntheticsCanaryScheduleDurationInSeconds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-schedule.html#cfn-synthetics-canary-schedule-expression
scsExpression :: Lens' SyntheticsCanarySchedule (Val Text)
scsExpression = lens _syntheticsCanaryScheduleExpression (\s a -> s { _syntheticsCanaryScheduleExpression = a })
