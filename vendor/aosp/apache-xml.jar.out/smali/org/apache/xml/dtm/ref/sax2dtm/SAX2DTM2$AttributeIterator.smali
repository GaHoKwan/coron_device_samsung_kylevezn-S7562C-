.class public final Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AttributeIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AttributeIterator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;)V
    .locals 0
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AttributeIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    return-void
.end method


# virtual methods
.method public next()I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 536
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 538
    .local v0, node:I
    if-eq v0, v1, :cond_0

    .line 539
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AttributeIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getNextAttributeIdentity(I)I

    move-result v1

    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 540
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AttributeIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result v1

    .line 543
    :cond_0
    return v1
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 2
    .parameter "node"

    .prologue
    .line 515
    if-nez p1, :cond_0

    .line 516
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AttributeIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDocument()I

    move-result p1

    .line 517
    :cond_0
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v0, :cond_1

    .line 519
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    .line 520
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AttributeIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AttributeIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getFirstAttributeIdentity(I)I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 522
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    .line 525
    .end local p0
    :cond_1
    return-object p0
.end method
