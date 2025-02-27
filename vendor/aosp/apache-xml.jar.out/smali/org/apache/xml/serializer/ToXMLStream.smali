.class public Lorg/apache/xml/serializer/ToXMLStream;
.super Lorg/apache/xml/serializer/ToStream;
.source "ToXMLStream.java"


# instance fields
.field private m_xmlcharInfo:Lorg/apache/xml/serializer/CharInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;-><init>()V

    .line 50
    sget-object v0, Lorg/apache/xml/serializer/CharInfo;->XML_ENTITIES_RESOURCE:Ljava/lang/String;

    const-string v1, "xml"

    invoke-static {v0, v1}, Lorg/apache/xml/serializer/CharInfo;->getCharInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/serializer/CharInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_xmlcharInfo:Lorg/apache/xml/serializer/CharInfo;

    .line 58
    iget-object v0, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_xmlcharInfo:Lorg/apache/xml/serializer/CharInfo;

    iput-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    .line 60
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->initCDATA()V

    .line 62
    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-direct {v0}, Lorg/apache/xml/serializer/NamespaceMappings;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    .line 64
    return-void
.end method

.method private getXMLVersion()Ljava/lang/String;
    .locals 8

    .prologue
    .line 617
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getVersion()Ljava/lang/String;

    move-result-object v3

    .line 618
    .local v3, xmlVersion:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, "1.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 620
    :cond_0
    const-string v3, "1.0"

    .line 644
    :goto_0
    return-object v3

    .line 622
    :cond_1
    const-string v4, "1.1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 624
    const-string v3, "1.1"

    goto :goto_0

    .line 628
    :cond_2
    sget-object v4, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v5, "ER_XML_VERSION_NOT_SUPPORTED"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 633
    .local v1, msg:Ljava/lang/String;
    :try_start_0
    invoke-super {p0}, Lorg/apache/xml/serializer/SerializerBase;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    .line 634
    .local v2, tran:Ljavax/xml/transform/Transformer;
    invoke-virtual {v2}, Ljavax/xml/transform/Transformer;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    .line 636
    .local v0, errHandler:Ljavax/xml/transform/ErrorListener;
    if-eqz v0, :cond_3

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    if-eqz v4, :cond_3

    .line 637
    new-instance v4, Ljavax/xml/transform/TransformerException;

    iget-object v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {v4, v1, v5}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v0, v4}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    .end local v0           #errHandler:Ljavax/xml/transform/ErrorListener;
    .end local v2           #tran:Ljavax/xml/transform/Transformer;
    :goto_1
    const-string v3, "1.0"

    goto :goto_0

    .line 639
    .restart local v0       #errHandler:Ljavax/xml/transform/ErrorListener;
    .restart local v2       #tran:Ljavax/xml/transform/Transformer;
    :cond_3
    :try_start_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 641
    .end local v0           #errHandler:Ljavax/xml/transform/ErrorListener;
    .end local v2           #tran:Ljavax/xml/transform/Transformer;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private resetToXMLStream()V
    .locals 0

    .prologue
    .line 603
    return-void
.end method


# virtual methods
.method public CopyFrom(Lorg/apache/xml/serializer/ToXMLStream;)V
    .locals 2
    .parameter "xmlListener"

    .prologue
    .line 74
    iget-object v1, p1, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToStream;->setWriter(Ljava/io/Writer;)V

    .line 78
    invoke-virtual {p1}, Lorg/apache/xml/serializer/SerializerBase;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, encoding:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToStream;->setEncoding(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Lorg/apache/xml/serializer/SerializerBase;->getOmitXMLDeclaration()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/SerializerBase;->setOmitXMLDeclaration(Z)V

    .line 83
    iget-boolean v1, p1, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    .line 84
    iget-object v1, p1, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    iput-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    .line 85
    iget-boolean v1, p1, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    .line 86
    iget-boolean v1, p1, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    .line 87
    invoke-virtual {p1}, Lorg/apache/xml/serializer/ToStream;->getIndentAmount()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToStream;->setIndentAmount(I)V

    .line 88
    iget-boolean v1, p1, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z

    .line 89
    iget-boolean v1, p1, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    .line 90
    invoke-virtual {p1}, Lorg/apache/xml/serializer/SerializerBase;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/SerializerBase;->setDoctypeSystem(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Lorg/apache/xml/serializer/SerializerBase;->getDoctypePublic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/SerializerBase;->setDoctypePublic(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Lorg/apache/xml/serializer/SerializerBase;->getStandalone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/SerializerBase;->setStandalone(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Lorg/apache/xml/serializer/SerializerBase;->getMediaType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/SerializerBase;->setMediaType(Ljava/lang/String;)V

    .line 94
    iget-object v1, p1, Lorg/apache/xml/serializer/ToStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    iput-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_encodingInfo:Lorg/apache/xml/serializer/EncodingInfo;

    .line 95
    iget-boolean v1, p1, Lorg/apache/xml/serializer/ToStream;->m_spaceBeforeClose:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_spaceBeforeClose:Z

    .line 96
    iget-boolean v1, p1, Lorg/apache/xml/serializer/ToStream;->m_cdataStartCalled:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_cdataStartCalled:Z

    .line 98
    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11
    .parameter "uri"
    .parameter "localName"
    .parameter "rawName"
    .parameter "type"
    .parameter "value"
    .parameter "xslAttribute"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 439
    iget-object v7, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v7, v7, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v7, :cond_1

    .line 441
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xml/serializer/ToStream;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 451
    .local v6, was_added:Z
    if-eqz v6, :cond_0

    if-nez p6, :cond_0

    const-string v7, "xmlns"

    invoke-virtual {p3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 453
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->ensureAttributesNamespaceIsDeclared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 458
    .local v3, prefixUsed:Ljava/lang/String;
    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 464
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 468
    .end local v3           #prefixUsed:Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xml/serializer/ToStream;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 511
    .end local v6           #was_added:Z
    :goto_0
    return-void

    .line 486
    :cond_1
    sget-object v7, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v8, "ER_ILLEGAL_ATTRIBUTE_POSITION"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    invoke-virtual {v7, v8, v9}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 491
    .local v2, msg:Ljava/lang/String;
    :try_start_0
    invoke-super {p0}, Lorg/apache/xml/serializer/SerializerBase;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v5

    .line 492
    .local v5, tran:Ljavax/xml/transform/Transformer;
    invoke-virtual {v5}, Ljavax/xml/transform/Transformer;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v1

    .line 496
    .local v1, errHandler:Ljavax/xml/transform/ErrorListener;
    if-eqz v1, :cond_2

    iget-object v7, p0, Lorg/apache/xml/serializer/SerializerBase;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    if-eqz v7, :cond_2

    .line 497
    new-instance v7, Ljavax/xml/transform/TransformerException;

    iget-object v8, p0, Lorg/apache/xml/serializer/SerializerBase;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {v7, v2, v8}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v1, v7}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 501
    .end local v1           #errHandler:Ljavax/xml/transform/ErrorListener;
    .end local v5           #tran:Ljavax/xml/transform/Transformer;
    :catch_0
    move-exception v0

    .line 507
    .local v0, e:Ljavax/xml/transform/TransformerException;
    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    .line 508
    .local v4, se:Lorg/xml/sax/SAXException;
    throw v4

    .line 499
    .end local v0           #e:Ljavax/xml/transform/TransformerException;
    .end local v4           #se:Lorg/xml/sax/SAXException;
    .restart local v1       #errHandler:Ljavax/xml/transform/ErrorListener;
    .restart local v5       #tran:Ljavax/xml/transform/Transformer;
    :cond_2
    :try_start_1
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public addUniqueAttribute(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "name"
    .parameter "value"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 384
    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v3, :cond_0

    .line 389
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->patchName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, patchedName:Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    .line 391
    .local v2, writer:Ljava/io/Writer;
    and-int/lit8 v3, p3, 0x1

    if-lez v3, :cond_1

    iget-object v3, p0, Lorg/apache/xml/serializer/ToXMLStream;->m_xmlcharInfo:Lorg/apache/xml/serializer/CharInfo;

    iget-boolean v3, v3, Lorg/apache/xml/serializer/CharInfo;->onlyQuotAmpLtGt:Z

    if-eqz v3, :cond_1

    .line 399
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 400
    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 401
    const-string v3, "=\""

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v2, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 403
    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 417
    .end local v1           #patchedName:Ljava/lang/String;
    .end local v2           #writer:Ljava/io/Writer;
    :cond_0
    :goto_0
    return-void

    .line 407
    .restart local v1       #patchedName:Ljava/lang/String;
    .restart local v2       #writer:Ljava/io/Writer;
    :cond_1
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 408
    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 409
    const-string v3, "=\""

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, p2, v3}, Lorg/apache/xml/serializer/ToStream;->writeAttrString(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 413
    .end local v1           #patchedName:Ljava/lang/String;
    .end local v2           #writer:Ljava/io/Writer;
    :catch_0
    move-exception v0

    .line 414
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Lorg/xml/sax/SAXException;

    invoke-direct {v3, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->flushPending()V

    .line 187
    iget-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    if-nez v1, :cond_0

    .line 191
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->outputLineSep()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->flushWriter()V

    .line 201
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v1, :cond_1

    .line 202
    invoke-super {p0}, Lorg/apache/xml/serializer/SerializerBase;->fireEndDoc()V

    .line 203
    :cond_1
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 1
    .parameter "elemName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 518
    invoke-virtual {p0, v0, v0, p1}, Lorg/apache/xml/serializer/ToStream;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method public endPreserving()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/ToStream$BoolStack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    .line 238
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/ToStream$BoolStack;->pop()Z

    move-result v0

    goto :goto_0
.end method

.method public entityReference(Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 346
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v2, :cond_0

    .line 348
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeStartTag()V

    .line 349
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    .line 354
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->shouldIndent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 355
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->indent()V

    .line 357
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    .line 358
    .local v1, writer:Ljava/io/Writer;
    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 359
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 360
    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v2, :cond_2

    .line 368
    invoke-super {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->fireEntityReference(Ljava/lang/String;)V

    .line 369
    :cond_2
    return-void

    .line 362
    .end local v1           #writer:Ljava/io/Writer;
    :catch_0
    move-exception v0

    .line 364
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 535
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 537
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/xml/serializer/ToXMLStream;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, prefix1:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-object p2, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    .line 547
    .end local v0           #prefix1:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/xml/serializer/ToStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 548
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 254
    iget-boolean v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inEntityRef:Z

    if-eqz v3, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->flushPending()V

    .line 259
    const-string v3, "javax.xml.transform.disable-output-escaping"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 261
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->startNonEscaping()V

    .line 333
    :goto_1
    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v3, :cond_0

    .line 334
    invoke-super {p0, p1, p2}, Lorg/apache/xml/serializer/SerializerBase;->fireEscapingEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_2
    const-string v3, "javax.xml.transform.enable-output-escaping"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 265
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->endNonEscaping()V

    goto :goto_1

    .line 271
    :cond_3
    :try_start_0
    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v3, :cond_9

    .line 273
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeStartTag()V

    .line 274
    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    .line 279
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->shouldIndent()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 280
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->indent()V

    .line 282
    :cond_5
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    .line 283
    .local v2, writer:Ljava/io/Writer;
    const-string v3, "<?"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-nez v3, :cond_6

    .line 288
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 290
    :cond_6
    const-string v3, "?>"

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 292
    .local v1, indexOfQLT:I
    if-ltz v1, :cond_a

    .line 296
    if-lez v1, :cond_7

    .line 298
    const/4 v3, 0x0

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 301
    :cond_7
    const-string v3, "? >"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 303
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 305
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 313
    :cond_8
    :goto_3
    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 314
    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 325
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 327
    .end local v1           #indexOfQLT:I
    .end local v2           #writer:Ljava/io/Writer;
    :catch_0
    move-exception v0

    .line 329
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Lorg/xml/sax/SAXException;

    invoke-direct {v3, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 276
    .end local v0           #e:Ljava/io/IOException;
    :cond_9
    :try_start_1
    iget-boolean v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    if-eqz v3, :cond_4

    .line 277
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToXMLStream;->startDocumentInternal()V

    goto :goto_2

    .line 310
    .restart local v1       #indexOfQLT:I
    .restart local v2       #writer:Ljava/io/Writer;
    :cond_a
    invoke-virtual {v2, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method protected pushNamespace(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "prefix"
    .parameter "uri"

    .prologue
    .line 561
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xml/serializer/NamespaceMappings;->pushNamespace(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {p0, p1, p2}, Lorg/apache/xml/serializer/ToStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    const/4 v0, 0x1

    .line 572
    :goto_0
    return v0

    .line 568
    :catch_0
    move-exception v0

    .line 572
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()Z
    .locals 2

    .prologue
    .line 583
    const/4 v0, 0x0

    .line 584
    .local v0, wasReset:Z
    invoke-super {p0}, Lorg/apache/xml/serializer/ToStream;->reset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    const/4 v0, 0x1

    .line 591
    :cond_0
    return v0
.end method

.method public startDocumentInternal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 111
    iget-boolean v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    if-eqz v5, :cond_0

    .line 113
    invoke-super {p0}, Lorg/apache/xml/serializer/SerializerBase;->startDocumentInternal()V

    .line 114
    iput-boolean v6, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    .line 116
    iget-boolean v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inEntityRef:Z

    if-eqz v5, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    .line 120
    iput-boolean v6, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z

    .line 125
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToXMLStream;->getXMLVersion()Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, version:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getOmitXMLDeclaration()Z

    move-result v5

    if-nez v5, :cond_0

    .line 128
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/xml/serializer/Encodings;->getMimeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, encoding:Ljava/lang/String;
    iget-boolean v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_standaloneWasSpecified:Z

    if-eqz v5, :cond_3

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " standalone=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getStandalone()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, standalone:Ljava/lang/String;
    :goto_1
    :try_start_0
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    .line 143
    .local v4, writer:Ljava/io/Writer;
    const-string v5, "<?xml version=\""

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 145
    const-string v5, "\" encoding=\""

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 147
    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V

    .line 148
    invoke-virtual {v4, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 149
    const-string v5, "?>"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 150
    iget-boolean v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    if-eqz v5, :cond_0

    .line 151
    iget-boolean v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_standaloneWasSpecified:Z

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getDoctypePublic()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 163
    :cond_2
    iget-object v5, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSep:[C

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    .end local v4           #writer:Ljava/io/Writer;
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Ljava/io/IOException;
    new-instance v5, Lorg/xml/sax/SAXException;

    invoke-direct {v5, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 137
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #standalone:Ljava/lang/String;
    :cond_3
    const-string v2, ""

    .restart local v2       #standalone:Ljava/lang/String;
    goto :goto_1
.end method

.method public startPreserving()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 221
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/ToStream$BoolStack;->push(Z)Z

    .line 223
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    .line 224
    return-void
.end method
