{-# OPTIONS_GHC -w #-}
{-# OPTIONS -XMagicHash -XBangPatterns -XTypeSynonymInstances -XFlexibleInstances -cpp #-}
#if __GLASGOW_HASKELL__ >= 710
{-# OPTIONS_GHC -XPartialTypeSignatures #-}
#endif
{-# OPTIONS_GHC -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
{-# LANGUAGE PatternSynonyms #-}

module Language.Rzk.Syntax.Par
  ( happyError
  , myLexer
  , pModule
  , pLanguageDecl
  , pLanguage
  , pCommand
  , pListCommand
  , pPattern
  , pListPattern
  , pParam
  , pListParam
  , pParamDecl
  , pRestriction
  , pListRestriction
  , pTerm7
  , pTerm5
  , pTerm4
  , pTerm3
  , pTerm2
  , pTerm1
  , pTerm6
  , pTerm
  , pListTerm
  ) where

import Prelude

import qualified Language.Rzk.Syntax.Abs
import Language.Rzk.Syntax.Lex
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import qualified GHC.Exts as Happy_GHC_Exts
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

newtype HappyAbsSyn  = HappyAbsSyn HappyAny
#if __GLASGOW_HASKELL__ >= 607
type HappyAny = Happy_GHC_Exts.Any
#else
type HappyAny = forall a . a
#endif
newtype HappyWrap24 = HappyWrap24 ((Language.Rzk.Syntax.Abs.BNFC'Position, String))
happyIn24 :: ((Language.Rzk.Syntax.Abs.BNFC'Position, String)) -> (HappyAbsSyn )
happyIn24 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap24 x)
{-# INLINE happyIn24 #-}
happyOut24 :: (HappyAbsSyn ) -> HappyWrap24
happyOut24 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut24 #-}
newtype HappyWrap25 = HappyWrap25 ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.VarIdent))
happyIn25 :: ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.VarIdent)) -> (HappyAbsSyn )
happyIn25 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap25 x)
{-# INLINE happyIn25 #-}
happyOut25 :: (HappyAbsSyn ) -> HappyWrap25
happyOut25 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut25 #-}
newtype HappyWrap26 = HappyWrap26 ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.HoleIdent))
happyIn26 :: ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.HoleIdent)) -> (HappyAbsSyn )
happyIn26 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap26 x)
{-# INLINE happyIn26 #-}
happyOut26 :: (HappyAbsSyn ) -> HappyWrap26
happyOut26 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut26 #-}
newtype HappyWrap27 = HappyWrap27 ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.Module))
happyIn27 :: ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.Module)) -> (HappyAbsSyn )
happyIn27 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap27 x)
{-# INLINE happyIn27 #-}
happyOut27 :: (HappyAbsSyn ) -> HappyWrap27
happyOut27 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut27 #-}
newtype HappyWrap28 = HappyWrap28 ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.LanguageDecl))
happyIn28 :: ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.LanguageDecl)) -> (HappyAbsSyn )
happyIn28 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap28 x)
{-# INLINE happyIn28 #-}
happyOut28 :: (HappyAbsSyn ) -> HappyWrap28
happyOut28 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut28 #-}
newtype HappyWrap29 = HappyWrap29 ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.Language))
happyIn29 :: ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.Language)) -> (HappyAbsSyn )
happyIn29 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap29 x)
{-# INLINE happyIn29 #-}
happyOut29 :: (HappyAbsSyn ) -> HappyWrap29
happyOut29 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut29 #-}
newtype HappyWrap30 = HappyWrap30 ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.Command))
happyIn30 :: ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.Command)) -> (HappyAbsSyn )
happyIn30 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap30 x)
{-# INLINE happyIn30 #-}
happyOut30 :: (HappyAbsSyn ) -> HappyWrap30
happyOut30 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut30 #-}
newtype HappyWrap31 = HappyWrap31 ((Language.Rzk.Syntax.Abs.BNFC'Position, [Language.Rzk.Syntax.Abs.Command]))
happyIn31 :: ((Language.Rzk.Syntax.Abs.BNFC'Position, [Language.Rzk.Syntax.Abs.Command])) -> (HappyAbsSyn )
happyIn31 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap31 x)
{-# INLINE happyIn31 #-}
happyOut31 :: (HappyAbsSyn ) -> HappyWrap31
happyOut31 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut31 #-}
newtype HappyWrap32 = HappyWrap32 ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.Pattern))
happyIn32 :: ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.Pattern)) -> (HappyAbsSyn )
happyIn32 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap32 x)
{-# INLINE happyIn32 #-}
happyOut32 :: (HappyAbsSyn ) -> HappyWrap32
happyOut32 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut32 #-}
newtype HappyWrap33 = HappyWrap33 ((Language.Rzk.Syntax.Abs.BNFC'Position, [Language.Rzk.Syntax.Abs.Pattern]))
happyIn33 :: ((Language.Rzk.Syntax.Abs.BNFC'Position, [Language.Rzk.Syntax.Abs.Pattern])) -> (HappyAbsSyn )
happyIn33 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap33 x)
{-# INLINE happyIn33 #-}
happyOut33 :: (HappyAbsSyn ) -> HappyWrap33
happyOut33 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut33 #-}
newtype HappyWrap34 = HappyWrap34 ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.Param))
happyIn34 :: ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.Param)) -> (HappyAbsSyn )
happyIn34 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap34 x)
{-# INLINE happyIn34 #-}
happyOut34 :: (HappyAbsSyn ) -> HappyWrap34
happyOut34 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut34 #-}
newtype HappyWrap35 = HappyWrap35 ((Language.Rzk.Syntax.Abs.BNFC'Position, [Language.Rzk.Syntax.Abs.Param]))
happyIn35 :: ((Language.Rzk.Syntax.Abs.BNFC'Position, [Language.Rzk.Syntax.Abs.Param])) -> (HappyAbsSyn )
happyIn35 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap35 x)
{-# INLINE happyIn35 #-}
happyOut35 :: (HappyAbsSyn ) -> HappyWrap35
happyOut35 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut35 #-}
newtype HappyWrap36 = HappyWrap36 ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.ParamDecl))
happyIn36 :: ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.ParamDecl)) -> (HappyAbsSyn )
happyIn36 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap36 x)
{-# INLINE happyIn36 #-}
happyOut36 :: (HappyAbsSyn ) -> HappyWrap36
happyOut36 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut36 #-}
newtype HappyWrap37 = HappyWrap37 ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.Restriction))
happyIn37 :: ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.Restriction)) -> (HappyAbsSyn )
happyIn37 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap37 x)
{-# INLINE happyIn37 #-}
happyOut37 :: (HappyAbsSyn ) -> HappyWrap37
happyOut37 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut37 #-}
newtype HappyWrap38 = HappyWrap38 ((Language.Rzk.Syntax.Abs.BNFC'Position, [Language.Rzk.Syntax.Abs.Restriction]))
happyIn38 :: ((Language.Rzk.Syntax.Abs.BNFC'Position, [Language.Rzk.Syntax.Abs.Restriction])) -> (HappyAbsSyn )
happyIn38 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap38 x)
{-# INLINE happyIn38 #-}
happyOut38 :: (HappyAbsSyn ) -> HappyWrap38
happyOut38 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut38 #-}
newtype HappyWrap39 = HappyWrap39 ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.Term))
happyIn39 :: ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.Term)) -> (HappyAbsSyn )
happyIn39 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap39 x)
{-# INLINE happyIn39 #-}
happyOut39 :: (HappyAbsSyn ) -> HappyWrap39
happyOut39 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut39 #-}
newtype HappyWrap40 = HappyWrap40 ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.Term))
happyIn40 :: ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.Term)) -> (HappyAbsSyn )
happyIn40 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap40 x)
{-# INLINE happyIn40 #-}
happyOut40 :: (HappyAbsSyn ) -> HappyWrap40
happyOut40 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut40 #-}
newtype HappyWrap41 = HappyWrap41 ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.Term))
happyIn41 :: ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.Term)) -> (HappyAbsSyn )
happyIn41 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap41 x)
{-# INLINE happyIn41 #-}
happyOut41 :: (HappyAbsSyn ) -> HappyWrap41
happyOut41 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut41 #-}
newtype HappyWrap42 = HappyWrap42 ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.Term))
happyIn42 :: ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.Term)) -> (HappyAbsSyn )
happyIn42 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap42 x)
{-# INLINE happyIn42 #-}
happyOut42 :: (HappyAbsSyn ) -> HappyWrap42
happyOut42 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut42 #-}
newtype HappyWrap43 = HappyWrap43 ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.Term))
happyIn43 :: ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.Term)) -> (HappyAbsSyn )
happyIn43 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap43 x)
{-# INLINE happyIn43 #-}
happyOut43 :: (HappyAbsSyn ) -> HappyWrap43
happyOut43 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut43 #-}
newtype HappyWrap44 = HappyWrap44 ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.Term))
happyIn44 :: ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.Term)) -> (HappyAbsSyn )
happyIn44 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap44 x)
{-# INLINE happyIn44 #-}
happyOut44 :: (HappyAbsSyn ) -> HappyWrap44
happyOut44 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut44 #-}
newtype HappyWrap45 = HappyWrap45 ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.Term))
happyIn45 :: ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.Term)) -> (HappyAbsSyn )
happyIn45 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap45 x)
{-# INLINE happyIn45 #-}
happyOut45 :: (HappyAbsSyn ) -> HappyWrap45
happyOut45 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut45 #-}
newtype HappyWrap46 = HappyWrap46 ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.Term))
happyIn46 :: ((Language.Rzk.Syntax.Abs.BNFC'Position, Language.Rzk.Syntax.Abs.Term)) -> (HappyAbsSyn )
happyIn46 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap46 x)
{-# INLINE happyIn46 #-}
happyOut46 :: (HappyAbsSyn ) -> HappyWrap46
happyOut46 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut46 #-}
newtype HappyWrap47 = HappyWrap47 ((Language.Rzk.Syntax.Abs.BNFC'Position, [Language.Rzk.Syntax.Abs.Term]))
happyIn47 :: ((Language.Rzk.Syntax.Abs.BNFC'Position, [Language.Rzk.Syntax.Abs.Term])) -> (HappyAbsSyn )
happyIn47 x = Happy_GHC_Exts.unsafeCoerce# (HappyWrap47 x)
{-# INLINE happyIn47 #-}
happyOut47 :: (HappyAbsSyn ) -> HappyWrap47
happyOut47 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut47 #-}
happyInTok :: (Token) -> (HappyAbsSyn )
happyInTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyInTok #-}
happyOutTok :: (HappyAbsSyn ) -> (Token)
happyOutTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOutTok #-}


happyExpList :: HappyAddr
happyExpList = HappyA# "\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x00\x00\x00\x00\x00\x00\x00\xf8\x1d\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\xdf\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x08\x00\x20\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x80\x00\x00\x02\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x08\x20\x20\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x80\x00\x02\x02\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x76\xe0\x37\x60\x00\x00\x00\x00\x00\x00\x00\x12\x8f\xe0\x17\x7e\xa3\x06\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x7e\xe1\x37\x6a\x00\x00\x00\x00\x00\x00\x00\x12\x8f\x60\x07\x7c\x00\x06\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x76\xe0\x17\x60\x00\x00\x00\x00\x00\x00\x00\x12\x8f\x60\x07\x7e\x01\x06\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x76\xe0\x17\x60\x00\x00\x00\x00\x00\x00\x00\x12\x8f\x60\x07\x7e\x01\x06\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x7e\xe1\x37\x6a\x00\x00\x00\x00\x00\x00\x00\x12\x8f\x60\x07\x7e\x01\x06\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x7e\xe1\x37\x6a\x00\x00\x00\x00\x00\x00\x00\x12\x8f\xe0\x17\x7e\xa3\x06\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x00\x50\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x0a\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x8f\x60\x0f\x7c\x00\x06\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x7e\xe9\x37\x6a\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x76\xe0\x37\x60\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x80\x00\x02\x02\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x76\xc0\x07\x60\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x8f\xe0\x17\x7e\xa3\x06\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x76\xc0\x07\x60\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x80\x00\x00\x02\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x8f\x60\x0f\x7c\x00\x06\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x7e\xe1\x37\x6a\x00\x00\x00\x00\x00\x00\x00\x00\x00\x0a\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\xf1\x08\xf6\xc0\x07\x60\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\xf1\x08\xf6\xc0\x07\x60\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x80\x00\x02\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x80\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x80\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x80\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x80\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\xdf\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x8f\xe0\x17\x7e\xa3\x06\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x7e\xe1\x37\x6a\x00\x00\x00\x00\x00\x00\x00\x12\x8f\xe0\x17\x7e\xa3\x06\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x7e\xe1\x37\x6a\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf8\x1d\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x10\x00\x80\x00\x02\x02\x00\x00\x00\x00\x00\x00\x20\x00\x01\x00\x08\x20\x20\x00\x00\x00\x00\x00\x00\x00\x02\x10\x00\x80\x00\x02\x02\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x02\x00\x00\x08\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x7e\xe1\x37\x6a\x00\x00\x00\x00\x00\x00\x00\x12\x8f\xe0\x17\x7e\xa3\x06\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x7e\xe1\x37\x6a\x00\x00\x00\x00\x00\x00\x00\x12\x8f\x60\x07\x7e\x01\x06\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x76\xe0\x17\x60\x00\x00\x00\x00\x00\x00\x00\x12\x8f\xe0\x17\x7e\xa3\x06\x00\x00\x00\x00\x00\x00\x40\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x80\x00\x00\x02\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x08\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x08\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x12\x8f\xe0\x17\x7e\xa3\x06\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x7e\xe1\x37\x6a\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x80\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x8f\xe0\x17\x7e\xa3\x06\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x7e\xe1\x37\x6a\x00\x00\x00\x00\x00\x00\x00\x12\x8f\x60\x07\x7e\x01\x06\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x76\xe0\x17\x60\x00\x00\x00\x00\x00\x00\x00\x12\x8f\x60\x07\x7e\x01\x06\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x76\xe0\x17\x60\x00\x00\x00\x00\x00\x00\x00\x12\x8f\xe0\x17\x7e\xa3\x06\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x7e\xe1\x37\x6a\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x8f\xe0\x17\x7e\xa3\x06\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x7e\xe1\x37\x6a\x00\x00\x00\x00\x00\x00\x00\x12\x8f\xe0\x17\x7e\xa3\x06\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x8f\xe0\x17\x7e\xa3\x06\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x80\x00\x00\x00\x00\x00\x00\x00\x00\x12\x8f\xe0\x17\x7e\xa3\x06\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x7e\xe1\x37\x6a\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x7e\xe1\x37\x6a\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x8f\x60\x0f\x7c\x00\x06\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x8f\xe0\x17\x7e\xa3\x06\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x08\x00\x20\x00\x00\x00\x00\x00\x00\x00\x12\x8f\xe0\x17\x7e\xa3\x06\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x7e\xe1\x37\x6a\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x8f\xe0\x17\x7e\xa3\x06\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x8f\xe0\x17\x7e\xa3\x06\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x8f\xe0\x17\x7e\xa3\x06\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x8f\xe0\x17\x7e\xa3\x06\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x8f\xe0\x17\x7e\xa3\x06\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x8f\xe0\x17\x7e\xa3\x06\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x8f\x60\x07\x7e\x01\x06\x00\x00\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x8f\xe0\x17\x7e\xa3\x06\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x7e\xe1\x37\x6a\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x14\x00\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x7e\xe1\x37\x6a\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x7e\xe1\x37\x6a\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x7e\xe1\x37\x6a\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x7e\xe1\x37\x6a\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x7e\xe1\x37\x6a\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x7e\xe1\x37\x6a\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x8f\xe0\x17\x7e\xa3\x06\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x8f\xe0\x17\x7e\xa3\x06\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x8f\xe0\x17\x7e\xa3\x06\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x8f\xe0\x17\x7e\xa3\x06\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x00\x00\x12\x8f\xe0\x17\x7e\xa3\x06\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x7e\xe1\x37\x6a\x00\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x7e\xe1\x37\x6a\x00\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x8f\xe0\x17\x7e\xa3\x06\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x8f\xe0\x17\x7e\xa3\x06\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x7e\xe1\x37\x6a\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x12\x8f\xe0\x17\x7e\xa3\x06\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x7e\xe1\x37\x6a\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x7e\xe1\x37\x6a\x00\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\xf1\x08\x7e\xe1\x37\x6a\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_pModule_internal","%start_pLanguageDecl_internal","%start_pLanguage_internal","%start_pCommand_internal","%start_pListCommand_internal","%start_pPattern_internal","%start_pListPattern_internal","%start_pParam_internal","%start_pListParam_internal","%start_pParamDecl_internal","%start_pRestriction_internal","%start_pListRestriction_internal","%start_pTerm7_internal","%start_pTerm5_internal","%start_pTerm4_internal","%start_pTerm3_internal","%start_pTerm2_internal","%start_pTerm1_internal","%start_pTerm6_internal","%start_pTerm_internal","%start_pListTerm_internal","String","VarIdent","HoleIdent","Module","LanguageDecl","Language","Command","ListCommand","Pattern","ListPattern","Param","ListParam","ParamDecl","Restriction","ListRestriction","Term7","Term5","Term4","Term3","Term2","Term1","Term6","Term","ListTerm","'#check'","'#compute'","'#compute-nf'","'#compute-whnf'","'#def'","'#define'","'#lang'","'#postulate'","'#set-option'","'#unset-option'","'('","')'","'*'","'*_1'","','","'->'","'/\\\\'","'0_2'","'1'","'1_2'","'2'","':'","':='","';'","'<'","'<='","'='","'==='","'=_{'","'>'","'BOT'","'CUBE'","'Sigma'","'TOP'","'TOPE'","'U'","'['","'\\\\'","'\\\\/'","']'","'_'","'as'","'first'","'idJ'","'recBOT'","'recOR'","'refl'","'refl_{'","'rzk-1'","'second'","'{'","'|'","'|->'","'}'","'\931'","'\8594'","'\8721'","L_quoted","L_VarIdent","L_HoleIdent","%eof"]
        bit_start = st Prelude.* 108
        bit_end = (st Prelude.+ 1) Prelude.* 108
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..107]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

happyActOffsets :: HappyAddr
happyActOffsets = HappyA# "\xff\xff\xff\xff\xec\xff\xec\x04\xec\x04\x01\x00\x01\x00\x05\x00\x05\x00\x80\x00\x51\x00\x51\x00\x5b\x01\x05\x01\x05\x01\x05\x01\x05\x01\x51\x00\x05\x01\x51\x00\x51\x00\xe6\xff\x00\x00\x00\x00\x00\x00\xf7\xff\x00\x00\x3c\x00\x18\x00\x23\x00\xe8\xff\x00\x00\xaf\x00\x2a\x00\x1a\x00\x22\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xda\x00\x00\x00\x00\x00\x57\x00\x00\x00\x00\x00\x00\x00\x05\x00\x5b\x01\x5c\x00\x00\x00\x6d\x00\x00\x00\x51\x00\x5b\x01\x03\x00\x6f\x00\x86\x00\x00\x00\x00\x00\x5d\x00\xf6\xff\x51\x00\x52\x00\x5d\x00\x5d\x00\x30\x01\x5d\x00\x5d\x00\x0a\x00\x5d\x00\x8d\x00\x78\x00\x81\x00\x7c\x00\x7c\x00\x30\x01\x00\x00\x00\x00\x05\x00\x7c\x00\x11\x00\x00\x00\x11\x00\x7c\x00\x11\x00\x7c\x00\x11\x00\x7c\x00\xec\x04\x7c\x00\x51\x00\x51\x00\x51\x00\x51\x00\x95\x00\x95\x00\x95\x00\x9e\x00\x9e\x00\x9c\x00\x9c\x00\x00\x00\x9c\x00\xb0\x00\xa7\x00\xec\x04\x00\x00\xce\x00\xd1\x00\xd9\x00\x8b\x00\x5d\x01\x66\x01\xdd\x00\xdf\x00\xeb\x00\xfb\x00\x00\x00\x0d\x01\x00\x00\x07\x01\x02\x00\x09\x01\x00\x00\x00\x00\x51\x00\x51\x00\x51\x00\x05\x01\x05\x01\x51\x00\x8f\x00\x11\x00\x11\x00\x0b\x01\x11\x00\x00\x00\x09\x00\x51\x00\x51\x00\x00\x00\x10\x01\x11\x00\x28\x01\x14\x01\x26\x01\x51\x00\x51\x00\x05\x01\x05\x01\x05\x01\x05\x01\x51\x00\x51\x00\x00\x00\x00\x00\x39\x01\x39\x01\x00\x00\x00\x00\x00\x00\x00\x00\x51\x00\x51\x00\x51\x00\x27\x01\x51\x00\x38\x01\x3c\x01\xf3\xff\x51\x00\x00\x00\x44\x00\x51\x00\x34\x01\x35\x01\x00\x00\x51\x00\x16\x01\x00\x00\x30\x01\x00\x00\x00\x00\x32\x01\x51\x00\x11\x00\x51\x00\x51\x00\x00\x00\x00\x00\x00\x00\x4d\x01\x51\x00\x51\x01\x51\x00\x5c\x01\x51\x00\x3b\x01\x00\x00\x00\x00\x4a\x01\x5e\x01\x51\x00\x60\x01\x51\x00\x61\x01\x51\x00\x69\x01\x5a\x01\x79\x01\x85\x01\x00\x00\x05\x01\x86\x01\x51\x00\x51\x00\x53\x00\x51\x00\x4e\x01\x51\x00\x00\x00\x51\x00\x00\x00\x51\x00\x75\x01\xa3\x01\xa4\x01\x00\x00\x00\x00\x00\x00\xa5\x01\xc2\x01\xc3\x01\x00\x00\xa6\x01\x51\x00\x00\x00\xa7\x01\xc7\x01\x00\x00\x00\x00\x00\x00\x00\x00\x51\x00\x00\x00\xbd\x01\x51\x00\xbe\x01\x51\x00\xcd\x01\x00\x00\x00\x00\x00\x00\xd0\x01\x51\x00\xd1\x01\x51\x00\xb0\x01\xd8\x01\xdb\x01\xb5\x01\xb8\x01\x51\x00\x51\x00\xde\x01\x51\x00\xec\x01\xed\x01\x51\x00\x00\x00\x51\x00\x51\x00\x00\x00\xe5\x01\x00\x00\xe6\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc9\x01\x51\x00\x51\x00\x00\x00\xf1\x01\xf5\x01\x00\x00\x00\x00\x51\x00\xf3\x01\x51\x00\xf7\x01\x00\x00\x00\x00"#

happyGotoOffsets :: HappyAddr
happyGotoOffsets = HappyA# "\x82\x00\x0d\x02\x0f\x02\x0c\x02\xa0\x00\x7a\x00\x1a\x01\xfa\x00\xbf\x00\x12\x00\x0e\x02\xb6\x01\x5f\x00\xff\x00\xe1\x00\xbe\x04\x8b\x01\x40\x04\xb6\x00\x24\x02\x93\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x67\x00\x00\x00\x00\x00\x30\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xcb\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x78\x01\x6a\x00\x00\x00\x00\x00\x00\x00\x00\x00\x3c\x02\x8e\x00\xa9\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x96\x00\x48\x02\x00\x00\x00\x00\x00\x00\x96\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x96\x00\x00\x00\x00\x00\xca\x04\x00\x00\x25\x01\x00\x00\xf7\x00\x00\x00\x50\x01\x00\x00\x0a\x01\x00\x00\xa2\x00\x00\x00\x54\x02\x60\x02\x6c\x02\x78\x02\x12\x02\x14\x02\x15\x02\x17\x02\x18\x02\x00\x00\x00\x00\x00\x00\x00\x00\x22\x02\x00\x00\xcf\x00\x00\x00\x00\x00\x00\x00\x00\x00\xd9\x04\xdd\x04\xe1\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x50\x01\x00\x00\x00\x00\x00\x00\xcc\x01\x84\x02\xe2\x01\x4c\x01\x9d\x04\x90\x02\x00\x00\x2e\x01\xac\x01\x00\x00\xad\x01\x00\x00\x00\x00\xf8\x01\x9c\x02\x00\x00\x00\x00\xce\x01\x00\x00\x00\x00\x00\x00\xaa\x01\x4c\x04\xa9\x04\xc7\x04\x2a\x01\x55\x01\x58\x04\x64\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa8\x02\xb4\x02\xc0\x02\x00\x00\x70\x04\x00\x00\x00\x00\x00\x00\xcc\x02\x00\x00\x00\x00\xd8\x02\x00\x00\x00\x00\x00\x00\xe4\x02\x00\x00\x00\x00\x96\x00\x00\x00\x00\x00\x00\x00\xf0\x02\xcf\x01\xfc\x02\x08\x03\x00\x00\x00\x00\x00\x00\x00\x00\x14\x03\x00\x00\x20\x03\x00\x00\x2c\x03\x19\x02\x00\x00\x00\x00\x00\x00\x00\x00\x38\x03\x00\x00\x44\x03\x00\x00\x50\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xb2\x04\x00\x00\x5c\x03\x68\x03\x00\x00\x74\x03\x00\x00\x80\x03\x00\x00\x8c\x03\x00\x00\x98\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa4\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xb0\x03\x00\x00\x00\x00\xbc\x03\x00\x00\xc8\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xd4\x03\x00\x00\xe0\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xec\x03\xf8\x03\x00\x00\x7c\x04\x00\x00\x00\x00\x04\x04\x00\x00\x88\x04\x94\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x04\x1c\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x28\x04\x00\x00\x34\x04\x00\x00\x00\x00\x00\x00"#

happyAdjustOffset :: Happy_GHC_Exts.Int# -> Happy_GHC_Exts.Int#
happyAdjustOffset off = off

happyDefActions :: HappyAddr
happyDefActions = HappyA# "\x00\x00\x00\x00\x00\x00\x00\x00\xd8\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xea\xff\xaf\xff\xb0\xff\x00\x00\x97\xff\xa9\xff\xa7\xff\xa5\xff\x9f\xff\x95\xff\xac\xff\x94\xff\x00\x00\x00\x00\xbf\xff\xbd\xff\xc0\xff\xbc\xff\xbe\xff\x00\x00\xba\xff\xc2\xff\x00\x00\xbb\xff\xc1\xff\xc3\xff\x00\x00\x00\x00\x00\x00\xb9\xff\x00\x00\xb4\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe9\xff\xe8\xff\x00\x00\x00\x00\x00\x00\x9f\xff\x00\x00\x00\x00\xac\xff\x00\x00\x00\x00\x00\x00\x00\x00\xc5\xff\x00\x00\x00\x00\x00\x00\x00\x00\xcc\xff\xd5\xff\xd1\xff\xce\xff\x00\x00\x00\x00\xd6\xff\x00\x00\x00\x00\xd3\xff\x00\x00\x00\x00\x00\x00\xd8\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe5\xff\x00\x00\x00\x00\x00\x00\xd8\xff\xe7\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xd7\xff\x00\x00\xd2\xff\x00\x00\xd3\xff\x00\x00\xcd\xff\x9a\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x98\xff\x00\x00\x00\x00\x00\x00\x99\xff\x00\x00\x00\x00\x00\x00\xaf\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x9e\xff\xa4\xff\xab\xff\xaa\xff\xa8\xff\xa6\xff\x96\xff\x93\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xb3\xff\x00\x00\x00\x00\x00\x00\x00\x00\xae\xff\x00\x00\x00\x00\xa1\xff\xad\xff\xc4\xff\xc6\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe1\xff\xdf\xff\xe0\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe3\xff\xe6\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x9b\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xb8\xff\x00\x00\xa0\xff\x00\x00\x00\x00\x00\x00\x00\x00\xcb\xff\xc9\xff\xb6\xff\x00\x00\x00\x00\x00\x00\xb2\xff\x00\x00\x00\x00\xca\xff\x00\x00\x00\x00\xb5\xff\xa2\xff\xd0\xff\xd4\xff\x00\x00\xe2\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xdd\xff\xe4\xff\xde\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc7\xff\x00\x00\x00\x00\xcf\xff\x00\x00\xd9\xff\x00\x00\xdb\xff\xdc\xff\xda\xff\x9c\xff\x9d\xff\x00\x00\x00\x00\x00\x00\xa3\xff\x00\x00\x00\x00\xc8\xff\xb7\xff\x00\x00\x00\x00\x00\x00\x00\x00\xb1\xff"#

happyCheck :: HappyAddr
happyCheck = HappyA# "\xff\xff\x0b\x00\x0f\x00\x1b\x00\x0e\x00\x1d\x00\x07\x00\x10\x00\x12\x00\x13\x00\x14\x00\x15\x00\x0b\x00\x0b\x00\x0b\x00\x19\x00\x0b\x00\x0f\x00\x2a\x00\x01\x00\x02\x00\x1f\x00\x20\x00\x0d\x00\x22\x00\x23\x00\x24\x00\x25\x00\x0b\x00\x31\x00\x0c\x00\x16\x00\x3a\x00\x0f\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x15\x00\x35\x00\x11\x00\x29\x00\x29\x00\x29\x00\x0b\x00\x29\x00\x38\x00\x0e\x00\x3b\x00\x3c\x00\x3d\x00\x12\x00\x13\x00\x14\x00\x15\x00\x33\x00\x0f\x00\x29\x00\x19\x00\x3b\x00\x3b\x00\x3b\x00\x36\x00\x3b\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x3d\x00\x26\x00\x0d\x00\x27\x00\x29\x00\x3b\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x0f\x00\x32\x00\x33\x00\x1a\x00\x3d\x00\x1c\x00\x37\x00\x16\x00\x39\x00\x0b\x00\x3b\x00\x3c\x00\x0e\x00\x01\x00\x02\x00\x0b\x00\x12\x00\x13\x00\x14\x00\x15\x00\x0b\x00\x01\x00\x02\x00\x19\x00\x01\x00\x02\x00\x1b\x00\x0f\x00\x1d\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x24\x00\x0f\x00\x26\x00\x0b\x00\x0f\x00\x0b\x00\x01\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x08\x00\x32\x00\x33\x00\x03\x00\x04\x00\x34\x00\x37\x00\x36\x00\x39\x00\x0b\x00\x3b\x00\x3c\x00\x0e\x00\x01\x00\x02\x00\x0b\x00\x12\x00\x13\x00\x14\x00\x15\x00\x0b\x00\x01\x00\x02\x00\x19\x00\x3d\x00\x0c\x00\x0f\x00\x0f\x00\x0f\x00\x1f\x00\x20\x00\x16\x00\x22\x00\x23\x00\x24\x00\x0f\x00\x06\x00\x07\x00\x06\x00\x07\x00\x01\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x08\x00\x32\x00\x33\x00\x29\x00\x3d\x00\x35\x00\x01\x00\x02\x00\x3d\x00\x0b\x00\x3b\x00\x3c\x00\x0e\x00\x33\x00\x10\x00\x01\x00\x12\x00\x13\x00\x14\x00\x15\x00\x0f\x00\x3b\x00\x08\x00\x19\x00\x0a\x00\x0b\x00\x15\x00\x01\x00\x02\x00\x1f\x00\x20\x00\x3b\x00\x22\x00\x23\x00\x24\x00\x25\x00\x06\x00\x07\x00\x0c\x00\x3a\x00\x3d\x00\x0f\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x15\x00\x31\x00\x01\x00\x02\x00\x3d\x00\x0b\x00\x18\x00\x38\x00\x0e\x00\x18\x00\x3b\x00\x3c\x00\x12\x00\x13\x00\x14\x00\x15\x00\x0f\x00\x10\x00\x11\x00\x19\x00\x1b\x00\x18\x00\x15\x00\x18\x00\x01\x00\x1f\x00\x20\x00\x01\x00\x22\x00\x23\x00\x24\x00\x08\x00\x01\x00\x02\x00\x08\x00\x18\x00\x0a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x01\x00\x32\x00\x33\x00\x0f\x00\x10\x00\x0b\x00\x16\x00\x08\x00\x0e\x00\x15\x00\x3b\x00\x3c\x00\x12\x00\x13\x00\x14\x00\x15\x00\x01\x00\x0f\x00\x16\x00\x19\x00\x16\x00\x10\x00\x16\x00\x08\x00\x09\x00\x1f\x00\x20\x00\x01\x00\x22\x00\x23\x00\x24\x00\x16\x00\x01\x00\x02\x00\x08\x00\x09\x00\x01\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x08\x00\x32\x00\x10\x00\x0f\x00\x10\x00\x0b\x00\x16\x00\x16\x00\x0e\x00\x15\x00\x3b\x00\x3c\x00\x12\x00\x13\x00\x14\x00\x15\x00\x0d\x00\x0f\x00\x0c\x00\x19\x00\x16\x00\x16\x00\x36\x00\x01\x00\x02\x00\x1f\x00\x20\x00\x01\x00\x22\x00\x23\x00\x24\x00\x25\x00\x01\x00\x02\x00\x08\x00\x09\x00\x28\x00\x0f\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x15\x00\x18\x00\x16\x00\x0f\x00\x10\x00\x0b\x00\x16\x00\x0b\x00\x0e\x00\x15\x00\x3b\x00\x3c\x00\x12\x00\x13\x00\x14\x00\x15\x00\x0b\x00\x16\x00\x16\x00\x19\x00\x3a\x00\x18\x00\x17\x00\x17\x00\x01\x00\x1f\x00\x20\x00\x16\x00\x22\x00\x23\x00\x24\x00\x08\x00\x18\x00\x0a\x00\x0b\x00\x36\x00\x0c\x00\x29\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x01\x00\x02\x00\x34\x00\x29\x00\x33\x00\x0c\x00\x0c\x00\x1e\x00\x01\x00\x02\x00\x3b\x00\x3c\x00\x3b\x00\x33\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x0c\x00\x15\x00\x3b\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x01\x00\x02\x00\x01\x00\x01\x00\x0c\x00\x0c\x00\x0c\x00\x0c\x00\x0c\x00\x08\x00\x08\x00\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x01\x00\x02\x00\x01\x00\x01\x00\x0f\x00\x0f\x00\x0c\x00\x17\x00\x17\x00\x08\x00\x08\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x01\x00\x02\x00\x18\x00\x36\x00\x0f\x00\x18\x00\x18\x00\x0f\x00\x36\x00\x34\x00\x0f\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x01\x00\x02\x00\x0f\x00\x0f\x00\x18\x00\x18\x00\x36\x00\x0f\x00\x0c\x00\x0f\x00\x0c\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x01\x00\x02\x00\x04\x00\x06\x00\x01\x00\x05\x00\x01\x00\x01\x00\x00\x00\x00\x00\x00\x00\x0c\x00\x0d\x00\xff\xff\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x01\x00\x02\x00\x05\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\xff\xff\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\xff\xff\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\xff\xff\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\xff\xff\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\xff\xff\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\xff\xff\xff\xff\x0c\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x01\x00\x02\x00\x0c\x00\xff\xff\xff\xff\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\xff\xff\x15\x00\x01\x00\x02\x00\xff\xff\xff\xff\xff\xff\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\xff\xff\x15\x00\x01\x00\x02\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\xff\xff\x15\x00\x01\x00\x02\x00\xff\xff\x01\x00\xff\xff\x0f\x00\x10\x00\x11\x00\x12\x00\xff\xff\x08\x00\x15\x00\x0a\x00\x0b\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x01\x00\xff\xff\x15\x00\xff\xff\x01\x00\xff\xff\xff\xff\x08\x00\x01\x00\x0a\x00\x0b\x00\x08\x00\xff\xff\x0a\x00\x0b\x00\x08\x00\xff\xff\x0a\x00\x0b\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x06\x00\xff\xff\x08\x00\x09\x00\x0a\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff"#

happyTable :: HappyAddr
happyTable = HappyA# "\x00\x00\x40\x00\xde\x00\x84\x00\x25\x00\x85\x00\x6a\x00\x9b\x00\x26\x00\x27\x00\x28\x00\x29\x00\x59\x00\x59\x00\x8a\x00\x2a\x00\x53\x00\xbc\x00\x96\x00\x17\x00\x18\x00\x2b\x00\x2c\x00\x83\x00\x2e\x00\x2f\x00\x30\x00\x80\x00\x59\x00\x68\x00\x4c\x00\xad\x00\x17\x00\x1a\x00\x33\x00\x34\x00\x35\x00\x36\x00\x37\x00\x4d\x00\x81\x00\x98\x00\x54\x00\x54\x00\x54\x00\x24\x00\x54\x00\x9c\x00\x25\x00\x3c\x00\x3d\x00\xff\xff\x26\x00\x27\x00\x28\x00\x29\x00\x55\x00\x95\x00\x54\x00\x2a\x00\x3c\x00\x3c\x00\x3c\x00\xae\x00\x3c\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\xff\xff\x31\x00\x83\x00\x97\x00\x94\x00\x3c\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x37\x00\xbc\x00\x38\x00\x39\x00\x99\x00\xff\xff\x9a\x00\x3a\x00\xdc\x00\x3b\x00\x24\x00\x3c\x00\x3d\x00\x25\x00\x17\x00\x18\x00\x91\x00\x26\x00\x27\x00\x28\x00\x29\x00\x8e\x00\x17\x00\x18\x00\x2a\x00\x17\x00\x18\x00\x84\x00\x47\x00\x85\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x7e\x00\x31\x00\x8d\x00\x8e\x00\x88\x00\x4e\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x37\x00\x59\x00\x38\x00\x39\x00\x6a\x00\x6b\x00\xee\x00\x3a\x00\xef\x00\x3b\x00\x24\x00\x3c\x00\x3d\x00\x25\x00\x17\x00\x18\x00\x87\x00\x26\x00\x27\x00\x28\x00\x29\x00\x53\x00\x17\x00\x18\x00\x2a\x00\xff\xff\xb3\x00\x82\x00\x8a\x00\xb4\x00\x2b\x00\x2c\x00\xc7\x00\x2e\x00\x2f\x00\x30\x00\x7e\x00\x5a\x00\x5b\x00\x5a\x00\x77\x00\x4e\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x37\x00\x88\x00\x38\x00\x39\x00\x54\x00\xff\xff\x81\x00\x17\x00\x18\x00\xff\xff\x40\x00\x3c\x00\x3d\x00\x25\x00\x55\x00\xcc\xff\x4e\x00\x26\x00\x27\x00\x28\x00\x29\x00\x1a\x00\x3c\x00\x4f\x00\x2a\x00\x50\x00\x51\x00\x3e\x00\x17\x00\x18\x00\x2b\x00\x2c\x00\x3c\x00\x2e\x00\x2f\x00\x30\x00\x80\x00\x5a\x00\x6c\x00\x91\x00\x17\x00\xff\xff\x1a\x00\x33\x00\x34\x00\x35\x00\x36\x00\x37\x00\x4d\x00\x68\x00\x17\x00\x18\x00\xff\xff\x24\x00\xca\x00\xcc\xff\x25\x00\xc9\x00\x3c\x00\x3d\x00\x26\x00\x27\x00\x28\x00\x29\x00\x1a\x00\x1b\x00\x45\x00\x2a\x00\xc8\x00\xc1\x00\x43\x00\xc0\x00\x4e\x00\x2b\x00\x2c\x00\x4e\x00\x2e\x00\x2f\x00\x30\x00\x7a\x00\x17\x00\x18\x00\x4f\x00\xbf\x00\x55\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x37\x00\x4e\x00\x38\x00\x39\x00\x1a\x00\x46\x00\x40\x00\xbe\x00\x78\x00\x25\x00\x43\x00\x3c\x00\x3d\x00\x26\x00\x27\x00\x28\x00\x29\x00\x4e\x00\xbc\x00\xbd\x00\x2a\x00\xbb\x00\xa9\x00\xb0\x00\x56\x00\x57\x00\x2b\x00\x2c\x00\x4e\x00\x2e\x00\x2f\x00\x30\x00\xa6\x00\x17\x00\x18\x00\x7b\x00\x7c\x00\x4e\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x37\x00\xb1\x00\x38\x00\xa7\x00\x1a\x00\x9f\x00\x40\x00\xa5\x00\xe2\x00\x25\x00\x43\x00\x3c\x00\x3d\x00\x26\x00\x27\x00\x28\x00\x29\x00\x83\x00\xe0\x00\xdf\x00\x2a\x00\xda\x00\xd9\x00\xd7\x00\x17\x00\x18\x00\x2b\x00\x2c\x00\x4e\x00\x2e\x00\x2f\x00\x30\x00\x80\x00\x17\x00\x18\x00\x56\x00\x79\x00\xd6\x00\x1a\x00\x33\x00\x34\x00\x35\x00\x36\x00\x37\x00\xb6\x00\xfe\x00\xd1\x00\x1a\x00\x9e\x00\x40\x00\xcf\x00\x53\x00\x25\x00\x43\x00\x3c\x00\x3d\x00\x26\x00\x27\x00\x28\x00\x29\x00\x53\x00\xcd\x00\xc5\x00\x2a\x00\x17\x00\xfd\x00\xfb\x00\xf9\x00\x4e\x00\x2b\x00\x2c\x00\xc3\x00\x2e\x00\x2f\x00\x30\x00\x4f\x00\xf7\x00\x50\x00\x8f\x00\xec\x00\xf5\x00\x54\x00\x33\x00\x34\x00\x35\x00\x36\x00\x37\x00\x17\x00\x18\x00\xf6\x00\x54\x00\x55\x00\xf4\x00\xf2\x00\xe8\x00\x17\x00\x18\x00\x3c\x00\x3d\x00\x3c\x00\x55\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x42\x00\x19\x00\x43\x00\x3c\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x17\x00\x18\x00\x4e\x00\x4e\x00\xe7\x00\xe6\x00\x0b\x01\x08\x01\x06\x01\xb0\x00\xae\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\xa3\x00\x19\x00\x48\x00\x49\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x4a\x00\x17\x00\x18\x00\x4e\x00\x4e\x00\x0a\x01\x09\x01\x05\x01\x03\x01\x01\x01\xa7\x00\xd3\x00\x19\x00\x48\x00\xb9\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x4a\x00\x17\x00\x18\x00\xff\x00\x13\x01\x12\x01\x17\x01\x15\x01\x11\x01\x10\x01\x0f\x01\x0c\x01\x19\x00\x48\x00\xb7\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x4a\x00\x17\x00\x18\x00\x1e\x01\x1d\x01\x19\x01\x18\x01\x22\x01\x24\x01\x23\x01\x26\x01\x28\x01\x19\x00\x48\x00\xaa\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xab\x00\x17\x00\x18\x00\x68\x00\x65\x00\x72\x00\x66\x00\x71\x00\x70\x00\x6f\x00\x6e\x00\xca\x00\x19\x00\x4b\x00\x00\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x4a\x00\x17\x00\x18\x00\x6d\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x19\x00\x92\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x3d\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x85\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x8b\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x85\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x76\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x75\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x74\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x73\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xb8\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xb4\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xa9\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xe4\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xe3\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xe2\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xdc\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xda\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xd7\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xd4\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xd2\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xd1\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xcf\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xcd\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xcb\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xfb\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xf9\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xf7\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xf0\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xef\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xec\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xea\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xe9\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xe8\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x06\x01\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x03\x01\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x01\x01\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xff\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x15\x01\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x13\x01\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x0d\x01\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x0c\x01\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x1b\x01\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x20\x01\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x1f\x01\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x24\x01\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x26\x01\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x40\x00\x41\x00\x20\x00\x00\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x40\x00\xa2\x00\x20\x00\x00\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x40\x00\x9d\x00\x20\x00\x00\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x40\x00\x9c\x00\x20\x00\x00\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x40\x00\xe0\x00\x20\x00\x00\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x40\x00\x1e\x01\x20\x00\x00\x00\x00\x00\x19\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x40\x00\x1a\x01\x20\x00\x17\x00\x18\x00\x19\x00\x00\x00\x00\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x40\x00\x19\x01\x20\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\xb5\x00\x00\x00\x43\x00\x17\x00\x18\x00\x00\x00\x00\x00\x00\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\xa1\x00\x00\x00\x43\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\xf2\x00\x00\x00\x43\x00\x17\x00\x18\x00\x00\x00\x4e\x00\x00\x00\x1a\x00\x1b\x00\x1c\x00\x44\x00\x00\x00\x4f\x00\x43\x00\x50\x00\x7d\x00\x1a\x00\x1b\x00\x1c\x00\xa0\x00\x4e\x00\x00\x00\x43\x00\x00\x00\x4e\x00\x00\x00\x00\x00\x4f\x00\x4e\x00\x50\x00\xc5\x00\x4f\x00\x00\x00\x50\x00\xc3\x00\x4f\x00\x00\x00\x50\x00\xc1\x00\x5d\x00\x5e\x00\x5f\x00\x60\x00\x61\x00\x62\x00\x00\x00\x63\x00\x64\x00\x65\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyReduceArr = Happy_Data_Array.array (21, 108) [
	(21 , happyReduce_21),
	(22 , happyReduce_22),
	(23 , happyReduce_23),
	(24 , happyReduce_24),
	(25 , happyReduce_25),
	(26 , happyReduce_26),
	(27 , happyReduce_27),
	(28 , happyReduce_28),
	(29 , happyReduce_29),
	(30 , happyReduce_30),
	(31 , happyReduce_31),
	(32 , happyReduce_32),
	(33 , happyReduce_33),
	(34 , happyReduce_34),
	(35 , happyReduce_35),
	(36 , happyReduce_36),
	(37 , happyReduce_37),
	(38 , happyReduce_38),
	(39 , happyReduce_39),
	(40 , happyReduce_40),
	(41 , happyReduce_41),
	(42 , happyReduce_42),
	(43 , happyReduce_43),
	(44 , happyReduce_44),
	(45 , happyReduce_45),
	(46 , happyReduce_46),
	(47 , happyReduce_47),
	(48 , happyReduce_48),
	(49 , happyReduce_49),
	(50 , happyReduce_50),
	(51 , happyReduce_51),
	(52 , happyReduce_52),
	(53 , happyReduce_53),
	(54 , happyReduce_54),
	(55 , happyReduce_55),
	(56 , happyReduce_56),
	(57 , happyReduce_57),
	(58 , happyReduce_58),
	(59 , happyReduce_59),
	(60 , happyReduce_60),
	(61 , happyReduce_61),
	(62 , happyReduce_62),
	(63 , happyReduce_63),
	(64 , happyReduce_64),
	(65 , happyReduce_65),
	(66 , happyReduce_66),
	(67 , happyReduce_67),
	(68 , happyReduce_68),
	(69 , happyReduce_69),
	(70 , happyReduce_70),
	(71 , happyReduce_71),
	(72 , happyReduce_72),
	(73 , happyReduce_73),
	(74 , happyReduce_74),
	(75 , happyReduce_75),
	(76 , happyReduce_76),
	(77 , happyReduce_77),
	(78 , happyReduce_78),
	(79 , happyReduce_79),
	(80 , happyReduce_80),
	(81 , happyReduce_81),
	(82 , happyReduce_82),
	(83 , happyReduce_83),
	(84 , happyReduce_84),
	(85 , happyReduce_85),
	(86 , happyReduce_86),
	(87 , happyReduce_87),
	(88 , happyReduce_88),
	(89 , happyReduce_89),
	(90 , happyReduce_90),
	(91 , happyReduce_91),
	(92 , happyReduce_92),
	(93 , happyReduce_93),
	(94 , happyReduce_94),
	(95 , happyReduce_95),
	(96 , happyReduce_96),
	(97 , happyReduce_97),
	(98 , happyReduce_98),
	(99 , happyReduce_99),
	(100 , happyReduce_100),
	(101 , happyReduce_101),
	(102 , happyReduce_102),
	(103 , happyReduce_103),
	(104 , happyReduce_104),
	(105 , happyReduce_105),
	(106 , happyReduce_106),
	(107 , happyReduce_107),
	(108 , happyReduce_108)
	]

happy_n_terms = 62 :: Prelude.Int
happy_n_nonterms = 24 :: Prelude.Int

happyReduce_21 = happySpecReduce_1  0# happyReduction_21
happyReduction_21 happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	happyIn24
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), ((\(PT _ (TL s)) -> s) happy_var_1))
	)}

happyReduce_22 = happySpecReduce_1  1# happyReduction_22
happyReduction_22 happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	happyIn25
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.VarIdent (tokenText happy_var_1))
	)}

happyReduce_23 = happySpecReduce_1  2# happyReduction_23
happyReduction_23 happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	happyIn26
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.HoleIdent (tokenText happy_var_1))
	)}

happyReduce_24 = happySpecReduce_2  3# happyReduction_24
happyReduction_24 happy_x_2
	happy_x_1
	 =  case happyOut28 happy_x_1 of { (HappyWrap28 happy_var_1) -> 
	case happyOut31 happy_x_2 of { (HappyWrap31 happy_var_2) -> 
	happyIn27
		 ((fst happy_var_1, Language.Rzk.Syntax.Abs.Module (fst happy_var_1) (snd happy_var_1) (snd happy_var_2))
	)}}

happyReduce_25 = happySpecReduce_3  4# happyReduction_25
happyReduction_25 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut29 happy_x_2 of { (HappyWrap29 happy_var_2) -> 
	happyIn28
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.LanguageDecl (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)) (snd happy_var_2))
	)}}

happyReduce_26 = happySpecReduce_1  5# happyReduction_26
happyReduction_26 happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	happyIn29
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.Rzk1 (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)))
	)}

happyReduce_27 = happyReduce 5# 6# happyReduction_27
happyReduction_27 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut24 happy_x_2 of { (HappyWrap24 happy_var_2) -> 
	case happyOut24 happy_x_4 of { (HappyWrap24 happy_var_4) -> 
	happyIn30
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.CommandSetOption (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)) (snd happy_var_2) (snd happy_var_4))
	) `HappyStk` happyRest}}}

happyReduce_28 = happySpecReduce_3  6# happyReduction_28
happyReduction_28 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut24 happy_x_2 of { (HappyWrap24 happy_var_2) -> 
	happyIn30
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.CommandUnsetOption (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)) (snd happy_var_2))
	)}}

happyReduce_29 = happyReduce 5# 6# happyReduction_29
happyReduction_29 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut46 happy_x_2 of { (HappyWrap46 happy_var_2) -> 
	case happyOut46 happy_x_4 of { (HappyWrap46 happy_var_4) -> 
	happyIn30
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.CommandCheck (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)) (snd happy_var_2) (snd happy_var_4))
	) `HappyStk` happyRest}}}

happyReduce_30 = happySpecReduce_3  6# happyReduction_30
happyReduction_30 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut46 happy_x_2 of { (HappyWrap46 happy_var_2) -> 
	happyIn30
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.CommandCompute (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)) (snd happy_var_2))
	)}}

happyReduce_31 = happySpecReduce_3  6# happyReduction_31
happyReduction_31 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut46 happy_x_2 of { (HappyWrap46 happy_var_2) -> 
	happyIn30
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.CommandComputeWHNF (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)) (snd happy_var_2))
	)}}

happyReduce_32 = happySpecReduce_3  6# happyReduction_32
happyReduction_32 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut46 happy_x_2 of { (HappyWrap46 happy_var_2) -> 
	happyIn30
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.CommandComputeNF (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)) (snd happy_var_2))
	)}}

happyReduce_33 = happyReduce 6# 6# happyReduction_33
happyReduction_33 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut25 happy_x_2 of { (HappyWrap25 happy_var_2) -> 
	case happyOut35 happy_x_3 of { (HappyWrap35 happy_var_3) -> 
	case happyOut46 happy_x_5 of { (HappyWrap46 happy_var_5) -> 
	happyIn30
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.CommandPostulate (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)) (snd happy_var_2) (snd happy_var_3) (snd happy_var_5))
	) `HappyStk` happyRest}}}}

happyReduce_34 = happyReduce 5# 6# happyReduction_34
happyReduction_34 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut25 happy_x_2 of { (HappyWrap25 happy_var_2) -> 
	case happyOut46 happy_x_4 of { (HappyWrap46 happy_var_4) -> 
	happyIn30
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.commandPostulateNoParams (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)) (snd happy_var_2) (snd happy_var_4))
	) `HappyStk` happyRest}}}

happyReduce_35 = happyReduce 8# 6# happyReduction_35
happyReduction_35 (happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut25 happy_x_2 of { (HappyWrap25 happy_var_2) -> 
	case happyOut35 happy_x_3 of { (HappyWrap35 happy_var_3) -> 
	case happyOut46 happy_x_5 of { (HappyWrap46 happy_var_5) -> 
	case happyOut46 happy_x_7 of { (HappyWrap46 happy_var_7) -> 
	happyIn30
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.CommandDefine (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)) (snd happy_var_2) (snd happy_var_3) (snd happy_var_5) (snd happy_var_7))
	) `HappyStk` happyRest}}}}}

happyReduce_36 = happyReduce 7# 6# happyReduction_36
happyReduction_36 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut25 happy_x_2 of { (HappyWrap25 happy_var_2) -> 
	case happyOut46 happy_x_4 of { (HappyWrap46 happy_var_4) -> 
	case happyOut46 happy_x_6 of { (HappyWrap46 happy_var_6) -> 
	happyIn30
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.commandDefineNoParams (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)) (snd happy_var_2) (snd happy_var_4) (snd happy_var_6))
	) `HappyStk` happyRest}}}}

happyReduce_37 = happyReduce 8# 6# happyReduction_37
happyReduction_37 (happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut25 happy_x_2 of { (HappyWrap25 happy_var_2) -> 
	case happyOut35 happy_x_3 of { (HappyWrap35 happy_var_3) -> 
	case happyOut46 happy_x_5 of { (HappyWrap46 happy_var_5) -> 
	case happyOut46 happy_x_7 of { (HappyWrap46 happy_var_7) -> 
	happyIn30
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.commandDef (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)) (snd happy_var_2) (snd happy_var_3) (snd happy_var_5) (snd happy_var_7))
	) `HappyStk` happyRest}}}}}

happyReduce_38 = happyReduce 7# 6# happyReduction_38
happyReduction_38 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut25 happy_x_2 of { (HappyWrap25 happy_var_2) -> 
	case happyOut46 happy_x_4 of { (HappyWrap46 happy_var_4) -> 
	case happyOut46 happy_x_6 of { (HappyWrap46 happy_var_6) -> 
	happyIn30
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.commandDefNoParams (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)) (snd happy_var_2) (snd happy_var_4) (snd happy_var_6))
	) `HappyStk` happyRest}}}}

happyReduce_39 = happySpecReduce_0  7# happyReduction_39
happyReduction_39  =  happyIn31
		 ((Language.Rzk.Syntax.Abs.BNFC'NoPosition, [])
	)

happyReduce_40 = happySpecReduce_2  7# happyReduction_40
happyReduction_40 happy_x_2
	happy_x_1
	 =  case happyOut30 happy_x_1 of { (HappyWrap30 happy_var_1) -> 
	case happyOut31 happy_x_2 of { (HappyWrap31 happy_var_2) -> 
	happyIn31
		 ((fst happy_var_1, (:) (snd happy_var_1) (snd happy_var_2))
	)}}

happyReduce_41 = happySpecReduce_1  8# happyReduction_41
happyReduction_41 happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	happyIn32
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.PatternWildcard (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)))
	)}

happyReduce_42 = happySpecReduce_1  8# happyReduction_42
happyReduction_42 happy_x_1
	 =  case happyOut25 happy_x_1 of { (HappyWrap25 happy_var_1) -> 
	happyIn32
		 ((fst happy_var_1, Language.Rzk.Syntax.Abs.PatternVar (fst happy_var_1) (snd happy_var_1))
	)}

happyReduce_43 = happyReduce 5# 8# happyReduction_43
happyReduction_43 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut32 happy_x_2 of { (HappyWrap32 happy_var_2) -> 
	case happyOut32 happy_x_4 of { (HappyWrap32 happy_var_4) -> 
	happyIn32
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.PatternPair (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)) (snd happy_var_2) (snd happy_var_4))
	) `HappyStk` happyRest}}}

happyReduce_44 = happySpecReduce_1  9# happyReduction_44
happyReduction_44 happy_x_1
	 =  case happyOut32 happy_x_1 of { (HappyWrap32 happy_var_1) -> 
	happyIn33
		 ((fst happy_var_1, (:[]) (snd happy_var_1))
	)}

happyReduce_45 = happySpecReduce_2  9# happyReduction_45
happyReduction_45 happy_x_2
	happy_x_1
	 =  case happyOut32 happy_x_1 of { (HappyWrap32 happy_var_1) -> 
	case happyOut33 happy_x_2 of { (HappyWrap33 happy_var_2) -> 
	happyIn33
		 ((fst happy_var_1, (:) (snd happy_var_1) (snd happy_var_2))
	)}}

happyReduce_46 = happySpecReduce_1  10# happyReduction_46
happyReduction_46 happy_x_1
	 =  case happyOut32 happy_x_1 of { (HappyWrap32 happy_var_1) -> 
	happyIn34
		 ((fst happy_var_1, Language.Rzk.Syntax.Abs.ParamPattern (fst happy_var_1) (snd happy_var_1))
	)}

happyReduce_47 = happyReduce 5# 10# happyReduction_47
happyReduction_47 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut33 happy_x_2 of { (HappyWrap33 happy_var_2) -> 
	case happyOut46 happy_x_4 of { (HappyWrap46 happy_var_4) -> 
	happyIn34
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.ParamPatternType (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)) (snd happy_var_2) (snd happy_var_4))
	) `HappyStk` happyRest}}}

happyReduce_48 = happyReduce 7# 10# happyReduction_48
happyReduction_48 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut32 happy_x_2 of { (HappyWrap32 happy_var_2) -> 
	case happyOut46 happy_x_4 of { (HappyWrap46 happy_var_4) -> 
	case happyOut46 happy_x_6 of { (HappyWrap46 happy_var_6) -> 
	happyIn34
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.ParamPatternShape (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)) (snd happy_var_2) (snd happy_var_4) (snd happy_var_6))
	) `HappyStk` happyRest}}}}

happyReduce_49 = happySpecReduce_1  11# happyReduction_49
happyReduction_49 happy_x_1
	 =  case happyOut34 happy_x_1 of { (HappyWrap34 happy_var_1) -> 
	happyIn35
		 ((fst happy_var_1, (:[]) (snd happy_var_1))
	)}

happyReduce_50 = happySpecReduce_2  11# happyReduction_50
happyReduction_50 happy_x_2
	happy_x_1
	 =  case happyOut34 happy_x_1 of { (HappyWrap34 happy_var_1) -> 
	case happyOut35 happy_x_2 of { (HappyWrap35 happy_var_2) -> 
	happyIn35
		 ((fst happy_var_1, (:) (snd happy_var_1) (snd happy_var_2))
	)}}

happyReduce_51 = happySpecReduce_1  12# happyReduction_51
happyReduction_51 happy_x_1
	 =  case happyOut45 happy_x_1 of { (HappyWrap45 happy_var_1) -> 
	happyIn36
		 ((fst happy_var_1, Language.Rzk.Syntax.Abs.ParamType (fst happy_var_1) (snd happy_var_1))
	)}

happyReduce_52 = happyReduce 5# 12# happyReduction_52
happyReduction_52 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut46 happy_x_4 of { (HappyWrap46 happy_var_4) -> 
	happyIn36
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.ParamWildcardType (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)) (snd happy_var_4))
	) `HappyStk` happyRest}}

happyReduce_53 = happyReduce 5# 12# happyReduction_53
happyReduction_53 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut32 happy_x_2 of { (HappyWrap32 happy_var_2) -> 
	case happyOut46 happy_x_4 of { (HappyWrap46 happy_var_4) -> 
	happyIn36
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.ParamVarType (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)) (snd happy_var_2) (snd happy_var_4))
	) `HappyStk` happyRest}}}

happyReduce_54 = happyReduce 5# 12# happyReduction_54
happyReduction_54 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut25 happy_x_2 of { (HappyWrap25 happy_var_2) -> 
	case happyOut46 happy_x_4 of { (HappyWrap46 happy_var_4) -> 
	happyIn36
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.paramVarType (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)) (snd happy_var_2) (snd happy_var_4))
	) `HappyStk` happyRest}}}

happyReduce_55 = happyReduce 9# 12# happyReduction_55
happyReduction_55 (happy_x_9 `HappyStk`
	happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut32 happy_x_3 of { (HappyWrap32 happy_var_3) -> 
	case happyOut46 happy_x_5 of { (HappyWrap46 happy_var_5) -> 
	case happyOut46 happy_x_8 of { (HappyWrap46 happy_var_8) -> 
	happyIn36
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.ParamVarShape (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)) (snd happy_var_3) (snd happy_var_5) (snd happy_var_8))
	) `HappyStk` happyRest}}}}

happyReduce_56 = happyReduce 7# 12# happyReduction_56
happyReduction_56 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut32 happy_x_2 of { (HappyWrap32 happy_var_2) -> 
	case happyOut46 happy_x_4 of { (HappyWrap46 happy_var_4) -> 
	case happyOut46 happy_x_6 of { (HappyWrap46 happy_var_6) -> 
	happyIn36
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.paramVarShape (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)) (snd happy_var_2) (snd happy_var_4) (snd happy_var_6))
	) `HappyStk` happyRest}}}}

happyReduce_57 = happySpecReduce_3  13# happyReduction_57
happyReduction_57 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut46 happy_x_1 of { (HappyWrap46 happy_var_1) -> 
	case happyOut46 happy_x_3 of { (HappyWrap46 happy_var_3) -> 
	happyIn37
		 ((fst happy_var_1, Language.Rzk.Syntax.Abs.Restriction (fst happy_var_1) (snd happy_var_1) (snd happy_var_3))
	)}}

happyReduce_58 = happySpecReduce_1  14# happyReduction_58
happyReduction_58 happy_x_1
	 =  case happyOut37 happy_x_1 of { (HappyWrap37 happy_var_1) -> 
	happyIn38
		 ((fst happy_var_1, (:[]) (snd happy_var_1))
	)}

happyReduce_59 = happySpecReduce_3  14# happyReduction_59
happyReduction_59 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut37 happy_x_1 of { (HappyWrap37 happy_var_1) -> 
	case happyOut38 happy_x_3 of { (HappyWrap38 happy_var_3) -> 
	happyIn38
		 ((fst happy_var_1, (:) (snd happy_var_1) (snd happy_var_3))
	)}}

happyReduce_60 = happySpecReduce_1  15# happyReduction_60
happyReduction_60 happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	happyIn39
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.Universe (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)))
	)}

happyReduce_61 = happySpecReduce_1  15# happyReduction_61
happyReduction_61 happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	happyIn39
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.UniverseCube (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)))
	)}

happyReduce_62 = happySpecReduce_1  15# happyReduction_62
happyReduction_62 happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	happyIn39
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.UniverseTope (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)))
	)}

happyReduce_63 = happySpecReduce_1  15# happyReduction_63
happyReduction_63 happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	happyIn39
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.CubeUnit (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)))
	)}

happyReduce_64 = happySpecReduce_1  15# happyReduction_64
happyReduction_64 happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	happyIn39
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.CubeUnitStar (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)))
	)}

happyReduce_65 = happySpecReduce_1  15# happyReduction_65
happyReduction_65 happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	happyIn39
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.Cube2 (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)))
	)}

happyReduce_66 = happySpecReduce_1  15# happyReduction_66
happyReduction_66 happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	happyIn39
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.Cube2_0 (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)))
	)}

happyReduce_67 = happySpecReduce_1  15# happyReduction_67
happyReduction_67 happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	happyIn39
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.Cube2_1 (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)))
	)}

happyReduce_68 = happySpecReduce_1  15# happyReduction_68
happyReduction_68 happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	happyIn39
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.TopeTop (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)))
	)}

happyReduce_69 = happySpecReduce_1  15# happyReduction_69
happyReduction_69 happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	happyIn39
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.TopeBottom (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)))
	)}

happyReduce_70 = happySpecReduce_1  15# happyReduction_70
happyReduction_70 happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	happyIn39
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.RecBottom (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)))
	)}

happyReduce_71 = happyReduce 4# 15# happyReduction_71
happyReduction_71 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut38 happy_x_3 of { (HappyWrap38 happy_var_3) -> 
	happyIn39
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.RecOr (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)) (snd happy_var_3))
	) `HappyStk` happyRest}}

happyReduce_72 = happyReduce 10# 15# happyReduction_72
happyReduction_72 (happy_x_10 `HappyStk`
	happy_x_9 `HappyStk`
	happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut46 happy_x_3 of { (HappyWrap46 happy_var_3) -> 
	case happyOut46 happy_x_5 of { (HappyWrap46 happy_var_5) -> 
	case happyOut46 happy_x_7 of { (HappyWrap46 happy_var_7) -> 
	case happyOut46 happy_x_9 of { (HappyWrap46 happy_var_9) -> 
	happyIn39
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.recOr (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)) (snd happy_var_3) (snd happy_var_5) (snd happy_var_7) (snd happy_var_9))
	) `HappyStk` happyRest}}}}}

happyReduce_73 = happyReduce 5# 15# happyReduction_73
happyReduction_73 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut36 happy_x_2 of { (HappyWrap36 happy_var_2) -> 
	case happyOut46 happy_x_4 of { (HappyWrap46 happy_var_4) -> 
	happyIn39
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.typeExtension (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)) (snd happy_var_2) (snd happy_var_4))
	) `HappyStk` happyRest}}}

happyReduce_74 = happyReduce 5# 15# happyReduction_74
happyReduction_74 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut46 happy_x_2 of { (HappyWrap46 happy_var_2) -> 
	case happyOut46 happy_x_4 of { (HappyWrap46 happy_var_4) -> 
	happyIn39
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.Pair (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)) (snd happy_var_2) (snd happy_var_4))
	) `HappyStk` happyRest}}}

happyReduce_75 = happySpecReduce_1  15# happyReduction_75
happyReduction_75 happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	happyIn39
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.Refl (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)))
	)}

happyReduce_76 = happySpecReduce_3  15# happyReduction_76
happyReduction_76 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut46 happy_x_2 of { (HappyWrap46 happy_var_2) -> 
	happyIn39
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.ReflTerm (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)) (snd happy_var_2))
	)}}

happyReduce_77 = happyReduce 5# 15# happyReduction_77
happyReduction_77 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut46 happy_x_2 of { (HappyWrap46 happy_var_2) -> 
	case happyOut46 happy_x_4 of { (HappyWrap46 happy_var_4) -> 
	happyIn39
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.ReflTermType (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)) (snd happy_var_2) (snd happy_var_4))
	) `HappyStk` happyRest}}}

happyReduce_78 = happyReduce 14# 15# happyReduction_78
happyReduction_78 (happy_x_14 `HappyStk`
	happy_x_13 `HappyStk`
	happy_x_12 `HappyStk`
	happy_x_11 `HappyStk`
	happy_x_10 `HappyStk`
	happy_x_9 `HappyStk`
	happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut46 happy_x_3 of { (HappyWrap46 happy_var_3) -> 
	case happyOut46 happy_x_5 of { (HappyWrap46 happy_var_5) -> 
	case happyOut46 happy_x_7 of { (HappyWrap46 happy_var_7) -> 
	case happyOut46 happy_x_9 of { (HappyWrap46 happy_var_9) -> 
	case happyOut46 happy_x_11 of { (HappyWrap46 happy_var_11) -> 
	case happyOut46 happy_x_13 of { (HappyWrap46 happy_var_13) -> 
	happyIn39
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.IdJ (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)) (snd happy_var_3) (snd happy_var_5) (snd happy_var_7) (snd happy_var_9) (snd happy_var_11) (snd happy_var_13))
	) `HappyStk` happyRest}}}}}}}

happyReduce_79 = happySpecReduce_1  15# happyReduction_79
happyReduction_79 happy_x_1
	 =  case happyOut26 happy_x_1 of { (HappyWrap26 happy_var_1) -> 
	happyIn39
		 ((fst happy_var_1, Language.Rzk.Syntax.Abs.Hole (fst happy_var_1) (snd happy_var_1))
	)}

happyReduce_80 = happySpecReduce_1  15# happyReduction_80
happyReduction_80 happy_x_1
	 =  case happyOut25 happy_x_1 of { (HappyWrap25 happy_var_1) -> 
	happyIn39
		 ((fst happy_var_1, Language.Rzk.Syntax.Abs.Var (fst happy_var_1) (snd happy_var_1))
	)}

happyReduce_81 = happySpecReduce_3  15# happyReduction_81
happyReduction_81 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut46 happy_x_2 of { (HappyWrap46 happy_var_2) -> 
	happyIn39
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), (snd happy_var_2))
	)}}

happyReduce_82 = happySpecReduce_3  16# happyReduction_82
happyReduction_82 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut40 happy_x_1 of { (HappyWrap40 happy_var_1) -> 
	case happyOut45 happy_x_3 of { (HappyWrap45 happy_var_3) -> 
	happyIn40
		 ((fst happy_var_1, Language.Rzk.Syntax.Abs.CubeProduct (fst happy_var_1) (snd happy_var_1) (snd happy_var_3))
	)}}

happyReduce_83 = happySpecReduce_1  16# happyReduction_83
happyReduction_83 happy_x_1
	 =  case happyOut45 happy_x_1 of { (HappyWrap45 happy_var_1) -> 
	happyIn40
		 ((fst happy_var_1, (snd happy_var_1))
	)}

happyReduce_84 = happySpecReduce_3  17# happyReduction_84
happyReduction_84 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut40 happy_x_1 of { (HappyWrap40 happy_var_1) -> 
	case happyOut40 happy_x_3 of { (HappyWrap40 happy_var_3) -> 
	happyIn41
		 ((fst happy_var_1, Language.Rzk.Syntax.Abs.TopeEQ (fst happy_var_1) (snd happy_var_1) (snd happy_var_3))
	)}}

happyReduce_85 = happySpecReduce_3  17# happyReduction_85
happyReduction_85 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut40 happy_x_1 of { (HappyWrap40 happy_var_1) -> 
	case happyOut40 happy_x_3 of { (HappyWrap40 happy_var_3) -> 
	happyIn41
		 ((fst happy_var_1, Language.Rzk.Syntax.Abs.TopeLEQ (fst happy_var_1) (snd happy_var_1) (snd happy_var_3))
	)}}

happyReduce_86 = happySpecReduce_1  17# happyReduction_86
happyReduction_86 happy_x_1
	 =  case happyOut40 happy_x_1 of { (HappyWrap40 happy_var_1) -> 
	happyIn41
		 ((fst happy_var_1, (snd happy_var_1))
	)}

happyReduce_87 = happySpecReduce_3  18# happyReduction_87
happyReduction_87 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut41 happy_x_1 of { (HappyWrap41 happy_var_1) -> 
	case happyOut42 happy_x_3 of { (HappyWrap42 happy_var_3) -> 
	happyIn42
		 ((fst happy_var_1, Language.Rzk.Syntax.Abs.TopeAnd (fst happy_var_1) (snd happy_var_1) (snd happy_var_3))
	)}}

happyReduce_88 = happySpecReduce_1  18# happyReduction_88
happyReduction_88 happy_x_1
	 =  case happyOut41 happy_x_1 of { (HappyWrap41 happy_var_1) -> 
	happyIn42
		 ((fst happy_var_1, (snd happy_var_1))
	)}

happyReduce_89 = happySpecReduce_3  19# happyReduction_89
happyReduction_89 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut42 happy_x_1 of { (HappyWrap42 happy_var_1) -> 
	case happyOut43 happy_x_3 of { (HappyWrap43 happy_var_3) -> 
	happyIn43
		 ((fst happy_var_1, Language.Rzk.Syntax.Abs.TopeOr (fst happy_var_1) (snd happy_var_1) (snd happy_var_3))
	)}}

happyReduce_90 = happySpecReduce_1  19# happyReduction_90
happyReduction_90 happy_x_1
	 =  case happyOut42 happy_x_1 of { (HappyWrap42 happy_var_1) -> 
	happyIn43
		 ((fst happy_var_1, (snd happy_var_1))
	)}

happyReduce_91 = happySpecReduce_3  20# happyReduction_91
happyReduction_91 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut36 happy_x_1 of { (HappyWrap36 happy_var_1) -> 
	case happyOut44 happy_x_3 of { (HappyWrap44 happy_var_3) -> 
	happyIn44
		 ((fst happy_var_1, Language.Rzk.Syntax.Abs.TypeFun (fst happy_var_1) (snd happy_var_1) (snd happy_var_3))
	)}}

happyReduce_92 = happyReduce 8# 20# happyReduction_92
happyReduction_92 (happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut32 happy_x_3 of { (HappyWrap32 happy_var_3) -> 
	case happyOut46 happy_x_5 of { (HappyWrap46 happy_var_5) -> 
	case happyOut44 happy_x_8 of { (HappyWrap44 happy_var_8) -> 
	happyIn44
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.TypeSigma (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)) (snd happy_var_3) (snd happy_var_5) (snd happy_var_8))
	) `HappyStk` happyRest}}}}

happyReduce_93 = happyReduce 5# 20# happyReduction_93
happyReduction_93 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut43 happy_x_1 of { (HappyWrap43 happy_var_1) -> 
	case happyOut46 happy_x_3 of { (HappyWrap46 happy_var_3) -> 
	case happyOut43 happy_x_5 of { (HappyWrap43 happy_var_5) -> 
	happyIn44
		 ((fst happy_var_1, Language.Rzk.Syntax.Abs.TypeId (fst happy_var_1) (snd happy_var_1) (snd happy_var_3) (snd happy_var_5))
	) `HappyStk` happyRest}}}

happyReduce_94 = happySpecReduce_3  20# happyReduction_94
happyReduction_94 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut43 happy_x_1 of { (HappyWrap43 happy_var_1) -> 
	case happyOut43 happy_x_3 of { (HappyWrap43 happy_var_3) -> 
	happyIn44
		 ((fst happy_var_1, Language.Rzk.Syntax.Abs.TypeIdSimple (fst happy_var_1) (snd happy_var_1) (snd happy_var_3))
	)}}

happyReduce_95 = happyReduce 4# 20# happyReduction_95
happyReduction_95 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut35 happy_x_2 of { (HappyWrap35 happy_var_2) -> 
	case happyOut44 happy_x_4 of { (HappyWrap44 happy_var_4) -> 
	happyIn44
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.Lambda (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)) (snd happy_var_2) (snd happy_var_4))
	) `HappyStk` happyRest}}}

happyReduce_96 = happySpecReduce_1  20# happyReduction_96
happyReduction_96 happy_x_1
	 =  case happyOut43 happy_x_1 of { (HappyWrap43 happy_var_1) -> 
	happyIn44
		 ((fst happy_var_1, (snd happy_var_1))
	)}

happyReduce_97 = happySpecReduce_3  20# happyReduction_97
happyReduction_97 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut36 happy_x_1 of { (HappyWrap36 happy_var_1) -> 
	case happyOut44 happy_x_3 of { (HappyWrap44 happy_var_3) -> 
	happyIn44
		 ((fst happy_var_1, Language.Rzk.Syntax.Abs.unicode_TypeFun (fst happy_var_1) (snd happy_var_1) (snd happy_var_3))
	)}}

happyReduce_98 = happyReduce 8# 20# happyReduction_98
happyReduction_98 (happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut32 happy_x_3 of { (HappyWrap32 happy_var_3) -> 
	case happyOut46 happy_x_5 of { (HappyWrap46 happy_var_5) -> 
	case happyOut44 happy_x_8 of { (HappyWrap44 happy_var_8) -> 
	happyIn44
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.unicode_TypeSigma (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)) (snd happy_var_3) (snd happy_var_5) (snd happy_var_8))
	) `HappyStk` happyRest}}}}

happyReduce_99 = happyReduce 8# 20# happyReduction_99
happyReduction_99 (happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut32 happy_x_3 of { (HappyWrap32 happy_var_3) -> 
	case happyOut46 happy_x_5 of { (HappyWrap46 happy_var_5) -> 
	case happyOut44 happy_x_8 of { (HappyWrap44 happy_var_8) -> 
	happyIn44
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.unicode_TypeSigmaAlt (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)) (snd happy_var_3) (snd happy_var_5) (snd happy_var_8))
	) `HappyStk` happyRest}}}}

happyReduce_100 = happyReduce 4# 21# happyReduction_100
happyReduction_100 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut45 happy_x_1 of { (HappyWrap45 happy_var_1) -> 
	case happyOut38 happy_x_3 of { (HappyWrap38 happy_var_3) -> 
	happyIn45
		 ((fst happy_var_1, Language.Rzk.Syntax.Abs.TypeRestricted (fst happy_var_1) (snd happy_var_1) (snd happy_var_3))
	) `HappyStk` happyRest}}

happyReduce_101 = happySpecReduce_2  21# happyReduction_101
happyReduction_101 happy_x_2
	happy_x_1
	 =  case happyOut45 happy_x_1 of { (HappyWrap45 happy_var_1) -> 
	case happyOut39 happy_x_2 of { (HappyWrap39 happy_var_2) -> 
	happyIn45
		 ((fst happy_var_1, Language.Rzk.Syntax.Abs.App (fst happy_var_1) (snd happy_var_1) (snd happy_var_2))
	)}}

happyReduce_102 = happySpecReduce_2  21# happyReduction_102
happyReduction_102 happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut39 happy_x_2 of { (HappyWrap39 happy_var_2) -> 
	happyIn45
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.First (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)) (snd happy_var_2))
	)}}

happyReduce_103 = happySpecReduce_2  21# happyReduction_103
happyReduction_103 happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut39 happy_x_2 of { (HappyWrap39 happy_var_2) -> 
	happyIn45
		 ((uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1), Language.Rzk.Syntax.Abs.Second (uncurry Language.Rzk.Syntax.Abs.BNFC'Position (tokenLineCol happy_var_1)) (snd happy_var_2))
	)}}

happyReduce_104 = happySpecReduce_1  21# happyReduction_104
happyReduction_104 happy_x_1
	 =  case happyOut39 happy_x_1 of { (HappyWrap39 happy_var_1) -> 
	happyIn45
		 ((fst happy_var_1, (snd happy_var_1))
	)}

happyReduce_105 = happySpecReduce_3  22# happyReduction_105
happyReduction_105 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut43 happy_x_1 of { (HappyWrap43 happy_var_1) -> 
	case happyOut44 happy_x_3 of { (HappyWrap44 happy_var_3) -> 
	happyIn46
		 ((fst happy_var_1, Language.Rzk.Syntax.Abs.TypeAsc (fst happy_var_1) (snd happy_var_1) (snd happy_var_3))
	)}}

happyReduce_106 = happySpecReduce_1  22# happyReduction_106
happyReduction_106 happy_x_1
	 =  case happyOut44 happy_x_1 of { (HappyWrap44 happy_var_1) -> 
	happyIn46
		 ((fst happy_var_1, (snd happy_var_1))
	)}

happyReduce_107 = happySpecReduce_1  23# happyReduction_107
happyReduction_107 happy_x_1
	 =  case happyOut46 happy_x_1 of { (HappyWrap46 happy_var_1) -> 
	happyIn47
		 ((fst happy_var_1, (:[]) (snd happy_var_1))
	)}

happyReduce_108 = happySpecReduce_3  23# happyReduction_108
happyReduction_108 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut46 happy_x_1 of { (HappyWrap46 happy_var_1) -> 
	case happyOut47 happy_x_3 of { (HappyWrap47 happy_var_3) -> 
	happyIn47
		 ((fst happy_var_1, (:) (snd happy_var_1) (snd happy_var_3))
	)}}

happyNewToken action sts stk [] =
	happyDoAction 61# notHappyAtAll action sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = happyDoAction i tk action sts stk tks in
	case tk of {
	PT _ (TS _ 1) -> cont 1#;
	PT _ (TS _ 2) -> cont 2#;
	PT _ (TS _ 3) -> cont 3#;
	PT _ (TS _ 4) -> cont 4#;
	PT _ (TS _ 5) -> cont 5#;
	PT _ (TS _ 6) -> cont 6#;
	PT _ (TS _ 7) -> cont 7#;
	PT _ (TS _ 8) -> cont 8#;
	PT _ (TS _ 9) -> cont 9#;
	PT _ (TS _ 10) -> cont 10#;
	PT _ (TS _ 11) -> cont 11#;
	PT _ (TS _ 12) -> cont 12#;
	PT _ (TS _ 13) -> cont 13#;
	PT _ (TS _ 14) -> cont 14#;
	PT _ (TS _ 15) -> cont 15#;
	PT _ (TS _ 16) -> cont 16#;
	PT _ (TS _ 17) -> cont 17#;
	PT _ (TS _ 18) -> cont 18#;
	PT _ (TS _ 19) -> cont 19#;
	PT _ (TS _ 20) -> cont 20#;
	PT _ (TS _ 21) -> cont 21#;
	PT _ (TS _ 22) -> cont 22#;
	PT _ (TS _ 23) -> cont 23#;
	PT _ (TS _ 24) -> cont 24#;
	PT _ (TS _ 25) -> cont 25#;
	PT _ (TS _ 26) -> cont 26#;
	PT _ (TS _ 27) -> cont 27#;
	PT _ (TS _ 28) -> cont 28#;
	PT _ (TS _ 29) -> cont 29#;
	PT _ (TS _ 30) -> cont 30#;
	PT _ (TS _ 31) -> cont 31#;
	PT _ (TS _ 32) -> cont 32#;
	PT _ (TS _ 33) -> cont 33#;
	PT _ (TS _ 34) -> cont 34#;
	PT _ (TS _ 35) -> cont 35#;
	PT _ (TS _ 36) -> cont 36#;
	PT _ (TS _ 37) -> cont 37#;
	PT _ (TS _ 38) -> cont 38#;
	PT _ (TS _ 39) -> cont 39#;
	PT _ (TS _ 40) -> cont 40#;
	PT _ (TS _ 41) -> cont 41#;
	PT _ (TS _ 42) -> cont 42#;
	PT _ (TS _ 43) -> cont 43#;
	PT _ (TS _ 44) -> cont 44#;
	PT _ (TS _ 45) -> cont 45#;
	PT _ (TS _ 46) -> cont 46#;
	PT _ (TS _ 47) -> cont 47#;
	PT _ (TS _ 48) -> cont 48#;
	PT _ (TS _ 49) -> cont 49#;
	PT _ (TS _ 50) -> cont 50#;
	PT _ (TS _ 51) -> cont 51#;
	PT _ (TS _ 52) -> cont 52#;
	PT _ (TS _ 53) -> cont 53#;
	PT _ (TS _ 54) -> cont 54#;
	PT _ (TS _ 55) -> cont 55#;
	PT _ (TS _ 56) -> cont 56#;
	PT _ (TS _ 57) -> cont 57#;
	PT _ (TL _) -> cont 58#;
	PT _ (T_VarIdent _) -> cont 59#;
	PT _ (T_HoleIdent _) -> cont 60#;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 61# tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

happyThen :: () => Err a -> (a -> Err b) -> Err b
happyThen = ((>>=))
happyReturn :: () => a -> Err a
happyReturn = (return)
happyThen1 m k tks = ((>>=)) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> Err a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> Err a
happyError' = (\(tokens, _) -> happyError tokens)
pModule_internal tks = happySomeParser where
 happySomeParser = happyThen (happyParse 0# tks) (\x -> happyReturn (let {(HappyWrap27 x') = happyOut27 x} in x'))

pLanguageDecl_internal tks = happySomeParser where
 happySomeParser = happyThen (happyParse 1# tks) (\x -> happyReturn (let {(HappyWrap28 x') = happyOut28 x} in x'))

pLanguage_internal tks = happySomeParser where
 happySomeParser = happyThen (happyParse 2# tks) (\x -> happyReturn (let {(HappyWrap29 x') = happyOut29 x} in x'))

pCommand_internal tks = happySomeParser where
 happySomeParser = happyThen (happyParse 3# tks) (\x -> happyReturn (let {(HappyWrap30 x') = happyOut30 x} in x'))

pListCommand_internal tks = happySomeParser where
 happySomeParser = happyThen (happyParse 4# tks) (\x -> happyReturn (let {(HappyWrap31 x') = happyOut31 x} in x'))

pPattern_internal tks = happySomeParser where
 happySomeParser = happyThen (happyParse 5# tks) (\x -> happyReturn (let {(HappyWrap32 x') = happyOut32 x} in x'))

pListPattern_internal tks = happySomeParser where
 happySomeParser = happyThen (happyParse 6# tks) (\x -> happyReturn (let {(HappyWrap33 x') = happyOut33 x} in x'))

pParam_internal tks = happySomeParser where
 happySomeParser = happyThen (happyParse 7# tks) (\x -> happyReturn (let {(HappyWrap34 x') = happyOut34 x} in x'))

pListParam_internal tks = happySomeParser where
 happySomeParser = happyThen (happyParse 8# tks) (\x -> happyReturn (let {(HappyWrap35 x') = happyOut35 x} in x'))

pParamDecl_internal tks = happySomeParser where
 happySomeParser = happyThen (happyParse 9# tks) (\x -> happyReturn (let {(HappyWrap36 x') = happyOut36 x} in x'))

pRestriction_internal tks = happySomeParser where
 happySomeParser = happyThen (happyParse 10# tks) (\x -> happyReturn (let {(HappyWrap37 x') = happyOut37 x} in x'))

pListRestriction_internal tks = happySomeParser where
 happySomeParser = happyThen (happyParse 11# tks) (\x -> happyReturn (let {(HappyWrap38 x') = happyOut38 x} in x'))

pTerm7_internal tks = happySomeParser where
 happySomeParser = happyThen (happyParse 12# tks) (\x -> happyReturn (let {(HappyWrap39 x') = happyOut39 x} in x'))

pTerm5_internal tks = happySomeParser where
 happySomeParser = happyThen (happyParse 13# tks) (\x -> happyReturn (let {(HappyWrap40 x') = happyOut40 x} in x'))

pTerm4_internal tks = happySomeParser where
 happySomeParser = happyThen (happyParse 14# tks) (\x -> happyReturn (let {(HappyWrap41 x') = happyOut41 x} in x'))

pTerm3_internal tks = happySomeParser where
 happySomeParser = happyThen (happyParse 15# tks) (\x -> happyReturn (let {(HappyWrap42 x') = happyOut42 x} in x'))

pTerm2_internal tks = happySomeParser where
 happySomeParser = happyThen (happyParse 16# tks) (\x -> happyReturn (let {(HappyWrap43 x') = happyOut43 x} in x'))

pTerm1_internal tks = happySomeParser where
 happySomeParser = happyThen (happyParse 17# tks) (\x -> happyReturn (let {(HappyWrap44 x') = happyOut44 x} in x'))

pTerm6_internal tks = happySomeParser where
 happySomeParser = happyThen (happyParse 18# tks) (\x -> happyReturn (let {(HappyWrap45 x') = happyOut45 x} in x'))

pTerm_internal tks = happySomeParser where
 happySomeParser = happyThen (happyParse 19# tks) (\x -> happyReturn (let {(HappyWrap46 x') = happyOut46 x} in x'))

pListTerm_internal tks = happySomeParser where
 happySomeParser = happyThen (happyParse 20# tks) (\x -> happyReturn (let {(HappyWrap47 x') = happyOut47 x} in x'))

happySeq = happyDontSeq


type Err = Either String

happyError :: [Token] -> Err a
happyError ts = Left $
  "syntax error at " ++ tokenPos ts ++
  case ts of
    []      -> []
    [Err _] -> " due to lexer error"
    t:_     -> " before `" ++ (prToken t) ++ "'"

myLexer :: String -> [Token]
myLexer = tokens

-- Entrypoints

pModule :: [Token] -> Err Language.Rzk.Syntax.Abs.Module
pModule = fmap snd . pModule_internal

pLanguageDecl :: [Token] -> Err Language.Rzk.Syntax.Abs.LanguageDecl
pLanguageDecl = fmap snd . pLanguageDecl_internal

pLanguage :: [Token] -> Err Language.Rzk.Syntax.Abs.Language
pLanguage = fmap snd . pLanguage_internal

pCommand :: [Token] -> Err Language.Rzk.Syntax.Abs.Command
pCommand = fmap snd . pCommand_internal

pListCommand :: [Token] -> Err [Language.Rzk.Syntax.Abs.Command]
pListCommand = fmap snd . pListCommand_internal

pPattern :: [Token] -> Err Language.Rzk.Syntax.Abs.Pattern
pPattern = fmap snd . pPattern_internal

pListPattern :: [Token] -> Err [Language.Rzk.Syntax.Abs.Pattern]
pListPattern = fmap snd . pListPattern_internal

pParam :: [Token] -> Err Language.Rzk.Syntax.Abs.Param
pParam = fmap snd . pParam_internal

pListParam :: [Token] -> Err [Language.Rzk.Syntax.Abs.Param]
pListParam = fmap snd . pListParam_internal

pParamDecl :: [Token] -> Err Language.Rzk.Syntax.Abs.ParamDecl
pParamDecl = fmap snd . pParamDecl_internal

pRestriction :: [Token] -> Err Language.Rzk.Syntax.Abs.Restriction
pRestriction = fmap snd . pRestriction_internal

pListRestriction :: [Token] -> Err [Language.Rzk.Syntax.Abs.Restriction]
pListRestriction = fmap snd . pListRestriction_internal

pTerm7 :: [Token] -> Err Language.Rzk.Syntax.Abs.Term
pTerm7 = fmap snd . pTerm7_internal

pTerm5 :: [Token] -> Err Language.Rzk.Syntax.Abs.Term
pTerm5 = fmap snd . pTerm5_internal

pTerm4 :: [Token] -> Err Language.Rzk.Syntax.Abs.Term
pTerm4 = fmap snd . pTerm4_internal

pTerm3 :: [Token] -> Err Language.Rzk.Syntax.Abs.Term
pTerm3 = fmap snd . pTerm3_internal

pTerm2 :: [Token] -> Err Language.Rzk.Syntax.Abs.Term
pTerm2 = fmap snd . pTerm2_internal

pTerm1 :: [Token] -> Err Language.Rzk.Syntax.Abs.Term
pTerm1 = fmap snd . pTerm1_internal

pTerm6 :: [Token] -> Err Language.Rzk.Syntax.Abs.Term
pTerm6 = fmap snd . pTerm6_internal

pTerm :: [Token] -> Err Language.Rzk.Syntax.Abs.Term
pTerm = fmap snd . pTerm_internal

pListTerm :: [Token] -> Err [Language.Rzk.Syntax.Abs.Term]
pListTerm = fmap snd . pListTerm_internal
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $













-- Do not remove this comment. Required to fix CPP parsing when using GCC and a clang-compiled alex.
#if __GLASGOW_HASKELL__ > 706
#define LT(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.<# m)) :: Prelude.Bool)
#define GTE(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.>=# m)) :: Prelude.Bool)
#define EQ(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.==# m)) :: Prelude.Bool)
#else
#define LT(n,m) (n Happy_GHC_Exts.<# m)
#define GTE(n,m) (n Happy_GHC_Exts.>=# m)
#define EQ(n,m) (n Happy_GHC_Exts.==# m)
#endif



















data Happy_IntList = HappyCons Happy_GHC_Exts.Int# Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept 0# tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
        (happyTcHack j (happyTcHack st)) (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action



happyDoAction i tk st
        = {- nothing -}
          case action of
                0#           -> {- nothing -}
                                     happyFail (happyExpListPerState ((Happy_GHC_Exts.I# (st)) :: Prelude.Int)) i tk st
                -1#          -> {- nothing -}
                                     happyAccept i tk st
                n | LT(n,(0# :: Happy_GHC_Exts.Int#)) -> {- nothing -}
                                                   (happyReduceArr Happy_Data_Array.! rule) i tk st
                                                   where rule = (Happy_GHC_Exts.I# ((Happy_GHC_Exts.negateInt# ((n Happy_GHC_Exts.+# (1# :: Happy_GHC_Exts.Int#))))))
                n                 -> {- nothing -}
                                     happyShift new_state i tk st
                                     where new_state = (n Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#))
   where off    = happyAdjustOffset (indexShortOffAddr happyActOffsets st)
         off_i  = (off Happy_GHC_Exts.+# i)
         check  = if GTE(off_i,(0# :: Happy_GHC_Exts.Int#))
                  then EQ(indexShortOffAddr happyCheck off_i, i)
                  else Prelude.False
         action
          | check     = indexShortOffAddr happyTable off_i
          | Prelude.otherwise = indexShortOffAddr happyDefActions st




indexShortOffAddr (HappyA# arr) off =
        Happy_GHC_Exts.narrow16Int# i
  where
        i = Happy_GHC_Exts.word2Int# (Happy_GHC_Exts.or# (Happy_GHC_Exts.uncheckedShiftL# high 8#) low)
        high = Happy_GHC_Exts.int2Word# (Happy_GHC_Exts.ord# (Happy_GHC_Exts.indexCharOffAddr# arr (off' Happy_GHC_Exts.+# 1#)))
        low  = Happy_GHC_Exts.int2Word# (Happy_GHC_Exts.ord# (Happy_GHC_Exts.indexCharOffAddr# arr off'))
        off' = off Happy_GHC_Exts.*# 2#




{-# INLINE happyLt #-}
happyLt x y = LT(x,y)


readArrayBit arr bit =
    Bits.testBit (Happy_GHC_Exts.I# (indexShortOffAddr arr ((unbox_int bit) `Happy_GHC_Exts.iShiftRA#` 4#))) (bit `Prelude.mod` 16)
  where unbox_int (Happy_GHC_Exts.I# x) = x






data HappyAddr = HappyA# Happy_GHC_Exts.Addr#


-----------------------------------------------------------------------------
-- HappyState data type (not arrays)













-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state 0# tk st sts stk@(x `HappyStk` _) =
     let i = (case Happy_GHC_Exts.unsafeCoerce# x of { (Happy_GHC_Exts.I# (i)) -> i }) in
--     trace "shifting the error token" $
     happyDoAction i tk new_state (HappyCons (st) (sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state (HappyCons (st) (sts)) ((happyInTok (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_0 nt fn j tk st@((action)) sts stk
     = happyGoto nt j tk st (HappyCons (st) (sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@((HappyCons (st@(action)) (_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_2 nt fn j tk _ (HappyCons (_) (sts@((HappyCons (st@(action)) (_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_3 nt fn j tk _ (HappyCons (_) ((HappyCons (_) (sts@((HappyCons (st@(action)) (_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#)) sts of
         sts1@((HappyCons (st1@(action)) (_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (happyGoto nt j tk st1 sts1 r)

happyMonadReduce k nt fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> happyGoto nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
         let drop_stk = happyDropStk k stk

             off = happyAdjustOffset (indexShortOffAddr happyGotoOffsets st1)
             off_i = (off Happy_GHC_Exts.+# nt)
             new_state = indexShortOffAddr happyTable off_i




          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop 0# l = l
happyDrop n (HappyCons (_) (t)) = happyDrop (n Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#)) t

happyDropStk 0# l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Happy_GHC_Exts.-# (1#::Happy_GHC_Exts.Int#)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction


happyGoto nt j tk st = 
   {- nothing -}
   happyDoAction j tk new_state
   where off = happyAdjustOffset (indexShortOffAddr happyGotoOffsets st)
         off_i = (off Happy_GHC_Exts.+# nt)
         new_state = indexShortOffAddr happyTable off_i




-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist 0# tk old_st _ stk@(x `HappyStk` _) =
     let i = (case Happy_GHC_Exts.unsafeCoerce# x of { (Happy_GHC_Exts.I# (i)) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (action) sts stk =
--      trace "entering error recovery" $
        happyDoAction 0# tk action sts ((Happy_GHC_Exts.unsafeCoerce# (Happy_GHC_Exts.I# (i))) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions


happyTcHack :: Happy_GHC_Exts.Int# -> a -> a
happyTcHack x y = y
{-# INLINE happyTcHack #-}


-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.


{-# NOINLINE happyDoAction #-}
{-# NOINLINE happyTable #-}
{-# NOINLINE happyCheck #-}
{-# NOINLINE happyActOffsets #-}
{-# NOINLINE happyGotoOffsets #-}
{-# NOINLINE happyDefActions #-}

{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
