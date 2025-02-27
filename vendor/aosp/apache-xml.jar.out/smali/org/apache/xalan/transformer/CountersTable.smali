.class public Lorg/apache/xalan/transformer/CountersTable;
.super Ljava/util/Hashtable;
.source "CountersTable.java"


# static fields
.field static final serialVersionUID:J = 0x1df6aab6353531a3L


# instance fields
.field transient m_countersMade:I

.field private transient m_newFound:Lorg/apache/xpath/NodeSetDTM;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xalan/transformer/CountersTable;->m_countersMade:I

    .line 47
    return-void
.end method


# virtual methods
.method appendBtoFList(Lorg/apache/xpath/NodeSetDTM;Lorg/apache/xpath/NodeSetDTM;)V
    .locals 3
    .parameter "flist"
    .parameter "blist"

    .prologue
    .line 101
    invoke-virtual {p2}, Lorg/apache/xpath/NodeSetDTM;->size()I

    move-result v1

    .line 103
    .local v1, n:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 105
    invoke-virtual {p2, v0}, Lorg/apache/xpath/NodeSetDTM;->item(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/apache/xpath/NodeSetDTM;->addElement(I)V

    .line 103
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method

.method public countNode(Lorg/apache/xpath/XPathContext;Lorg/apache/xalan/templates/ElemNumber;I)I
    .locals 11
    .parameter "support"
    .parameter "numberElem"
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    .line 130
    const/4 v1, 0x0

    .line 131
    .local v1, count:I
    invoke-virtual {p0, p2}, Lorg/apache/xalan/transformer/CountersTable;->getCounters(Lorg/apache/xalan/templates/ElemNumber;)Ljava/util/Vector;

    move-result-object v4

    .line 132
    .local v4, counters:Ljava/util/Vector;
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v6

    .line 136
    .local v6, nCounters:I
    invoke-virtual {p2, p1, p3}, Lorg/apache/xalan/templates/ElemNumber;->getTargetNode(Lorg/apache/xpath/XPathContext;I)I

    move-result v7

    .line 138
    .local v7, target:I
    if-eq v10, v7, :cond_7

    .line 140
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_1

    .line 142
    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xalan/transformer/Counter;

    .line 144
    .local v3, counter:Lorg/apache/xalan/transformer/Counter;
    invoke-virtual {v3, p1, v7}, Lorg/apache/xalan/transformer/Counter;->getPreviouslyCounted(Lorg/apache/xpath/XPathContext;I)I

    move-result v1

    .line 146
    if-lez v1, :cond_0

    move v2, v1

    .line 206
    .end local v1           #count:I
    .end local v3           #counter:Lorg/apache/xalan/transformer/Counter;
    .end local v5           #i:I
    .local v2, count:I
    :goto_1
    return v2

    .line 140
    .end local v2           #count:I
    .restart local v1       #count:I
    .restart local v3       #counter:Lorg/apache/xalan/transformer/Counter;
    .restart local v5       #i:I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 156
    .end local v3           #counter:Lorg/apache/xalan/transformer/Counter;
    :cond_1
    const/4 v1, 0x0

    .line 157
    iget-object v8, p0, Lorg/apache/xalan/transformer/CountersTable;->m_newFound:Lorg/apache/xpath/NodeSetDTM;

    if-nez v8, :cond_2

    .line 158
    new-instance v8, Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/xpath/NodeSetDTM;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    iput-object v8, p0, Lorg/apache/xalan/transformer/CountersTable;->m_newFound:Lorg/apache/xpath/NodeSetDTM;

    .line 160
    :cond_2
    :goto_2
    if-eq v10, v7, :cond_6

    .line 167
    if-eqz v1, :cond_5

    .line 169
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v6, :cond_5

    .line 171
    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xalan/transformer/Counter;

    .line 172
    .restart local v3       #counter:Lorg/apache/xalan/transformer/Counter;
    iget-object v8, v3, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {v8}, Lorg/apache/xpath/NodeSetDTM;->size()I

    move-result v0

    .line 174
    .local v0, cacheLen:I
    if-lez v0, :cond_4

    iget-object v8, v3, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    add-int/lit8 v9, v0, -0x1

    invoke-virtual {v8, v9}, Lorg/apache/xpath/NodeSetDTM;->elementAt(I)I

    move-result v8

    if-ne v8, v7, :cond_4

    .line 178
    iget v8, v3, Lorg/apache/xalan/transformer/Counter;->m_countNodesStartCount:I

    add-int/2addr v8, v0

    add-int/2addr v1, v8

    .line 180
    if-lez v0, :cond_3

    .line 181
    iget-object v8, v3, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    iget-object v9, p0, Lorg/apache/xalan/transformer/CountersTable;->m_newFound:Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {p0, v8, v9}, Lorg/apache/xalan/transformer/CountersTable;->appendBtoFList(Lorg/apache/xpath/NodeSetDTM;Lorg/apache/xpath/NodeSetDTM;)V

    .line 183
    :cond_3
    iget-object v8, p0, Lorg/apache/xalan/transformer/CountersTable;->m_newFound:Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {v8}, Lorg/apache/xpath/NodeSetDTM;->removeAllElements()V

    move v2, v1

    .line 185
    .end local v1           #count:I
    .restart local v2       #count:I
    goto :goto_1

    .line 169
    .end local v2           #count:I
    .restart local v1       #count:I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 190
    .end local v0           #cacheLen:I
    .end local v3           #counter:Lorg/apache/xalan/transformer/Counter;
    :cond_5
    iget-object v8, p0, Lorg/apache/xalan/transformer/CountersTable;->m_newFound:Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {v8, v7}, Lorg/apache/xpath/NodeSetDTM;->addElement(I)V

    .line 192
    add-int/lit8 v1, v1, 0x1

    .line 161
    invoke-virtual {p2, p1, v7}, Lorg/apache/xalan/templates/ElemNumber;->getPreviousNode(Lorg/apache/xpath/XPathContext;I)I

    move-result v7

    goto :goto_2

    .line 197
    :cond_6
    new-instance v3, Lorg/apache/xalan/transformer/Counter;

    new-instance v8, Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/xpath/NodeSetDTM;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    invoke-direct {v3, p2, v8}, Lorg/apache/xalan/transformer/Counter;-><init>(Lorg/apache/xalan/templates/ElemNumber;Lorg/apache/xpath/NodeSetDTM;)V

    .line 199
    .restart local v3       #counter:Lorg/apache/xalan/transformer/Counter;
    iget v8, p0, Lorg/apache/xalan/transformer/CountersTable;->m_countersMade:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/apache/xalan/transformer/CountersTable;->m_countersMade:I

    .line 201
    iget-object v8, v3, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    iget-object v9, p0, Lorg/apache/xalan/transformer/CountersTable;->m_newFound:Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {p0, v8, v9}, Lorg/apache/xalan/transformer/CountersTable;->appendBtoFList(Lorg/apache/xpath/NodeSetDTM;Lorg/apache/xpath/NodeSetDTM;)V

    .line 202
    iget-object v8, p0, Lorg/apache/xalan/transformer/CountersTable;->m_newFound:Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {v8}, Lorg/apache/xpath/NodeSetDTM;->removeAllElements()V

    .line 203
    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .end local v3           #counter:Lorg/apache/xalan/transformer/Counter;
    .end local v5           #i:I
    :cond_7
    move v2, v1

    .line 206
    .end local v1           #count:I
    .restart local v2       #count:I
    goto :goto_1
.end method

.method getCounters(Lorg/apache/xalan/templates/ElemNumber;)Ljava/util/Vector;
    .locals 1
    .parameter "numberElem"

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 63
    .local v0, counters:Ljava/util/Vector;
    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xalan/transformer/CountersTable;->putElemNumber(Lorg/apache/xalan/templates/ElemNumber;)Ljava/util/Vector;

    move-result-object v0

    .end local v0           #counters:Ljava/util/Vector;
    :cond_0
    return-object v0
.end method

.method putElemNumber(Lorg/apache/xalan/templates/ElemNumber;)Ljava/util/Vector;
    .locals 1
    .parameter "numberElem"

    .prologue
    .line 78
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 80
    .local v0, counters:Ljava/util/Vector;
    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-object v0
.end method
