.class public abstract Lorg/apache/harmony/xml/dom/CharacterDataImpl;
.super Lorg/apache/harmony/xml/dom/LeafNodeImpl;
.source "CharacterDataImpl.java"

# interfaces
.implements Lorg/w3c/dom/CharacterData;


# instance fields
.field protected buffer:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V
    .locals 0
    .parameter "document"
    .parameter "data"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/LeafNodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    .line 39
    invoke-virtual {p0, p2}, Lorg/apache/harmony/xml/dom/CharacterDataImpl;->setData(Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public appendData(Ljava/lang/String;)V
    .locals 1
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/CharacterDataImpl;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    return-void
.end method

.method public appendDataTo(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "stringBuilder"

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/CharacterDataImpl;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    .line 59
    return-void
.end method

.method public deleteData(II)V
    .locals 2
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/CharacterDataImpl;->buffer:Ljava/lang/StringBuffer;

    add-int v1, p1, p2

    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 48
    return-void
.end method

.method public getData()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/CharacterDataImpl;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/CharacterDataImpl;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    return v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/CharacterDataImpl;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insertData(ILjava/lang/String;)V
    .locals 4
    .parameter "offset"
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 72
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/CharacterDataImpl;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public replaceData(IILjava/lang/String;)V
    .locals 4
    .parameter "offset"
    .parameter "count"
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 81
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/CharacterDataImpl;->buffer:Ljava/lang/StringBuffer;

    add-int v2, p1, p2

    invoke-virtual {v1, p1, v2, p3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public setData(Ljava/lang/String;)V
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/harmony/xml/dom/CharacterDataImpl;->buffer:Ljava/lang/StringBuffer;

    .line 89
    return-void
.end method

.method public substringData(II)Ljava/lang/String;
    .locals 4
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/CharacterDataImpl;->buffer:Ljava/lang/StringBuffer;

    add-int v2, p1, p2

    invoke-virtual {v1, p1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method
