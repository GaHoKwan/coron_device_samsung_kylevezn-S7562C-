.class public Ljava/io/NotSerializableException;
.super Ljava/io/ObjectStreamException;
.source "NotSerializableException.java"


# static fields
.field private static final serialVersionUID:J = 0x28567800e7861635L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/io/ObjectStreamException;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "detailMessage"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/io/ObjectStreamException;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method
