.class public Ljavax/security/auth/callback/UnsupportedCallbackException;
.super Ljava/lang/Exception;
.source "UnsupportedCallbackException.java"


# static fields
.field private static final serialVersionUID:J = -0x5f63c70ff58df497L


# instance fields
.field private callback:Ljavax/security/auth/callback/Callback;


# direct methods
.method public constructor <init>(Ljavax/security/auth/callback/Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 38
    iput-object p1, p0, Ljavax/security/auth/callback/UnsupportedCallbackException;->callback:Ljavax/security/auth/callback/Callback;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljavax/security/auth/callback/Callback;Ljava/lang/String;)V
    .locals 0
    .parameter "callback"
    .parameter "message"

    .prologue
    .line 51
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Ljavax/security/auth/callback/UnsupportedCallbackException;->callback:Ljavax/security/auth/callback/Callback;

    .line 53
    return-void
.end method


# virtual methods
.method public getCallback()Ljavax/security/auth/callback/Callback;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Ljavax/security/auth/callback/UnsupportedCallbackException;->callback:Ljavax/security/auth/callback/Callback;

    return-object v0
.end method
