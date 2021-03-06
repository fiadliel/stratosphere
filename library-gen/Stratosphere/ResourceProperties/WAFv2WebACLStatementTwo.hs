{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html

module Stratosphere.ResourceProperties.WAFv2WebACLStatementTwo where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLAndStatementTwo
import Stratosphere.ResourceProperties.WAFv2WebACLByteMatchStatement
import Stratosphere.ResourceProperties.WAFv2WebACLGeoMatchStatement
import Stratosphere.ResourceProperties.WAFv2WebACLIPSetReferenceStatement
import Stratosphere.ResourceProperties.WAFv2WebACLManagedRuleGroupStatement
import Stratosphere.ResourceProperties.WAFv2WebACLNotStatementTwo
import Stratosphere.ResourceProperties.WAFv2WebACLOrStatementTwo
import Stratosphere.ResourceProperties.WAFv2WebACLRateBasedStatementTwo
import Stratosphere.ResourceProperties.WAFv2WebACLRegexPatternSetReferenceStatement
import Stratosphere.ResourceProperties.WAFv2WebACLRuleGroupReferenceStatement
import Stratosphere.ResourceProperties.WAFv2WebACLSizeConstraintStatement
import Stratosphere.ResourceProperties.WAFv2WebACLSqliMatchStatement
import Stratosphere.ResourceProperties.WAFv2WebACLXssMatchStatement

-- | Full data type definition for WAFv2WebACLStatementTwo. See
-- 'waFv2WebACLStatementTwo' for a more convenient constructor.
data WAFv2WebACLStatementTwo =
  WAFv2WebACLStatementTwo
  { _wAFv2WebACLStatementTwoAndStatement :: Maybe WAFv2WebACLAndStatementTwo
  , _wAFv2WebACLStatementTwoByteMatchStatement :: Maybe WAFv2WebACLByteMatchStatement
  , _wAFv2WebACLStatementTwoGeoMatchStatement :: Maybe WAFv2WebACLGeoMatchStatement
  , _wAFv2WebACLStatementTwoIPSetReferenceStatement :: Maybe WAFv2WebACLIPSetReferenceStatement
  , _wAFv2WebACLStatementTwoManagedRuleGroupStatement :: Maybe WAFv2WebACLManagedRuleGroupStatement
  , _wAFv2WebACLStatementTwoNotStatement :: Maybe WAFv2WebACLNotStatementTwo
  , _wAFv2WebACLStatementTwoOrStatement :: Maybe WAFv2WebACLOrStatementTwo
  , _wAFv2WebACLStatementTwoRateBasedStatement :: Maybe WAFv2WebACLRateBasedStatementTwo
  , _wAFv2WebACLStatementTwoRegexPatternSetReferenceStatement :: Maybe WAFv2WebACLRegexPatternSetReferenceStatement
  , _wAFv2WebACLStatementTwoRuleGroupReferenceStatement :: Maybe WAFv2WebACLRuleGroupReferenceStatement
  , _wAFv2WebACLStatementTwoSizeConstraintStatement :: Maybe WAFv2WebACLSizeConstraintStatement
  , _wAFv2WebACLStatementTwoSqliMatchStatement :: Maybe WAFv2WebACLSqliMatchStatement
  , _wAFv2WebACLStatementTwoXssMatchStatement :: Maybe WAFv2WebACLXssMatchStatement
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLStatementTwo where
  toJSON WAFv2WebACLStatementTwo{..} =
    object $
    catMaybes
    [ fmap (("AndStatement",) . toJSON) _wAFv2WebACLStatementTwoAndStatement
    , fmap (("ByteMatchStatement",) . toJSON) _wAFv2WebACLStatementTwoByteMatchStatement
    , fmap (("GeoMatchStatement",) . toJSON) _wAFv2WebACLStatementTwoGeoMatchStatement
    , fmap (("IPSetReferenceStatement",) . toJSON) _wAFv2WebACLStatementTwoIPSetReferenceStatement
    , fmap (("ManagedRuleGroupStatement",) . toJSON) _wAFv2WebACLStatementTwoManagedRuleGroupStatement
    , fmap (("NotStatement",) . toJSON) _wAFv2WebACLStatementTwoNotStatement
    , fmap (("OrStatement",) . toJSON) _wAFv2WebACLStatementTwoOrStatement
    , fmap (("RateBasedStatement",) . toJSON) _wAFv2WebACLStatementTwoRateBasedStatement
    , fmap (("RegexPatternSetReferenceStatement",) . toJSON) _wAFv2WebACLStatementTwoRegexPatternSetReferenceStatement
    , fmap (("RuleGroupReferenceStatement",) . toJSON) _wAFv2WebACLStatementTwoRuleGroupReferenceStatement
    , fmap (("SizeConstraintStatement",) . toJSON) _wAFv2WebACLStatementTwoSizeConstraintStatement
    , fmap (("SqliMatchStatement",) . toJSON) _wAFv2WebACLStatementTwoSqliMatchStatement
    , fmap (("XssMatchStatement",) . toJSON) _wAFv2WebACLStatementTwoXssMatchStatement
    ]

-- | Constructor for 'WAFv2WebACLStatementTwo' containing required fields as
-- arguments.
waFv2WebACLStatementTwo
  :: WAFv2WebACLStatementTwo
waFv2WebACLStatementTwo  =
  WAFv2WebACLStatementTwo
  { _wAFv2WebACLStatementTwoAndStatement = Nothing
  , _wAFv2WebACLStatementTwoByteMatchStatement = Nothing
  , _wAFv2WebACLStatementTwoGeoMatchStatement = Nothing
  , _wAFv2WebACLStatementTwoIPSetReferenceStatement = Nothing
  , _wAFv2WebACLStatementTwoManagedRuleGroupStatement = Nothing
  , _wAFv2WebACLStatementTwoNotStatement = Nothing
  , _wAFv2WebACLStatementTwoOrStatement = Nothing
  , _wAFv2WebACLStatementTwoRateBasedStatement = Nothing
  , _wAFv2WebACLStatementTwoRegexPatternSetReferenceStatement = Nothing
  , _wAFv2WebACLStatementTwoRuleGroupReferenceStatement = Nothing
  , _wAFv2WebACLStatementTwoSizeConstraintStatement = Nothing
  , _wAFv2WebACLStatementTwoSqliMatchStatement = Nothing
  , _wAFv2WebACLStatementTwoXssMatchStatement = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-andstatement
wafwaclstwAndStatement :: Lens' WAFv2WebACLStatementTwo (Maybe WAFv2WebACLAndStatementTwo)
wafwaclstwAndStatement = lens _wAFv2WebACLStatementTwoAndStatement (\s a -> s { _wAFv2WebACLStatementTwoAndStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-bytematchstatement
wafwaclstwByteMatchStatement :: Lens' WAFv2WebACLStatementTwo (Maybe WAFv2WebACLByteMatchStatement)
wafwaclstwByteMatchStatement = lens _wAFv2WebACLStatementTwoByteMatchStatement (\s a -> s { _wAFv2WebACLStatementTwoByteMatchStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-geomatchstatement
wafwaclstwGeoMatchStatement :: Lens' WAFv2WebACLStatementTwo (Maybe WAFv2WebACLGeoMatchStatement)
wafwaclstwGeoMatchStatement = lens _wAFv2WebACLStatementTwoGeoMatchStatement (\s a -> s { _wAFv2WebACLStatementTwoGeoMatchStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-ipsetreferencestatement
wafwaclstwIPSetReferenceStatement :: Lens' WAFv2WebACLStatementTwo (Maybe WAFv2WebACLIPSetReferenceStatement)
wafwaclstwIPSetReferenceStatement = lens _wAFv2WebACLStatementTwoIPSetReferenceStatement (\s a -> s { _wAFv2WebACLStatementTwoIPSetReferenceStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-managedrulegroupstatement
wafwaclstwManagedRuleGroupStatement :: Lens' WAFv2WebACLStatementTwo (Maybe WAFv2WebACLManagedRuleGroupStatement)
wafwaclstwManagedRuleGroupStatement = lens _wAFv2WebACLStatementTwoManagedRuleGroupStatement (\s a -> s { _wAFv2WebACLStatementTwoManagedRuleGroupStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-notstatement
wafwaclstwNotStatement :: Lens' WAFv2WebACLStatementTwo (Maybe WAFv2WebACLNotStatementTwo)
wafwaclstwNotStatement = lens _wAFv2WebACLStatementTwoNotStatement (\s a -> s { _wAFv2WebACLStatementTwoNotStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-orstatement
wafwaclstwOrStatement :: Lens' WAFv2WebACLStatementTwo (Maybe WAFv2WebACLOrStatementTwo)
wafwaclstwOrStatement = lens _wAFv2WebACLStatementTwoOrStatement (\s a -> s { _wAFv2WebACLStatementTwoOrStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-ratebasedstatement
wafwaclstwRateBasedStatement :: Lens' WAFv2WebACLStatementTwo (Maybe WAFv2WebACLRateBasedStatementTwo)
wafwaclstwRateBasedStatement = lens _wAFv2WebACLStatementTwoRateBasedStatement (\s a -> s { _wAFv2WebACLStatementTwoRateBasedStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-regexpatternsetreferencestatement
wafwaclstwRegexPatternSetReferenceStatement :: Lens' WAFv2WebACLStatementTwo (Maybe WAFv2WebACLRegexPatternSetReferenceStatement)
wafwaclstwRegexPatternSetReferenceStatement = lens _wAFv2WebACLStatementTwoRegexPatternSetReferenceStatement (\s a -> s { _wAFv2WebACLStatementTwoRegexPatternSetReferenceStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-rulegroupreferencestatement
wafwaclstwRuleGroupReferenceStatement :: Lens' WAFv2WebACLStatementTwo (Maybe WAFv2WebACLRuleGroupReferenceStatement)
wafwaclstwRuleGroupReferenceStatement = lens _wAFv2WebACLStatementTwoRuleGroupReferenceStatement (\s a -> s { _wAFv2WebACLStatementTwoRuleGroupReferenceStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-sizeconstraintstatement
wafwaclstwSizeConstraintStatement :: Lens' WAFv2WebACLStatementTwo (Maybe WAFv2WebACLSizeConstraintStatement)
wafwaclstwSizeConstraintStatement = lens _wAFv2WebACLStatementTwoSizeConstraintStatement (\s a -> s { _wAFv2WebACLStatementTwoSizeConstraintStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-sqlimatchstatement
wafwaclstwSqliMatchStatement :: Lens' WAFv2WebACLStatementTwo (Maybe WAFv2WebACLSqliMatchStatement)
wafwaclstwSqliMatchStatement = lens _wAFv2WebACLStatementTwoSqliMatchStatement (\s a -> s { _wAFv2WebACLStatementTwoSqliMatchStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-xssmatchstatement
wafwaclstwXssMatchStatement :: Lens' WAFv2WebACLStatementTwo (Maybe WAFv2WebACLXssMatchStatement)
wafwaclstwXssMatchStatement = lens _wAFv2WebACLStatementTwoXssMatchStatement (\s a -> s { _wAFv2WebACLStatementTwoXssMatchStatement = a })
