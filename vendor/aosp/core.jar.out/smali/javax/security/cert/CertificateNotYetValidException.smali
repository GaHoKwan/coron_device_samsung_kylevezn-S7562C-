.class public Ljavax/security/cert/CertificateNotYetValidException;
.super Ljavax/security/cert/CertificateException;
.source "CertificateNotYetValidException.java"


# static fields
.field private static final serialVersionUID:J = -0x7c91c54ebb5028a2L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljavax/security/cert/CertificateException;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method
