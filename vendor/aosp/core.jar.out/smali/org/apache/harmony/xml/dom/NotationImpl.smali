.class public Lorg/apache/harmony/xml/dom/NotationImpl;
.super Lorg/apache/harmony/xml/dom/LeafNodeImpl;
.source "NotationImpl.java"

# interfaces
.implements Lorg/w3c/dom/Notation;


# instance fields
.field private notationName:Ljava/lang/String;

.field private publicID:Ljava/lang/String;

.field private systemID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "document"
    .parameter "notationName"
    .parameter "publicID"
    .parameter "systemID"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/LeafNodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NotationImpl;->notationName:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0xc

    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NotationImpl;->publicID:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NotationImpl;->systemID:Ljava/lang/String;

    return-object v0
.end method
