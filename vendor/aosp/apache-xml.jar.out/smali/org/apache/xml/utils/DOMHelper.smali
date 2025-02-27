.class public Lorg/apache/xml/utils/DOMHelper;
.super Ljava/lang/Object;
.source "DOMHelper.java"


# static fields
.field protected static final m_NSInfoNullNoAncestorXMLNS:Lorg/apache/xml/utils/NSInfo;

.field protected static final m_NSInfoNullWithXMLNS:Lorg/apache/xml/utils/NSInfo;

.field protected static final m_NSInfoNullWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;

.field protected static final m_NSInfoUnProcNoAncestorXMLNS:Lorg/apache/xml/utils/NSInfo;

.field protected static final m_NSInfoUnProcWithXMLNS:Lorg/apache/xml/utils/NSInfo;

.field protected static final m_NSInfoUnProcWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;


# instance fields
.field protected m_DOMFactory:Lorg/w3c/dom/Document;

.field m_NSInfos:Ljava/util/Hashtable;

.field protected m_candidateNoAncestorXMLNS:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 577
    new-instance v0, Lorg/apache/xml/utils/NSInfo;

    invoke-direct {v0, v1, v2}, Lorg/apache/xml/utils/NSInfo;-><init>(ZZ)V

    sput-object v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoUnProcWithXMLNS:Lorg/apache/xml/utils/NSInfo;

    .line 582
    new-instance v0, Lorg/apache/xml/utils/NSInfo;

    invoke-direct {v0, v1, v1}, Lorg/apache/xml/utils/NSInfo;-><init>(ZZ)V

    sput-object v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoUnProcWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;

    .line 587
    new-instance v0, Lorg/apache/xml/utils/NSInfo;

    invoke-direct {v0, v1, v1, v3}, Lorg/apache/xml/utils/NSInfo;-><init>(ZZI)V

    sput-object v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoUnProcNoAncestorXMLNS:Lorg/apache/xml/utils/NSInfo;

    .line 592
    new-instance v0, Lorg/apache/xml/utils/NSInfo;

    invoke-direct {v0, v2, v2}, Lorg/apache/xml/utils/NSInfo;-><init>(ZZ)V

    sput-object v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullWithXMLNS:Lorg/apache/xml/utils/NSInfo;

    .line 597
    new-instance v0, Lorg/apache/xml/utils/NSInfo;

    invoke-direct {v0, v2, v1}, Lorg/apache/xml/utils/NSInfo;-><init>(ZZ)V

    sput-object v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;

    .line 602
    new-instance v0, Lorg/apache/xml/utils/NSInfo;

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/xml/utils/NSInfo;-><init>(ZZI)V

    sput-object v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullNoAncestorXMLNS:Lorg/apache/xml/utils/NSInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    .line 607
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    .line 1230
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/utils/DOMHelper;->m_DOMFactory:Lorg/w3c/dom/Document;

    return-void
.end method

.method public static createDocument()Lorg/w3c/dom/Document;
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/xml/utils/DOMHelper;->createDocument(Z)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public static createDocument(Z)Lorg/w3c/dom/Document;
    .locals 7
    .parameter "isSecureProcessing"

    .prologue
    .line 85
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 87
    .local v0, dfactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 106
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 107
    .local v1, docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 109
    .local v2, outNode:Lorg/w3c/dom/Document;
    return-object v2

    .line 111
    .end local v0           #dfactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v1           #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #outNode:Lorg/w3c/dom/Document;
    :catch_0
    move-exception v3

    .line 113
    .local v3, pce:Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "ER_CREATEDOCUMENT_NOT_SUPPORTED"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getNodeData(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 3
    .parameter "node"

    .prologue
    .line 1276
    invoke-static {}, Lorg/apache/xml/utils/StringBufferPool;->get()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    .line 1281
    .local v0, buf:Lorg/apache/xml/utils/FastStringBuffer;
    :try_start_0
    invoke-static {p0, v0}, Lorg/apache/xml/utils/DOMHelper;->getNodeData(Lorg/w3c/dom/Node;Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 1283
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1287
    .local v1, s:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 1290
    return-object v1

    .line 1283
    .end local v1           #s:Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1287
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    throw v2
.end method

.method public static getNodeData(Lorg/w3c/dom/Node;Lorg/apache/xml/utils/FastStringBuffer;)V
    .locals 2
    .parameter "node"
    .parameter "buf"

    .prologue
    .line 1313
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1340
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1319
    :pswitch_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .local v0, child:Lorg/w3c/dom/Node;
    :goto_1
    if-eqz v0, :cond_0

    .line 1322
    invoke-static {v0, p1}, Lorg/apache/xml/utils/DOMHelper;->getNodeData(Lorg/w3c/dom/Node;Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 1320
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_1

    .line 1328
    .end local v0           #child:Lorg/w3c/dom/Node;
    :pswitch_2
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 1331
    :pswitch_3
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 1313
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 9
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1013
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    .line 1015
    .local v2, nodeType:S
    const/4 v6, 0x2

    if-ne v6, v2, :cond_2

    .line 1017
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 1035
    .local v0, doc:Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v1

    .line 1036
    .local v1, impl:Lorg/w3c/dom/DOMImplementation;
    if-eqz v1, :cond_0

    const-string v6, "Core"

    const-string v7, "2.0"

    invoke-interface {v1, v6, v7}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1038
    check-cast p0, Lorg/w3c/dom/Attr;

    .end local p0
    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v3

    .local v3, parent:Lorg/w3c/dom/Node;
    move-object v4, v3

    .line 1067
    .end local v0           #doc:Lorg/w3c/dom/Document;
    .end local v1           #impl:Lorg/w3c/dom/DOMImplementation;
    .end local v3           #parent:Lorg/w3c/dom/Node;
    .local v4, parent:Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 1044
    .end local v4           #parent:Ljava/lang/Object;
    .restart local v0       #doc:Lorg/w3c/dom/Document;
    .restart local v1       #impl:Lorg/w3c/dom/DOMImplementation;
    .restart local p0
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    .line 1046
    .local v5, rootElem:Lorg/w3c/dom/Element;
    if-nez v5, :cond_1

    .line 1048
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "ER_CHILD_HAS_NO_OWNER_DOCUMENT_ELEMENT"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1054
    :cond_1
    invoke-static {v5, p0}, Lorg/apache/xml/utils/DOMHelper;->locateAttrParent(Lorg/w3c/dom/Element;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    .end local v0           #doc:Lorg/w3c/dom/Document;
    .end local v1           #impl:Lorg/w3c/dom/DOMImplementation;
    .end local v5           #rootElem:Lorg/w3c/dom/Element;
    .restart local v3       #parent:Lorg/w3c/dom/Node;
    :goto_1
    move-object v4, v3

    .line 1067
    .restart local v4       #parent:Ljava/lang/Object;
    goto :goto_0

    .line 1059
    .end local v3           #parent:Lorg/w3c/dom/Node;
    .end local v4           #parent:Ljava/lang/Object;
    :cond_2
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v3

    .restart local v3       #parent:Lorg/w3c/dom/Node;
    goto :goto_1
.end method

.method public static isNodeAfter(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z
    .locals 13
    .parameter "node1"
    .parameter "node2"

    .prologue
    const/4 v11, 0x1

    .line 206
    if-eq p0, p1, :cond_0

    invoke-static {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v12

    if-eqz v12, :cond_2

    :cond_0
    move v2, v11

    .line 329
    :cond_1
    :goto_0
    return v2

    .line 210
    :cond_2
    const/4 v2, 0x1

    .line 212
    .local v2, isNodeAfter:Z
    invoke-static {p0}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 213
    .local v5, parent1:Lorg/w3c/dom/Node;
    invoke-static {p1}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 216
    .local v6, parent2:Lorg/w3c/dom/Node;
    if-eq v5, v6, :cond_3

    invoke-static {v5, v6}, Lorg/apache/xml/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 218
    :cond_3
    if-eqz v5, :cond_1

    .line 219
    invoke-static {v5, p0, p1}, Lorg/apache/xml/utils/DOMHelper;->isNodeAfterSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v2

    goto :goto_0

    .line 245
    :cond_4
    const/4 v3, 0x2

    .local v3, nParents1:I
    const/4 v4, 0x2

    .line 247
    .local v4, nParents2:I
    :goto_1
    if-eqz v5, :cond_5

    .line 249
    add-int/lit8 v3, v3, 0x1

    .line 251
    invoke-static {v5}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    goto :goto_1

    .line 254
    :cond_5
    :goto_2
    if-eqz v6, :cond_6

    .line 256
    add-int/lit8 v4, v4, 0x1

    .line 258
    invoke-static {v6}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    goto :goto_2

    .line 263
    :cond_6
    move-object v9, p0

    .local v9, startNode1:Lorg/w3c/dom/Node;
    move-object v10, p1

    .line 267
    .local v10, startNode2:Lorg/w3c/dom/Node;
    if-ge v3, v4, :cond_7

    .line 270
    sub-int v0, v4, v3

    .line 272
    .local v0, adjust:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, v0, :cond_8

    .line 274
    invoke-static {v10}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 277
    .end local v0           #adjust:I
    .end local v1           #i:I
    :cond_7
    if-le v3, v4, :cond_8

    .line 280
    sub-int v0, v3, v4

    .line 282
    .restart local v0       #adjust:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    if-ge v1, v0, :cond_8

    .line 284
    invoke-static {v9}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 288
    .end local v0           #adjust:I
    .end local v1           #i:I
    :cond_8
    const/4 v7, 0x0

    .local v7, prevChild1:Lorg/w3c/dom/Node;
    const/4 v8, 0x0

    .line 291
    .local v8, prevChild2:Lorg/w3c/dom/Node;
    :goto_5
    if-eqz v9, :cond_1

    .line 293
    if-eq v9, v10, :cond_9

    invoke-static {v9, v10}, Lorg/apache/xml/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 295
    :cond_9
    if-nez v7, :cond_b

    .line 299
    if-ge v3, v4, :cond_a

    move v2, v11

    .line 301
    :goto_6
    goto :goto_0

    .line 299
    :cond_a
    const/4 v2, 0x0

    goto :goto_6

    .line 306
    :cond_b
    invoke-static {v9, v7, v8}, Lorg/apache/xml/utils/DOMHelper;->isNodeAfterSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v2

    .line 309
    goto :goto_0

    .line 314
    :cond_c
    move-object v7, v9

    .line 315
    invoke-static {v9}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 316
    move-object v8, v10

    .line 317
    invoke-static {v10}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v10

    goto :goto_5
.end method

.method private static isNodeAfterSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z
    .locals 10
    .parameter "parent"
    .parameter "child1"
    .parameter "child2"

    .prologue
    const/4 v9, 0x2

    .line 365
    const/4 v7, 0x0

    .line 366
    .local v7, isNodeAfterSibling:Z
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    .line 367
    .local v1, child1type:S
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    .line 369
    .local v2, child2type:S
    if-eq v9, v1, :cond_1

    if-ne v9, v2, :cond_1

    .line 374
    const/4 v7, 0x0

    .line 465
    :cond_0
    :goto_0
    return v7

    .line 376
    :cond_1
    if-ne v9, v1, :cond_2

    if-eq v9, v2, :cond_2

    .line 381
    const/4 v7, 0x1

    goto :goto_0

    .line 383
    :cond_2
    if-ne v9, v1, :cond_9

    .line 385
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 386
    .local v3, children:Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v8

    .line 387
    .local v8, nNodes:I
    const/4 v4, 0x0

    .local v4, found1:Z
    const/4 v5, 0x0

    .line 390
    .local v5, found2:Z
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v8, :cond_0

    .line 392
    invoke-interface {v3, v6}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 394
    .local v0, child:Lorg/w3c/dom/Node;
    if-eq p1, v0, :cond_3

    invoke-static {p1, v0}, Lorg/apache/xml/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 396
    :cond_3
    if-eqz v5, :cond_4

    .line 398
    const/4 v7, 0x0

    .line 400
    goto :goto_0

    .line 403
    :cond_4
    const/4 v4, 0x1

    .line 390
    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 405
    :cond_6
    if-eq p2, v0, :cond_7

    invoke-static {p2, v0}, Lorg/apache/xml/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 407
    :cond_7
    if-eqz v4, :cond_8

    .line 409
    const/4 v7, 0x1

    .line 411
    goto :goto_0

    .line 414
    :cond_8
    const/4 v5, 0x1

    goto :goto_2

    .line 431
    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v3           #children:Lorg/w3c/dom/NamedNodeMap;
    .end local v4           #found1:Z
    .end local v5           #found2:Z
    .end local v6           #i:I
    .end local v8           #nNodes:I
    :cond_9
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 432
    .restart local v0       #child:Lorg/w3c/dom/Node;
    const/4 v4, 0x0

    .restart local v4       #found1:Z
    const/4 v5, 0x0

    .line 434
    .restart local v5       #found2:Z
    :goto_3
    if-eqz v0, :cond_0

    .line 438
    if-eq p1, v0, :cond_a

    invoke-static {p1, v0}, Lorg/apache/xml/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 440
    :cond_a
    if-eqz v5, :cond_b

    .line 442
    const/4 v7, 0x0

    .line 444
    goto :goto_0

    .line 447
    :cond_b
    const/4 v4, 0x1

    .line 461
    :cond_c
    :goto_4
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_3

    .line 449
    :cond_d
    if-eq p2, v0, :cond_e

    invoke-static {p2, v0}, Lorg/apache/xml/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 451
    :cond_e
    if-eqz v4, :cond_f

    .line 453
    const/4 v7, 0x1

    .line 455
    goto :goto_0

    .line 458
    :cond_f
    const/4 v5, 0x1

    goto :goto_4
.end method

.method public static isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z
    .locals 1
    .parameter "node1"
    .parameter "node2"

    .prologue
    .line 341
    instance-of v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    if-eqz v0, :cond_0

    .line 342
    check-cast p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    .end local p0
    check-cast p1, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->equals(Lorg/w3c/dom/Node;)Z

    move-result v0

    .line 344
    :goto_0
    return v0

    .restart local p0
    .restart local p1
    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static locateAttrParent(Lorg/w3c/dom/Element;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 5
    .parameter "elem"
    .parameter "attr"

    .prologue
    .line 1197
    const/4 v2, 0x0

    .line 1204
    .local v2, parent:Lorg/w3c/dom/Node;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 1205
    .local v0, check:Lorg/w3c/dom/Attr;
    if-ne v0, p1, :cond_0

    .line 1206
    move-object v2, p0

    .line 1208
    :cond_0
    if-nez v2, :cond_1

    .line 1210
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .local v1, node:Lorg/w3c/dom/Node;
    :goto_0
    if-eqz v1, :cond_1

    .line 1213
    const/4 v3, 0x1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v3, v4, :cond_2

    move-object v3, v1

    .line 1215
    check-cast v3, Lorg/w3c/dom/Element;

    invoke-static {v3, p1}, Lorg/apache/xml/utils/DOMHelper;->locateAttrParent(Lorg/w3c/dom/Element;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1217
    if-eqz v2, :cond_2

    .line 1223
    .end local v1           #node:Lorg/w3c/dom/Node;
    :cond_1
    return-object v2

    .line 1211
    .restart local v1       #node:Lorg/w3c/dom/Node;
    :cond_2
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getDOMFactory()Lorg/w3c/dom/Document;
    .locals 1

    .prologue
    .line 1254
    iget-object v0, p0, Lorg/apache/xml/utils/DOMHelper;->m_DOMFactory:Lorg/w3c/dom/Document;

    if-nez v0, :cond_0

    .line 1256
    invoke-static {}, Lorg/apache/xml/utils/DOMHelper;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/utils/DOMHelper;->m_DOMFactory:Lorg/w3c/dom/Document;

    .line 1259
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/DOMHelper;->m_DOMFactory:Lorg/w3c/dom/Document;

    return-object v0
.end method

.method public getElementByID(Ljava/lang/String;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 1
    .parameter "id"
    .parameter "doc"

    .prologue
    .line 1090
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpandedAttributeName(Lorg/w3c/dom/Attr;)Ljava/lang/String;
    .locals 3
    .parameter "attr"

    .prologue
    .line 874
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 876
    .local v0, namespace:Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getExpandedElementName(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 3
    .parameter "elem"

    .prologue
    .line 852
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, namespace:Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getLevel(Lorg/w3c/dom/Node;)S
    .locals 2
    .parameter "n"

    .prologue
    .line 483
    const/4 v0, 0x1

    .line 485
    .local v0, level:S
    :goto_0
    invoke-static {p1}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 487
    add-int/lit8 v1, v0, 0x1

    int-to-short v0, v1

    goto :goto_0

    .line 490
    :cond_0
    return v0
.end method

.method public getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 3
    .parameter "n"

    .prologue
    .line 831
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    .line 832
    .local v1, qname:Ljava/lang/String;
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 834
    .local v0, index:I
    if-gez v0, :cond_0

    .end local v1           #qname:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1       #qname:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 8
    .parameter "prefix"
    .parameter "namespaceContext"

    .prologue
    const/4 v7, 0x1

    .line 516
    move-object v3, p2

    .line 517
    .local v3, parent:Lorg/w3c/dom/Node;
    const/4 v2, 0x0

    .line 519
    .local v2, namespace:Ljava/lang/String;
    const-string v5, "xml"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 521
    const-string v2, "http://www.w3.org/XML/1998/namespace"

    .line 567
    :cond_0
    :goto_0
    return-object v2

    .line 523
    :cond_1
    const-string v5, "xmlns"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 530
    const-string v2, "http://www.w3.org/2000/xmlns/"

    goto :goto_0

    .line 535
    :cond_2
    const-string v5, ""

    if-ne p1, v5, :cond_4

    const-string v1, "xmlns"

    .line 541
    .local v1, declname:Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    .local v4, type:I
    if-eq v4, v7, :cond_3

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 544
    :cond_3
    if-ne v4, v7, :cond_5

    move-object v5, v3

    .line 555
    check-cast v5, Lorg/w3c/dom/Element;

    invoke-interface {v5, v1}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 556
    .local v0, attr:Lorg/w3c/dom/Attr;
    if-eqz v0, :cond_5

    .line 558
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 559
    goto :goto_0

    .line 535
    .end local v0           #attr:Lorg/w3c/dom/Attr;
    .end local v1           #declname:Ljava/lang/String;
    .end local v4           #type:I
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "xmlns:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 563
    .restart local v1       #declname:Ljava/lang/String;
    .restart local v4       #type:I
    :cond_5
    invoke-static {v3}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    goto :goto_1
.end method

.method public getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 28
    .parameter "n"

    .prologue
    .line 627
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v20

    .line 629
    .local v20, ntype:S
    const/16 v25, 0x2

    move/from16 v0, v25

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 633
    .local v19, nsObj:Ljava/lang/Object;
    if-nez v19, :cond_1

    const/16 v18, 0x0

    .line 634
    .end local v19           #nsObj:Ljava/lang/Object;
    .local v18, nsInfo:Lorg/apache/xml/utils/NSInfo;
    :goto_0
    if-nez v18, :cond_2

    const/4 v8, 0x0

    .line 642
    .local v8, hasProcessedNS:Z
    :goto_1
    if-eqz v8, :cond_4

    .line 644
    move-object/from16 v0, v18

    iget-object v14, v0, Lorg/apache/xml/utils/NSInfo;->m_namespace:Ljava/lang/String;

    .local v14, namespaceOfPrefix:Ljava/lang/String;
    :cond_0
    :goto_2
    move-object v15, v14

    .line 816
    .end local v14           #namespaceOfPrefix:Ljava/lang/String;
    .local v15, namespaceOfPrefix:Ljava/lang/String;
    :goto_3
    return-object v15

    .line 633
    .end local v8           #hasProcessedNS:Z
    .end local v15           #namespaceOfPrefix:Ljava/lang/String;
    .end local v18           #nsInfo:Lorg/apache/xml/utils/NSInfo;
    .restart local v19       #nsObj:Ljava/lang/Object;
    :cond_1
    check-cast v19, Lorg/apache/xml/utils/NSInfo;

    move-object/from16 v18, v19

    goto :goto_0

    .line 634
    .end local v19           #nsObj:Ljava/lang/Object;
    .restart local v18       #nsInfo:Lorg/apache/xml/utils/NSInfo;
    :cond_2
    move-object/from16 v0, v18

    iget-boolean v8, v0, Lorg/apache/xml/utils/NSInfo;->m_hasProcessedNS:Z

    goto :goto_1

    .line 638
    .end local v18           #nsInfo:Lorg/apache/xml/utils/NSInfo;
    :cond_3
    const/4 v8, 0x0

    .line 639
    .restart local v8       #hasProcessedNS:Z
    const/16 v18, 0x0

    .restart local v18       #nsInfo:Lorg/apache/xml/utils/NSInfo;
    goto :goto_1

    .line 648
    :cond_4
    const/4 v14, 0x0

    .line 650
    .restart local v14       #namespaceOfPrefix:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v17

    .line 651
    .local v17, nodeName:Ljava/lang/String;
    const/16 v25, 0x3a

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 654
    .local v10, indexOfNSSep:I
    const/16 v25, 0x2

    move/from16 v0, v25

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 656
    if-lez v10, :cond_6

    .line 658
    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 674
    .local v24, prefix:Ljava/lang/String;
    :goto_4
    const/4 v4, 0x0

    .line 675
    .local v4, ancestorsHaveXMLNS:Z
    const/4 v13, 0x0

    .line 677
    .local v13, nHasXMLNS:Z
    const-string v25, "xml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 679
    const-string v14, "http://www.w3.org/XML/1998/namespace"

    .line 793
    :cond_5
    :goto_5
    const/16 v25, 0x2

    move/from16 v0, v25

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 795
    if-nez v14, :cond_1c

    .line 797
    if-eqz v4, :cond_1b

    .line 799
    if-eqz v13, :cond_1a

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    sget-object v26, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullWithXMLNS:Lorg/apache/xml/utils/NSInfo;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v4           #ancestorsHaveXMLNS:Z
    .end local v13           #nHasXMLNS:Z
    .end local v24           #prefix:Ljava/lang/String;
    :cond_6
    move-object v15, v14

    .line 665
    .end local v14           #namespaceOfPrefix:Ljava/lang/String;
    .restart local v15       #namespaceOfPrefix:Ljava/lang/String;
    goto :goto_3

    .line 670
    .end local v15           #namespaceOfPrefix:Ljava/lang/String;
    .restart local v14       #namespaceOfPrefix:Ljava/lang/String;
    :cond_7
    if-ltz v10, :cond_8

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .restart local v24       #prefix:Ljava/lang/String;
    :goto_6
    goto :goto_4

    .end local v24           #prefix:Ljava/lang/String;
    :cond_8
    const-string v24, ""

    goto :goto_6

    .line 684
    .restart local v4       #ancestorsHaveXMLNS:Z
    .restart local v13       #nHasXMLNS:Z
    .restart local v24       #prefix:Ljava/lang/String;
    :cond_9
    move-object/from16 v22, p1

    .line 686
    .local v22, parent:Lorg/w3c/dom/Node;
    :cond_a
    :goto_7
    if-eqz v22, :cond_b

    if-nez v14, :cond_b

    .line 688
    if-eqz v18, :cond_d

    move-object/from16 v0, v18

    iget v0, v0, Lorg/apache/xml/utils/NSInfo;->m_ancestorHasXMLNSAttrs:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    .line 765
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->size()I

    move-result v12

    .line 767
    .local v12, nCandidates:I
    if-lez v12, :cond_5

    .line 769
    if-nez v4, :cond_19

    if-nez v22, :cond_19

    .line 771
    const/4 v9, 0x0

    .local v9, i:I
    :goto_8
    if-ge v9, v12, :cond_19

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    move-object/from16 v25, v0

    add-int/lit8 v26, v9, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    .line 776
    .local v6, candidateInfo:Ljava/lang/Object;
    sget-object v25, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoUnProcWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;

    move-object/from16 v0, v25

    if-ne v6, v0, :cond_18

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v26

    sget-object v27, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoUnProcNoAncestorXMLNS:Lorg/apache/xml/utils/NSInfo;

    invoke-virtual/range {v25 .. v27}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    :cond_c
    :goto_9
    add-int/lit8 v9, v9, 0x2

    goto :goto_8

    .line 695
    .end local v6           #candidateInfo:Ljava/lang/Object;
    .end local v9           #i:I
    .end local v12           #nCandidates:I
    :cond_d
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v23

    .line 697
    .local v23, parentType:I
    if-eqz v18, :cond_e

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lorg/apache/xml/utils/NSInfo;->m_hasXMLNSAttrs:Z

    move/from16 v25, v0

    if-eqz v25, :cond_12

    .line 699
    :cond_e
    const/4 v7, 0x0

    .line 701
    .local v7, elementHasXMLNS:Z
    const/16 v25, 0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_11

    .line 703
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v16

    .line 705
    .local v16, nnm:Lorg/w3c/dom/NamedNodeMap;
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_a
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v25

    move/from16 v0, v25

    if-ge v9, v0, :cond_11

    .line 707
    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 708
    .local v5, attr:Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 710
    .local v3, aname:Ljava/lang/String;
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v25

    const/16 v26, 0x78

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_14

    .line 712
    const-string v25, "xmlns:"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    .line 714
    .local v11, isPrefix:Z
    const-string v25, "xmlns"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_f

    if-eqz v11, :cond_14

    .line 716
    :cond_f
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_10

    .line 717
    const/4 v13, 0x1

    .line 719
    :cond_10
    const/4 v7, 0x1

    .line 720
    const/4 v4, 0x1

    .line 722
    if-eqz v11, :cond_13

    const/16 v25, 0x6

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    .line 724
    .local v21, p:Ljava/lang/String;
    :goto_b
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_14

    .line 726
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    .line 735
    .end local v3           #aname:Ljava/lang/String;
    .end local v5           #attr:Lorg/w3c/dom/Node;
    .end local v9           #i:I
    .end local v11           #isPrefix:Z
    .end local v16           #nnm:Lorg/w3c/dom/NamedNodeMap;
    .end local v21           #p:Ljava/lang/String;
    :cond_11
    const/16 v25, 0x2

    move/from16 v0, v25

    move/from16 v1, v23

    if-eq v0, v1, :cond_12

    if-nez v18, :cond_12

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_12

    .line 738
    if-eqz v7, :cond_15

    sget-object v18, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoUnProcWithXMLNS:Lorg/apache/xml/utils/NSInfo;

    .line 741
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    .end local v7           #elementHasXMLNS:Z
    :cond_12
    const/16 v25, 0x2

    move/from16 v0, v25

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    .line 747
    invoke-static/range {v22 .. v22}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v22

    .line 757
    :goto_d
    if-eqz v22, :cond_a

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 761
    .restart local v19       #nsObj:Ljava/lang/Object;
    if-nez v19, :cond_17

    const/16 v18, 0x0

    .line 762
    .end local v19           #nsObj:Ljava/lang/Object;
    :goto_e
    goto/16 :goto_7

    .line 722
    .restart local v3       #aname:Ljava/lang/String;
    .restart local v5       #attr:Lorg/w3c/dom/Node;
    .restart local v7       #elementHasXMLNS:Z
    .restart local v9       #i:I
    .restart local v11       #isPrefix:Z
    .restart local v16       #nnm:Lorg/w3c/dom/NamedNodeMap;
    :cond_13
    const-string v21, ""

    goto :goto_b

    .line 705
    .end local v11           #isPrefix:Z
    :cond_14
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_a

    .line 738
    .end local v3           #aname:Ljava/lang/String;
    .end local v5           #attr:Lorg/w3c/dom/Node;
    .end local v9           #i:I
    .end local v16           #nnm:Lorg/w3c/dom/NamedNodeMap;
    :cond_15
    sget-object v18, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoUnProcWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;

    goto :goto_c

    .line 751
    .end local v7           #elementHasXMLNS:Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 754
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v22

    goto :goto_d

    .line 761
    .restart local v19       #nsObj:Ljava/lang/Object;
    :cond_17
    check-cast v19, Lorg/apache/xml/utils/NSInfo;

    move-object/from16 v18, v19

    goto :goto_e

    .line 781
    .end local v19           #nsObj:Ljava/lang/Object;
    .end local v23           #parentType:I
    .restart local v6       #candidateInfo:Ljava/lang/Object;
    .restart local v9       #i:I
    .restart local v12       #nCandidates:I
    :cond_18
    sget-object v25, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;

    move-object/from16 v0, v25

    if-ne v6, v0, :cond_c

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v26

    sget-object v27, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullNoAncestorXMLNS:Lorg/apache/xml/utils/NSInfo;

    invoke-virtual/range {v25 .. v27}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 789
    .end local v6           #candidateInfo:Ljava/lang/Object;
    .end local v9           #i:I
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->removeAllElements()V

    goto/16 :goto_5

    .line 802
    .end local v12           #nCandidates:I
    .end local v22           #parent:Lorg/w3c/dom/Node;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    sget-object v26, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 806
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    sget-object v26, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullNoAncestorXMLNS:Lorg/apache/xml/utils/NSInfo;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 811
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    new-instance v26, Lorg/apache/xml/utils/NSInfo;

    move-object/from16 v0, v26

    invoke-direct {v0, v14, v13}, Lorg/apache/xml/utils/NSInfo;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2
.end method

.method public getRoot(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .parameter "node"

    .prologue
    .line 925
    const/4 v0, 0x0

    .line 927
    .local v0, root:Lorg/w3c/dom/Node;
    :goto_0
    if-eqz p1, :cond_0

    .line 929
    move-object v0, p1

    .line 930
    invoke-static {p1}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    .line 933
    :cond_0
    return-object v0
.end method

.method public getRootNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2
    .parameter "n"

    .prologue
    .line 956
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    .line 957
    .local v0, nt:I
    const/16 v1, 0x9

    if-eq v1, v0, :cond_0

    const/16 v1, 0xb

    if-ne v1, v0, :cond_1

    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .restart local p1
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    goto :goto_0
.end method

.method public getUniqueID(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 2
    .parameter "node"

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnparsedEntityURI(Ljava/lang/String;Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 6
    .parameter "name"
    .parameter "doc"

    .prologue
    .line 1131
    const-string v4, ""

    .line 1132
    .local v4, url:Ljava/lang/String;
    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v0

    .line 1134
    .local v0, doctype:Lorg/w3c/dom/DocumentType;
    if-eqz v0, :cond_2

    .line 1136
    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 1137
    .local v1, entities:Lorg/w3c/dom/NamedNodeMap;
    if-nez v1, :cond_0

    move-object v5, v4

    .line 1170
    .end local v1           #entities:Lorg/w3c/dom/NamedNodeMap;
    .end local v4           #url:Ljava/lang/String;
    .local v5, url:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 1139
    .end local v5           #url:Ljava/lang/String;
    .restart local v1       #entities:Lorg/w3c/dom/NamedNodeMap;
    .restart local v4       #url:Ljava/lang/String;
    :cond_0
    invoke-interface {v1, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Entity;

    .line 1140
    .local v2, entity:Lorg/w3c/dom/Entity;
    if-nez v2, :cond_1

    move-object v5, v4

    .line 1141
    .end local v4           #url:Ljava/lang/String;
    .restart local v5       #url:Ljava/lang/String;
    goto :goto_0

    .line 1143
    .end local v5           #url:Ljava/lang/String;
    .restart local v4       #url:Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    move-result-object v3

    .line 1145
    .local v3, notationName:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1156
    invoke-interface {v2}, Lorg/w3c/dom/Entity;->getSystemId()Ljava/lang/String;

    move-result-object v4

    .line 1158
    if-nez v4, :cond_2

    .line 1160
    invoke-interface {v2}, Lorg/w3c/dom/Entity;->getPublicId()Ljava/lang/String;

    move-result-object v4

    .end local v1           #entities:Lorg/w3c/dom/NamedNodeMap;
    .end local v2           #entity:Lorg/w3c/dom/Entity;
    .end local v3           #notationName:Ljava/lang/String;
    :cond_2
    move-object v5, v4

    .line 1170
    .end local v4           #url:Ljava/lang/String;
    .restart local v5       #url:Ljava/lang/String;
    goto :goto_0
.end method

.method public isIgnorableWhitespace(Lorg/w3c/dom/Text;)Z
    .locals 1
    .parameter "node"

    .prologue
    .line 903
    const/4 v0, 0x0

    .line 911
    .local v0, isIgnorable:Z
    return v0
.end method

.method public isNamespaceNode(Lorg/w3c/dom/Node;)Z
    .locals 4
    .parameter "n"

    .prologue
    const/4 v1, 0x0

    .line 974
    const/4 v2, 0x2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-ne v2, v3, :cond_1

    .line 976
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 978
    .local v0, attrName:Ljava/lang/String;
    const-string v2, "xmlns:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "xmlns"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 981
    .end local v0           #attrName:Ljava/lang/String;
    :cond_1
    return v1
.end method

.method public setDOMFactory(Lorg/w3c/dom/Document;)V
    .locals 0
    .parameter "domFactory"

    .prologue
    .line 1242
    iput-object p1, p0, Lorg/apache/xml/utils/DOMHelper;->m_DOMFactory:Lorg/w3c/dom/Document;

    .line 1243
    return-void
.end method

.method public shouldStripSourceNode(Lorg/w3c/dom/Node;)Z
    .locals 1
    .parameter "textNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method
