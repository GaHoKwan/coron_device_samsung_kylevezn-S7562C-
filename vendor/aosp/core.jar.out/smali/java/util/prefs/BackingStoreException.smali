.class public Ljava/util/prefs/BackingStoreException;
.super Ljava/lang/Exception;
.source "BackingStoreException.java"


# static fields
.field private static final serialVersionUID:J = 0xbee9c5c998835f5L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 50
    return-void
.end method
