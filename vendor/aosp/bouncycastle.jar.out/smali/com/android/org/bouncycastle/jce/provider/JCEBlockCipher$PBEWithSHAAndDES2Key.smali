.class public Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$PBEWithSHAAndDES2Key;
.super Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;
.source "JCEBlockCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHAAndDES2Key"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 905
    new-instance v0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    .line 906
    return-void
.end method
