.class public Ljava/util/MissingResourceException;
.super Ljava/lang/RuntimeException;
.source "MissingResourceException.java"


# static fields
.field private static final serialVersionUID:J = -0x43ac421a055d7d11L


# instance fields
.field className:Ljava/lang/String;

.field key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "detailMessage"
    .parameter "className"
    .parameter "resourceName"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 50
    iput-object p2, p0, Ljava/util/MissingResourceException;->className:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Ljava/util/MissingResourceException;->key:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Ljava/util/MissingResourceException;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Ljava/util/MissingResourceException;->key:Ljava/lang/String;

    return-object v0
.end method
