.class public Lcom/android/org/bouncycastle/jce/provider/symmetric/ARC4$Base;
.super Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;
.source "ARC4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/symmetric/ARC4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;-><init>(Lcom/android/org/bouncycastle/crypto/StreamCipher;I)V

    .line 22
    return-void
.end method
