.class public final Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedSingletonIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedSingletonIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V
    .locals 0
    .parameter
    .parameter "nodeType"

    .prologue
    .line 2161
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedSingletonIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 2162
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedSingletonIterator;->_nodeType:I

    .line 2163
    return-void
.end method


# virtual methods
.method public next()I
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 2174
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 2175
    .local v1, result:I
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedSingletonIterator;->_nodeType:I

    .line 2177
    .local v0, nodeType:I
    iput v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 2179
    const/16 v3, 0xe

    if-lt v0, v3, :cond_1

    .line 2180
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedSingletonIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getExpandedTypeID(I)I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 2181
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result v2

    .line 2189
    :cond_0
    :goto_0
    return v2

    .line 2184
    :cond_1
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedSingletonIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v3

    if-ne v3, v0, :cond_0

    .line 2185
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result v2

    goto :goto_0
.end method
