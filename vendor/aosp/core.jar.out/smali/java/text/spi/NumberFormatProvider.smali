.class public abstract Ljava/text/spi/NumberFormatProvider;
.super Ljava/util/spi/LocaleServiceProvider;
.source "NumberFormatProvider.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/util/spi/LocaleServiceProvider;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public abstract getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
.end method

.method public abstract getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
.end method

.method public abstract getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
.end method

.method public abstract getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
.end method
