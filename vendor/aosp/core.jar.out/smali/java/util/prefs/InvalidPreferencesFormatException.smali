.class public Ljava/util/prefs/InvalidPreferencesFormatException;
.super Ljava/lang/Exception;
.source "InvalidPreferencesFormatException.java"


# static fields
.field private static final serialVersionUID:J = -0xafcbcc3ef703d75L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "s"
    .parameter "t"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 62
    return-void
.end method
