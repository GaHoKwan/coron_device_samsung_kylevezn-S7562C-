.class public Ljava/lang/UnknownError;
.super Ljava/lang/VirtualMachineError;
.source "UnknownError.java"


# static fields
.field private static final serialVersionUID:J = 0x2309d67432ec5009L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/VirtualMachineError;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "detailMessage"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/lang/VirtualMachineError;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method
