.class public final Llibcore/icu/NativeDecimalFormat;
.super Ljava/lang/Object;
.source "NativeDecimalFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/icu/NativeDecimalFormat$1;,
        Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;
    }
.end annotation


# static fields
.field private static final UNUM_CURRENCY_CODE:I = 0x5

.field private static final UNUM_CURRENCY_SYMBOL:I = 0x8

.field private static final UNUM_DECIMAL_ALWAYS_SHOWN:I = 0x2

.field private static final UNUM_DECIMAL_SEPARATOR_SYMBOL:I = 0x0

.field private static final UNUM_DEFAULT_RULESET:I = 0x6

.field private static final UNUM_DIGIT_SYMBOL:I = 0x5

.field private static final UNUM_EXPONENTIAL_SYMBOL:I = 0xb

.field private static final UNUM_FORMAT_SYMBOL_COUNT:I = 0x12

.field private static final UNUM_FORMAT_WIDTH:I = 0xd

.field private static final UNUM_FRACTION_DIGITS:I = 0x8

.field private static final UNUM_GROUPING_SEPARATOR_SYMBOL:I = 0x1

.field private static final UNUM_GROUPING_SIZE:I = 0xa

.field private static final UNUM_GROUPING_USED:I = 0x1

.field private static final UNUM_INFINITY_SYMBOL:I = 0xe

.field private static final UNUM_INTEGER_DIGITS:I = 0x5

.field private static final UNUM_INTL_CURRENCY_SYMBOL:I = 0x9

.field private static final UNUM_LENIENT_PARSE:I = 0x13

.field private static final UNUM_MAX_FRACTION_DIGITS:I = 0x6

.field private static final UNUM_MAX_INTEGER_DIGITS:I = 0x3

.field private static final UNUM_MAX_SIGNIFICANT_DIGITS:I = 0x12

.field private static final UNUM_MINUS_SIGN_SYMBOL:I = 0x6

.field private static final UNUM_MIN_FRACTION_DIGITS:I = 0x7

.field private static final UNUM_MIN_INTEGER_DIGITS:I = 0x4

.field private static final UNUM_MIN_SIGNIFICANT_DIGITS:I = 0x11

.field private static final UNUM_MONETARY_GROUPING_SEPARATOR_SYMBOL:I = 0x11

.field private static final UNUM_MONETARY_SEPARATOR_SYMBOL:I = 0xa

.field private static final UNUM_MULTIPLIER:I = 0x9

.field private static final UNUM_NAN_SYMBOL:I = 0xf

.field private static final UNUM_NEGATIVE_PREFIX:I = 0x2

.field private static final UNUM_NEGATIVE_SUFFIX:I = 0x3

.field private static final UNUM_PADDING_CHARACTER:I = 0x4

.field private static final UNUM_PADDING_POSITION:I = 0xe

.field private static final UNUM_PAD_ESCAPE_SYMBOL:I = 0xd

.field private static final UNUM_PARSE_INT_ONLY:I = 0x0

.field private static final UNUM_PATTERN_SEPARATOR_SYMBOL:I = 0x2

.field private static final UNUM_PERCENT_SYMBOL:I = 0x3

.field private static final UNUM_PERMILL_SYMBOL:I = 0xc

.field private static final UNUM_PLUS_SIGN_SYMBOL:I = 0x7

.field private static final UNUM_POSITIVE_PREFIX:I = 0x0

.field private static final UNUM_POSITIVE_SUFFIX:I = 0x1

.field private static final UNUM_PUBLIC_RULESETS:I = 0x7

.field private static final UNUM_ROUNDING_INCREMENT:I = 0xc

.field private static final UNUM_ROUNDING_MODE:I = 0xb

.field private static final UNUM_SECONDARY_GROUPING_SIZE:I = 0xf

.field private static final UNUM_SIGNIFICANT_DIGITS_USED:I = 0x10

.field private static final UNUM_SIGNIFICANT_DIGIT_SYMBOL:I = 0x10

.field private static final UNUM_ZERO_DIGIT_SYMBOL:I = 0x4


# instance fields
.field private address:I

.field private lastPattern:Ljava/lang/String;

.field private multiplierBigDecimal:Ljava/math/BigDecimal;

.field private negPrefNull:Z

.field private negSuffNull:Z

.field private transient parseBigDecimal:Z

.field private posPrefNull:Z

.field private posSuffNull:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V
    .locals 19
    .parameter "pattern"
    .parameter "dfs"

    .prologue
    .line 121
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Llibcore/icu/NativeDecimalFormat;->multiplierBigDecimal:Ljava/math/BigDecimal;

    .line 123
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v4

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getDigit()C

    move-result v5

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v7

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v10

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    move-result v11

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getPatternSeparator()C

    move-result v13

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getPercent()C

    move-result v14

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getPerMill()C

    move-result v15

    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v16

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v16}, Llibcore/icu/NativeDecimalFormat;->open(Ljava/lang/String;Ljava/lang/String;CCLjava/lang/String;CLjava/lang/String;Ljava/lang/String;CCLjava/lang/String;CCCC)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Llibcore/icu/NativeDecimalFormat;->address:I

    .line 129
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Llibcore/icu/NativeDecimalFormat;->lastPattern:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    return-void

    .line 130
    :catch_0
    move-exception v17

    .line 131
    .local v17, npe:Ljava/lang/NullPointerException;
    throw v17

    .line 132
    .end local v17           #npe:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v18

    .line 133
    .local v18, re:Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syntax error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Ljava/lang/String;Llibcore/icu/LocaleData;)V
    .locals 17
    .parameter "pattern"
    .parameter "data"

    .prologue
    .line 138
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Llibcore/icu/NativeDecimalFormat;->multiplierBigDecimal:Ljava/math/BigDecimal;

    .line 139
    move-object/from16 v0, p2

    iget-object v3, v0, Llibcore/icu/LocaleData;->currencySymbol:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-char v4, v0, Llibcore/icu/LocaleData;->decimalSeparator:C

    const/16 v5, 0x23

    move-object/from16 v0, p2

    iget-object v6, v0, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-char v7, v0, Llibcore/icu/LocaleData;->groupingSeparator:C

    move-object/from16 v0, p2

    iget-object v8, v0, Llibcore/icu/LocaleData;->infinity:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v9, v0, Llibcore/icu/LocaleData;->internationalCurrencySymbol:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-char v10, v0, Llibcore/icu/LocaleData;->minusSign:C

    move-object/from16 v0, p2

    iget-char v11, v0, Llibcore/icu/LocaleData;->monetarySeparator:C

    move-object/from16 v0, p2

    iget-object v12, v0, Llibcore/icu/LocaleData;->NaN:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-char v13, v0, Llibcore/icu/LocaleData;->patternSeparator:C

    move-object/from16 v0, p2

    iget-char v14, v0, Llibcore/icu/LocaleData;->percent:C

    move-object/from16 v0, p2

    iget-char v15, v0, Llibcore/icu/LocaleData;->perMill:C

    move-object/from16 v0, p2

    iget-char v0, v0, Llibcore/icu/LocaleData;->zeroDigit:C

    move/from16 v16, v0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v16}, Llibcore/icu/NativeDecimalFormat;->open(Ljava/lang/String;Ljava/lang/String;CCLjava/lang/String;CLjava/lang/String;Ljava/lang/String;CCLjava/lang/String;CCCC)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Llibcore/icu/NativeDecimalFormat;->address:I

    .line 144
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Llibcore/icu/NativeDecimalFormat;->lastPattern:Ljava/lang/String;

    .line 145
    return-void
.end method

.method private constructor <init>(Llibcore/icu/NativeDecimalFormat;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Llibcore/icu/NativeDecimalFormat;->multiplierBigDecimal:Ljava/math/BigDecimal;

    .line 149
    iget v0, p1, Llibcore/icu/NativeDecimalFormat;->address:I

    invoke-static {v0}, Llibcore/icu/NativeDecimalFormat;->cloneImpl(I)I

    move-result v0

    iput v0, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    .line 150
    iget-object v0, p1, Llibcore/icu/NativeDecimalFormat;->lastPattern:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/NativeDecimalFormat;->lastPattern:Ljava/lang/String;

    .line 151
    iget-boolean v0, p1, Llibcore/icu/NativeDecimalFormat;->negPrefNull:Z

    iput-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->negPrefNull:Z

    .line 152
    iget-boolean v0, p1, Llibcore/icu/NativeDecimalFormat;->negSuffNull:Z

    iput-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->negSuffNull:Z

    .line 153
    iget-boolean v0, p1, Llibcore/icu/NativeDecimalFormat;->posPrefNull:Z

    iput-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->posPrefNull:Z

    .line 154
    iget-boolean v0, p1, Llibcore/icu/NativeDecimalFormat;->posSuffNull:Z

    iput-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->posSuffNull:Z

    .line 155
    return-void
.end method

.method private static applyPattern(IZLjava/lang/String;)V
    .locals 5
    .parameter "addr"
    .parameter "localized"
    .parameter "pattern"

    .prologue
    .line 481
    :try_start_0
    invoke-static {p0, p1, p2}, Llibcore/icu/NativeDecimalFormat;->applyPatternImpl(IZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 487
    return-void

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, npe:Ljava/lang/NullPointerException;
    throw v0

    .line 484
    .end local v0           #npe:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 485
    .local v1, re:Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syntax error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static native applyPatternImpl(IZLjava/lang/String;)V
.end method

.method private static native cloneImpl(I)I
.end method

.method private static native close(I)V
.end method

.method private static native formatDigitList(ILjava/lang/String;Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C
.end method

.method private static native formatDouble(IDLlibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C
.end method

.method private static native formatLong(IJLlibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C
.end method

.method private static native getAttribute(II)I
.end method

.method private static native getTextAttribute(II)Ljava/lang/String;
.end method

.method private makeScalePositive(ILjava/lang/StringBuilder;)I
    .locals 2
    .parameter "scale"
    .parameter "val"

    .prologue
    .line 309
    if-gez p1, :cond_1

    .line 310
    neg-int p1, p1

    .line 311
    move v0, p1

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 312
    const/16 v1, 0x30

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 311
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 314
    :cond_0
    const/4 p1, 0x0

    .line 316
    .end local v0           #i:I
    :cond_1
    return p1
.end method

.method private static native open(Ljava/lang/String;Ljava/lang/String;CCLjava/lang/String;CLjava/lang/String;Ljava/lang/String;CCLjava/lang/String;CCCC)I
.end method

.method private static native parse(ILjava/lang/String;Ljava/text/ParsePosition;Z)Ljava/lang/Number;
.end method

.method private static native setAttribute(III)V
.end method

.method private static native setDecimalFormatSymbols(ILjava/lang/String;CCLjava/lang/String;CLjava/lang/String;Ljava/lang/String;CCLjava/lang/String;CCCC)V
.end method

.method private static native setRoundingMode(IID)V
.end method

.method private static native setSymbol(IILjava/lang/String;)V
.end method

.method private static native setTextAttribute(IILjava/lang/String;)V
.end method

.method private static native toPatternImpl(IZ)Ljava/lang/String;
.end method


# virtual methods
.method public applyLocalizedPattern(Ljava/lang/String;)V
    .locals 2
    .parameter "pattern"

    .prologue
    .line 268
    iget v0, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Llibcore/icu/NativeDecimalFormat;->applyPattern(IZLjava/lang/String;)V

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Llibcore/icu/NativeDecimalFormat;->lastPattern:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .locals 2
    .parameter "pattern"

    .prologue
    .line 273
    iget-object v0, p0, Llibcore/icu/NativeDecimalFormat;->lastPattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/icu/NativeDecimalFormat;->lastPattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    iget v0, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Llibcore/icu/NativeDecimalFormat;->applyPattern(IZLjava/lang/String;)V

    .line 277
    iput-object p1, p0, Llibcore/icu/NativeDecimalFormat;->lastPattern:Ljava/lang/String;

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 172
    new-instance v0, Llibcore/icu/NativeDecimalFormat;

    invoke-direct {v0, p0}, Llibcore/icu/NativeDecimalFormat;-><init>(Llibcore/icu/NativeDecimalFormat;)V

    return-object v0
.end method

.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    iget v0, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    if-eqz v0, :cond_0

    .line 165
    iget v0, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    invoke-static {v0}, Llibcore/icu/NativeDecimalFormat;->close(I)V

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Llibcore/icu/NativeDecimalFormat;->address:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_0
    monitor-exit p0

    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 187
    if-ne p1, p0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v1

    .line 190
    :cond_1
    instance-of v3, p1, Llibcore/icu/NativeDecimalFormat;

    if-nez v3, :cond_2

    move v1, v2

    .line 191
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 193
    check-cast v0, Llibcore/icu/NativeDecimalFormat;

    .line 194
    .local v0, obj:Llibcore/icu/NativeDecimalFormat;
    iget v3, v0, Llibcore/icu/NativeDecimalFormat;->address:I

    iget v4, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    if-eq v3, v4, :cond_0

    .line 197
    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->isDecimalSeparatorAlwaysShown()Z

    move-result v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->isDecimalSeparatorAlwaysShown()Z

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getGroupingSize()I

    move-result v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getGroupingSize()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getMultiplier()I

    move-result v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getMultiplier()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getMaximumIntegerDigits()I

    move-result v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getMaximumIntegerDigits()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getMaximumFractionDigits()I

    move-result v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getMaximumFractionDigits()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getMinimumIntegerDigits()I

    move-result v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getMinimumIntegerDigits()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getMinimumFractionDigits()I

    move-result v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getMinimumFractionDigits()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->isGroupingUsed()Z

    move-result v3

    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->isGroupingUsed()Z

    move-result v4

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0
.end method

.method public formatBigDecimal(Ljava/math/BigDecimal;Ljava/text/FieldPosition;)[C
    .locals 4
    .parameter "value"
    .parameter "field"

    .prologue
    .line 232
    invoke-static {p2}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->forFieldPosition(Ljava/text/FieldPosition;)Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;

    move-result-object v0

    .line 233
    .local v0, fpi:Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;
    iget v2, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Llibcore/icu/NativeDecimalFormat;->formatDigitList(ILjava/lang/String;Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C

    move-result-object v1

    .line 234
    .local v1, result:[C
    if-eqz v0, :cond_0

    .line 235
    #calls: Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->setFieldPosition(Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;Ljava/text/FieldPosition;)V
    invoke-static {v0, p2}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->access$000(Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;Ljava/text/FieldPosition;)V

    .line 237
    :cond_0
    return-object v1
.end method

.method public formatBigInteger(Ljava/math/BigInteger;Ljava/text/FieldPosition;)[C
    .locals 4
    .parameter "value"
    .parameter "field"

    .prologue
    .line 241
    invoke-static {p2}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->forFieldPosition(Ljava/text/FieldPosition;)Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;

    move-result-object v0

    .line 242
    .local v0, fpi:Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;
    iget v2, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Llibcore/icu/NativeDecimalFormat;->formatDigitList(ILjava/lang/String;Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C

    move-result-object v1

    .line 243
    .local v1, result:[C
    if-eqz v0, :cond_0

    .line 244
    #calls: Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->setFieldPosition(Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;Ljava/text/FieldPosition;)V
    invoke-static {v0, p2}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->access$000(Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;Ljava/text/FieldPosition;)V

    .line 246
    :cond_0
    return-object v1
.end method

.method public formatDouble(DLjava/text/FieldPosition;)[C
    .locals 3
    .parameter "value"
    .parameter "field"

    .prologue
    .line 259
    invoke-static {p3}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->forFieldPosition(Ljava/text/FieldPosition;)Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;

    move-result-object v0

    .line 260
    .local v0, fpi:Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;
    iget v2, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    invoke-static {v2, p1, p2, v0}, Llibcore/icu/NativeDecimalFormat;->formatDouble(IDLlibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C

    move-result-object v1

    .line 261
    .local v1, result:[C
    if-eqz v0, :cond_0

    .line 262
    #calls: Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->setFieldPosition(Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;Ljava/text/FieldPosition;)V
    invoke-static {v0, p3}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->access$000(Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;Ljava/text/FieldPosition;)V

    .line 264
    :cond_0
    return-object v1
.end method

.method public formatLong(JLjava/text/FieldPosition;)[C
    .locals 3
    .parameter "value"
    .parameter "field"

    .prologue
    .line 250
    invoke-static {p3}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->forFieldPosition(Ljava/text/FieldPosition;)Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;

    move-result-object v0

    .line 251
    .local v0, fpi:Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;
    iget v2, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    invoke-static {v2, p1, p2, v0}, Llibcore/icu/NativeDecimalFormat;->formatLong(IJLlibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C

    move-result-object v1

    .line 252
    .local v1, result:[C
    if-eqz v0, :cond_0

    .line 253
    #calls: Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->setFieldPosition(Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;Ljava/text/FieldPosition;)V
    invoke-static {v0, p3}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->access$000(Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;Ljava/text/FieldPosition;)V

    .line 255
    :cond_0
    return-object v1
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 11
    .parameter "object"

    .prologue
    .line 281
    instance-of v9, p1, Ljava/lang/Number;

    if-nez v9, :cond_0

    .line 282
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9

    :cond_0
    move-object v7, p1

    .line 284
    check-cast v7, Ljava/lang/Number;

    .line 285
    .local v7, number:Ljava/lang/Number;
    new-instance v4, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;

    const/4 v9, 0x0

    invoke-direct {v4, v9}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;-><init>(Llibcore/icu/NativeDecimalFormat$1;)V

    .line 287
    .local v4, fpIter:Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;
    instance-of v9, v7, Ljava/math/BigInteger;

    if-nez v9, :cond_1

    instance-of v9, v7, Ljava/math/BigDecimal;

    if-eqz v9, :cond_2

    .line 288
    :cond_1
    new-instance v8, Ljava/lang/String;

    iget v9, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Llibcore/icu/NativeDecimalFormat;->formatDigitList(ILjava/lang/String;Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    .line 297
    .local v8, text:Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/text/AttributedString;

    invoke-direct {v0, v8}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 299
    .local v0, as:Ljava/text/AttributedString;
    :goto_1
    invoke-virtual {v4}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->next()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 300
    invoke-virtual {v4}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->field()Ljava/text/Format$Field;

    move-result-object v3

    .line 301
    .local v3, field:Ljava/text/Format$Field;
    invoke-virtual {v4}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->start()I

    move-result v9

    invoke-virtual {v4}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->limit()I

    move-result v10

    invoke-virtual {v0, v3, v3, v9, v10}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_1

    .line 289
    .end local v0           #as:Ljava/text/AttributedString;
    .end local v3           #field:Ljava/text/Format$Field;
    .end local v8           #text:Ljava/lang/String;
    :cond_2
    instance-of v9, v7, Ljava/lang/Double;

    if-nez v9, :cond_3

    instance-of v9, v7, Ljava/lang/Float;

    if-eqz v9, :cond_4

    .line 290
    :cond_3
    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 291
    .local v1, dv:D
    new-instance v8, Ljava/lang/String;

    iget v9, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    invoke-static {v9, v1, v2, v4}, Llibcore/icu/NativeDecimalFormat;->formatDouble(IDLlibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    .line 292
    .restart local v8       #text:Ljava/lang/String;
    goto :goto_0

    .line 293
    .end local v1           #dv:D
    .end local v8           #text:Ljava/lang/String;
    :cond_4
    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    .line 294
    .local v5, lv:J
    new-instance v8, Ljava/lang/String;

    iget v9, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    invoke-static {v9, v5, v6, v4}, Llibcore/icu/NativeDecimalFormat;->formatLong(IJLlibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    .restart local v8       #text:Ljava/lang/String;
    goto :goto_0

    .line 305
    .end local v5           #lv:J
    .restart local v0       #as:Ljava/text/AttributedString;
    :cond_5
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v9

    return-object v9
.end method

.method public getGroupingSize()I
    .locals 2

    .prologue
    .line 350
    iget v0, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    const/16 v1, 0xa

    invoke-static {v0, v1}, Llibcore/icu/NativeDecimalFormat;->getAttribute(II)I

    move-result v0

    return v0
.end method

.method public getMaximumFractionDigits()I
    .locals 2

    .prologue
    .line 334
    iget v0, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    const/4 v1, 0x6

    invoke-static {v0, v1}, Llibcore/icu/NativeDecimalFormat;->getAttribute(II)I

    move-result v0

    return v0
.end method

.method public getMaximumIntegerDigits()I
    .locals 2

    .prologue
    .line 338
    iget v0, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Llibcore/icu/NativeDecimalFormat;->getAttribute(II)I

    move-result v0

    return v0
.end method

.method public getMinimumFractionDigits()I
    .locals 2

    .prologue
    .line 342
    iget v0, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    const/4 v1, 0x7

    invoke-static {v0, v1}, Llibcore/icu/NativeDecimalFormat;->getAttribute(II)I

    move-result v0

    return v0
.end method

.method public getMinimumIntegerDigits()I
    .locals 2

    .prologue
    .line 346
    iget v0, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Llibcore/icu/NativeDecimalFormat;->getAttribute(II)I

    move-result v0

    return v0
.end method

.method public getMultiplier()I
    .locals 2

    .prologue
    .line 354
    iget v0, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    const/16 v1, 0x9

    invoke-static {v0, v1}, Llibcore/icu/NativeDecimalFormat;->getAttribute(II)I

    move-result v0

    return v0
.end method

.method public getNegativePrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 358
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->negPrefNull:Z

    if-eqz v0, :cond_0

    .line 359
    const/4 v0, 0x0

    .line 361
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Llibcore/icu/NativeDecimalFormat;->getTextAttribute(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNegativeSuffix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 365
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->negSuffNull:Z

    if-eqz v0, :cond_0

    .line 366
    const/4 v0, 0x0

    .line 368
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Llibcore/icu/NativeDecimalFormat;->getTextAttribute(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPositivePrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 372
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->posPrefNull:Z

    if-eqz v0, :cond_0

    .line 373
    const/4 v0, 0x0

    .line 375
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Llibcore/icu/NativeDecimalFormat;->getTextAttribute(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPositiveSuffix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 379
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->posSuffNull:Z

    if-eqz v0, :cond_0

    .line 380
    const/4 v0, 0x0

    .line 382
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Llibcore/icu/NativeDecimalFormat;->getTextAttribute(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDecimalSeparatorAlwaysShown()Z
    .locals 2

    .prologue
    .line 386
    iget v0, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Llibcore/icu/NativeDecimalFormat;->getAttribute(II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupingUsed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 398
    iget v1, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    invoke-static {v1, v0}, Llibcore/icu/NativeDecimalFormat;->getAttribute(II)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isParseBigDecimal()Z
    .locals 1

    .prologue
    .line 390
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->parseBigDecimal:Z

    return v0
.end method

.method public isParseIntegerOnly()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 394
    iget v1, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    invoke-static {v1, v0}, Llibcore/icu/NativeDecimalFormat;->getAttribute(II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 2
    .parameter "string"
    .parameter "position"

    .prologue
    .line 328
    iget v0, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    iget-boolean v1, p0, Llibcore/icu/NativeDecimalFormat;->parseBigDecimal:Z

    invoke-static {v0, p1, p2, v1}, Llibcore/icu/NativeDecimalFormat;->parse(ILjava/lang/String;Ljava/text/ParsePosition;Z)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public setCurrency(Ljava/util/Currency;)V
    .locals 3
    .parameter "currency"

    .prologue
    .line 407
    iget v0, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    const/16 v1, 0x8

    invoke-virtual {p1}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->setSymbol(IILjava/lang/String;)V

    .line 408
    iget v0, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    const/16 v1, 0x9

    invoke-virtual {p1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->setSymbol(IILjava/lang/String;)V

    .line 409
    return-void
.end method

.method public setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V
    .locals 15
    .parameter "dfs"

    .prologue
    .line 216
    iget v0, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v2

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getDigit()C

    move-result v3

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v8

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    move-result v9

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getPatternSeparator()C

    move-result v11

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getPercent()C

    move-result v12

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getPerMill()C

    move-result v13

    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v14

    invoke-static/range {v0 .. v14}, Llibcore/icu/NativeDecimalFormat;->setDecimalFormatSymbols(ILjava/lang/String;CCLjava/lang/String;CLjava/lang/String;Ljava/lang/String;CCLjava/lang/String;CCCC)V

    .line 221
    return-void
.end method

.method public setDecimalFormatSymbols(Llibcore/icu/LocaleData;)V
    .locals 16
    .parameter "localeData"

    .prologue
    .line 224
    move-object/from16 v0, p0

    iget v1, v0, Llibcore/icu/NativeDecimalFormat;->address:I

    move-object/from16 v0, p1

    iget-object v2, v0, Llibcore/icu/LocaleData;->currencySymbol:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-char v3, v0, Llibcore/icu/LocaleData;->decimalSeparator:C

    const/16 v4, 0x23

    move-object/from16 v0, p1

    iget-object v5, v0, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-char v6, v0, Llibcore/icu/LocaleData;->groupingSeparator:C

    move-object/from16 v0, p1

    iget-object v7, v0, Llibcore/icu/LocaleData;->infinity:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v8, v0, Llibcore/icu/LocaleData;->internationalCurrencySymbol:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-char v9, v0, Llibcore/icu/LocaleData;->minusSign:C

    move-object/from16 v0, p1

    iget-char v10, v0, Llibcore/icu/LocaleData;->monetarySeparator:C

    move-object/from16 v0, p1

    iget-object v11, v0, Llibcore/icu/LocaleData;->NaN:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-char v12, v0, Llibcore/icu/LocaleData;->patternSeparator:C

    move-object/from16 v0, p1

    iget-char v13, v0, Llibcore/icu/LocaleData;->percent:C

    move-object/from16 v0, p1

    iget-char v14, v0, Llibcore/icu/LocaleData;->perMill:C

    move-object/from16 v0, p1

    iget-char v15, v0, Llibcore/icu/LocaleData;->zeroDigit:C

    invoke-static/range {v1 .. v15}, Llibcore/icu/NativeDecimalFormat;->setDecimalFormatSymbols(ILjava/lang/String;CCLjava/lang/String;CLjava/lang/String;Ljava/lang/String;CCLjava/lang/String;CCCC)V

    .line 229
    return-void
.end method

.method public setDecimalSeparatorAlwaysShown(Z)V
    .locals 3
    .parameter "value"

    .prologue
    .line 402
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 403
    .local v0, i:I
    :goto_0
    iget v1, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Llibcore/icu/NativeDecimalFormat;->setAttribute(III)V

    .line 404
    return-void

    .line 402
    .end local v0           #i:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGroupingSize(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 412
    iget v0, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    const/16 v1, 0xa

    invoke-static {v0, v1, p1}, Llibcore/icu/NativeDecimalFormat;->setAttribute(III)V

    .line 413
    return-void
.end method

.method public setGroupingUsed(Z)V
    .locals 3
    .parameter "value"

    .prologue
    .line 416
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 417
    .local v0, i:I
    :goto_0
    iget v1, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Llibcore/icu/NativeDecimalFormat;->setAttribute(III)V

    .line 418
    return-void

    .line 416
    .end local v0           #i:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMaximumFractionDigits(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 421
    iget v0, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    const/4 v1, 0x6

    invoke-static {v0, v1, p1}, Llibcore/icu/NativeDecimalFormat;->setAttribute(III)V

    .line 422
    return-void
.end method

.method public setMaximumIntegerDigits(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 425
    iget v0, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Llibcore/icu/NativeDecimalFormat;->setAttribute(III)V

    .line 426
    return-void
.end method

.method public setMinimumFractionDigits(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 429
    iget v0, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    const/4 v1, 0x7

    invoke-static {v0, v1, p1}, Llibcore/icu/NativeDecimalFormat;->setAttribute(III)V

    .line 430
    return-void
.end method

.method public setMinimumIntegerDigits(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 433
    iget v0, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Llibcore/icu/NativeDecimalFormat;->setAttribute(III)V

    .line 434
    return-void
.end method

.method public setMultiplier(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 437
    iget v0, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    const/16 v1, 0x9

    invoke-static {v0, v1, p1}, Llibcore/icu/NativeDecimalFormat;->setAttribute(III)V

    .line 439
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Llibcore/icu/NativeDecimalFormat;->multiplierBigDecimal:Ljava/math/BigDecimal;

    .line 440
    return-void
.end method

.method public setNegativePrefix(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 443
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->negPrefNull:Z

    .line 444
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->negPrefNull:Z

    if-nez v0, :cond_0

    .line 445
    iget v0, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Llibcore/icu/NativeDecimalFormat;->setTextAttribute(IILjava/lang/String;)V

    .line 447
    :cond_0
    return-void

    .line 443
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNegativeSuffix(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 450
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->negSuffNull:Z

    .line 451
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->negSuffNull:Z

    if-nez v0, :cond_0

    .line 452
    iget v0, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Llibcore/icu/NativeDecimalFormat;->setTextAttribute(IILjava/lang/String;)V

    .line 454
    :cond_0
    return-void

    .line 450
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setParseBigDecimal(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 471
    iput-boolean p1, p0, Llibcore/icu/NativeDecimalFormat;->parseBigDecimal:Z

    .line 472
    return-void
.end method

.method public setParseIntegerOnly(Z)V
    .locals 3
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 475
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 476
    .local v0, i:I
    :goto_0
    iget v2, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    invoke-static {v2, v1, v0}, Llibcore/icu/NativeDecimalFormat;->setAttribute(III)V

    .line 477
    return-void

    .end local v0           #i:I
    :cond_0
    move v0, v1

    .line 475
    goto :goto_0
.end method

.method public setPositivePrefix(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 457
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->posPrefNull:Z

    .line 458
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->posPrefNull:Z

    if-nez v0, :cond_0

    .line 459
    iget v0, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    invoke-static {v0, v1, p1}, Llibcore/icu/NativeDecimalFormat;->setTextAttribute(IILjava/lang/String;)V

    .line 461
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 457
    goto :goto_0
.end method

.method public setPositiveSuffix(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 464
    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->posSuffNull:Z

    .line 465
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->posSuffNull:Z

    if-nez v0, :cond_0

    .line 466
    iget v0, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    invoke-static {v0, v1, p1}, Llibcore/icu/NativeDecimalFormat;->setTextAttribute(IILjava/lang/String;)V

    .line 468
    :cond_0
    return-void

    .line 464
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRoundingMode(Ljava/math/RoundingMode;D)V
    .locals 3
    .parameter "roundingMode"
    .parameter "roundingIncrement"

    .prologue
    .line 491
    sget-object v1, Llibcore/icu/NativeDecimalFormat$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 499
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 492
    :pswitch_0
    const/4 v0, 0x0

    .line 501
    .local v0, nativeRoundingMode:I
    :goto_0
    iget v1, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    invoke-static {v1, v0, p2, p3}, Llibcore/icu/NativeDecimalFormat;->setRoundingMode(IID)V

    .line 502
    return-void

    .line 493
    .end local v0           #nativeRoundingMode:I
    :pswitch_1
    const/4 v0, 0x1

    .restart local v0       #nativeRoundingMode:I
    goto :goto_0

    .line 494
    .end local v0           #nativeRoundingMode:I
    :pswitch_2
    const/4 v0, 0x2

    .restart local v0       #nativeRoundingMode:I
    goto :goto_0

    .line 495
    .end local v0           #nativeRoundingMode:I
    :pswitch_3
    const/4 v0, 0x3

    .restart local v0       #nativeRoundingMode:I
    goto :goto_0

    .line 496
    .end local v0           #nativeRoundingMode:I
    :pswitch_4
    const/4 v0, 0x4

    .restart local v0       #nativeRoundingMode:I
    goto :goto_0

    .line 497
    .end local v0           #nativeRoundingMode:I
    :pswitch_5
    const/4 v0, 0x5

    .restart local v0       #nativeRoundingMode:I
    goto :goto_0

    .line 498
    .end local v0           #nativeRoundingMode:I
    :pswitch_6
    const/4 v0, 0x6

    .restart local v0       #nativeRoundingMode:I
    goto :goto_0

    .line 491
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .locals 2

    .prologue
    .line 320
    iget v0, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Llibcore/icu/NativeDecimalFormat;->toPatternImpl(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPattern()Ljava/lang/String;
    .locals 2

    .prologue
    .line 324
    iget v0, p0, Llibcore/icu/NativeDecimalFormat;->address:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Llibcore/icu/NativeDecimalFormat;->toPatternImpl(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
