.class public Ljava/lang/IllegalMonitorStateException;
.super Ljava/lang/RuntimeException;
.source "IllegalMonitorStateException.java"


# static fields
.field private static final serialVersionUID:J = 0x33885078182ced4dL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "detailMessage"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method
