.class public Ljava/nio/charset/UnsupportedCharsetException;
.super Ljava/lang/IllegalArgumentException;
.source "UnsupportedCharsetException.java"


# static fields
.field private static final serialVersionUID:J = 0x14b04358a8c650ffL


# instance fields
.field private charsetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "charsetName"

    .prologue
    .line 43
    if-eqz p1, :cond_0

    move-object v0, p1

    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Ljava/nio/charset/UnsupportedCharsetException;->charsetName:Ljava/lang/String;

    .line 45
    return-void

    .line 43
    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method


# virtual methods
.method public getCharsetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Ljava/nio/charset/UnsupportedCharsetException;->charsetName:Ljava/lang/String;

    return-object v0
.end method
