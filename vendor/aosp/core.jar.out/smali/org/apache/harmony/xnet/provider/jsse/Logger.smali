.class public Lorg/apache/harmony/xnet/provider/jsse/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;
    }
.end annotation


# static fields
.field private static names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 96
    :try_start_0
    const-string v1, "jsse"

    const-string v2, ""

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/xnet/provider/jsse/Logger;->names:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 97
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 98
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    sput-object v1, Lorg/apache/harmony/xnet/provider/jsse/Logger;->names:[Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;
    .locals 2
    .parameter "name"

    .prologue
    .line 103
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/Logger;->names:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 104
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/Logger;->names:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    invoke-direct {v1, p0}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;-><init>(Ljava/lang/String;)V

    .line 108
    :goto_1
    return-object v1

    .line 103
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
