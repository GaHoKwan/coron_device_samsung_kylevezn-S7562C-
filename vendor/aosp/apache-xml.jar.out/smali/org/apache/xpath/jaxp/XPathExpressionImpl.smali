.class public Lorg/apache/xpath/jaxp/XPathExpressionImpl;
.super Ljava/lang/Object;
.source "XPathExpressionImpl.java"

# interfaces
.implements Ljavax/xml/xpath/XPathExpression;


# static fields
.field static d:Lorg/w3c/dom/Document;

.field static db:Ljavax/xml/parsers/DocumentBuilder;

.field static dbf:Ljavax/xml/parsers/DocumentBuilderFactory;


# instance fields
.field private featureSecureProcessing:Z

.field private functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

.field private prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

.field private variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

.field private xpath:Lorg/apache/xpath/XPath;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 234
    sput-object v0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 235
    sput-object v0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->db:Ljavax/xml/parsers/DocumentBuilder;

    .line 236
    sput-object v0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->d:Lorg/w3c/dom/Document;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->featureSecureProcessing:Z

    .line 68
    return-void
.end method

.method protected constructor <init>(Lorg/apache/xpath/XPath;Lorg/apache/xpath/jaxp/JAXPPrefixResolver;Ljavax/xml/xpath/XPathFunctionResolver;Ljavax/xml/xpath/XPathVariableResolver;)V
    .locals 1
    .parameter "xpath"
    .parameter "prefixResolver"
    .parameter "functionResolver"
    .parameter "variableResolver"

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->featureSecureProcessing:Z

    .line 74
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->xpath:Lorg/apache/xpath/XPath;

    .line 75
    iput-object p2, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    .line 76
    iput-object p3, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    .line 77
    iput-object p4, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    .line 78
    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->featureSecureProcessing:Z

    .line 79
    return-void
.end method

.method protected constructor <init>(Lorg/apache/xpath/XPath;Lorg/apache/xpath/jaxp/JAXPPrefixResolver;Ljavax/xml/xpath/XPathFunctionResolver;Ljavax/xml/xpath/XPathVariableResolver;Z)V
    .locals 1
    .parameter "xpath"
    .parameter "prefixResolver"
    .parameter "functionResolver"
    .parameter "variableResolver"
    .parameter "featureSecureProcessing"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->featureSecureProcessing:Z

    .line 86
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->xpath:Lorg/apache/xpath/XPath;

    .line 87
    iput-object p2, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    .line 88
    iput-object p3, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    .line 89
    iput-object p4, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    .line 90
    iput-boolean p5, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->featureSecureProcessing:Z

    .line 91
    return-void
.end method

.method private eval(Ljava/lang/Object;)Lorg/apache/xpath/objects/XObject;
    .locals 7
    .parameter "contextItem"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 105
    const/4 v3, 0x0

    .line 110
    .local v3, xpathSupport:Lorg/apache/xpath/XPathContext;
    iget-object v4, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    if-eqz v4, :cond_1

    .line 111
    new-instance v1, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;

    iget-object v4, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    iget-boolean v5, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->featureSecureProcessing:Z

    invoke-direct {v1, v4, v5}, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;-><init>(Ljavax/xml/xpath/XPathFunctionResolver;Z)V

    .line 113
    .local v1, jep:Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;
    new-instance v3, Lorg/apache/xpath/XPathContext;

    .end local v3           #xpathSupport:Lorg/apache/xpath/XPathContext;
    invoke-direct {v3, v1, v6}, Lorg/apache/xpath/XPathContext;-><init>(Ljava/lang/Object;Z)V

    .line 118
    .end local v1           #jep:Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;
    .restart local v3       #xpathSupport:Lorg/apache/xpath/XPathContext;
    :goto_0
    new-instance v4, Lorg/apache/xpath/jaxp/JAXPVariableStack;

    iget-object v5, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    invoke-direct {v4, v5}, Lorg/apache/xpath/jaxp/JAXPVariableStack;-><init>(Ljavax/xml/xpath/XPathVariableResolver;)V

    invoke-virtual {v3, v4}, Lorg/apache/xpath/XPathContext;->setVarStack(Lorg/apache/xpath/VariableStack;)V

    .line 119
    const/4 v2, 0x0

    .local v2, xobj:Lorg/apache/xpath/objects/XObject;
    move-object v0, p1

    .line 121
    check-cast v0, Lorg/w3c/dom/Node;

    .line 125
    .local v0, contextNode:Lorg/w3c/dom/Node;
    if-nez v0, :cond_0

    .line 126
    invoke-static {}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->getDummyDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 129
    :cond_0
    iget-object v4, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->xpath:Lorg/apache/xpath/XPath;

    iget-object v5, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    invoke-virtual {v4, v3, v0, v5}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;Lorg/w3c/dom/Node;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    .line 130
    return-object v2

    .line 115
    .end local v0           #contextNode:Lorg/w3c/dom/Node;
    .end local v2           #xobj:Lorg/apache/xpath/objects/XObject;
    :cond_1
    new-instance v3, Lorg/apache/xpath/XPathContext;

    .end local v3           #xpathSupport:Lorg/apache/xpath/XPathContext;
    invoke-direct {v3, v6}, Lorg/apache/xpath/XPathContext;-><init>(Z)V

    .restart local v3       #xpathSupport:Lorg/apache/xpath/XPathContext;
    goto :goto_0
.end method

.method private static getDummyDocument()Lorg/w3c/dom/Document;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 376
    :try_start_0
    sget-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    if-nez v3, :cond_0

    .line 377
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    sput-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 378
    sget-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 379
    sget-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 381
    :cond_0
    sget-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    sput-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->db:Ljavax/xml/parsers/DocumentBuilder;

    .line 383
    sget-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->db:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilder;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v0

    .line 384
    .local v0, dim:Lorg/w3c/dom/DOMImplementation;
    const-string v3, "http://java.sun.com/jaxp/xpath"

    const-string v4, "dummyroot"

    const/4 v5, 0x0

    invoke-interface {v0, v3, v4, v5}, Lorg/w3c/dom/DOMImplementation;->createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object v3

    sput-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->d:Lorg/w3c/dom/Document;

    .line 386
    sget-object v2, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->d:Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :goto_0
    return-object v2

    .line 387
    :catch_0
    move-exception v1

    .line 388
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private getResultAsType(Lorg/apache/xpath/objects/XObject;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 6
    .parameter "resultObject"
    .parameter "returnType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 344
    sget-object v2, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-virtual {p2, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v2

    .line 363
    :goto_0
    return-object v2

    .line 348
    :cond_0
    sget-object v2, Ljavax/xml/xpath/XPathConstants;->NUMBER:Ljavax/xml/namespace/QName;

    invoke-virtual {p2, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 349
    new-instance v2, Ljava/lang/Double;

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    goto :goto_0

    .line 352
    :cond_1
    sget-object v2, Ljavax/xml/xpath/XPathConstants;->BOOLEAN:Ljavax/xml/namespace/QName;

    invoke-virtual {p2, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 353
    new-instance v2, Ljava/lang/Boolean;

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->bool()Z

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_0

    .line 356
    :cond_2
    sget-object v2, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-virtual {p2, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 357
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->nodelist()Lorg/w3c/dom/NodeList;

    move-result-object v2

    goto :goto_0

    .line 360
    :cond_3
    sget-object v2, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-virtual {p2, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 361
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->nodeset()Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object v1

    .line 363
    .local v1, ni:Lorg/w3c/dom/traversal/NodeIterator;
    invoke-interface {v1}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_0

    .line 367
    .end local v1           #ni:Lorg/w3c/dom/traversal/NodeIterator;
    :cond_4
    const-string v2, "ER_UNSUPPORTED_RETURN_TYPE"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, fmsg:Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private isSupported(Ljavax/xml/namespace/QName;)Z
    .locals 1
    .parameter "returnType"

    .prologue
    .line 330
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-virtual {p1, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NUMBER:Ljavax/xml/namespace/QName;

    invoke-virtual {p1, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljavax/xml/xpath/XPathConstants;->BOOLEAN:Ljavax/xml/namespace/QName;

    invoke-virtual {p1, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-virtual {p1, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-virtual {p1, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    :cond_0
    const/4 v0, 0x1

    .line 338
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public eval(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 2
    .parameter "item"
    .parameter "returnType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->eval(Ljava/lang/Object;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    .line 100
    .local v0, resultObject:Lorg/apache/xpath/objects/XObject;
    invoke-direct {p0, v0, p2}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->getResultAsType(Lorg/apache/xpath/objects/XObject;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 8
    .parameter "item"
    .parameter "returnType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 168
    if-nez p2, :cond_0

    .line 170
    const-string v4, "ER_ARG_CANNOT_BE_NULL"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "returnType"

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, fmsg:Ljava/lang/String;
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 177
    .end local v0           #fmsg:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->isSupported(Ljavax/xml/namespace/QName;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 178
    const-string v4, "ER_UNSUPPORTED_RETURN_TYPE"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .restart local v0       #fmsg:Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 184
    .end local v0           #fmsg:Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->eval(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    return-object v4

    .line 185
    :catch_0
    move-exception v2

    .line 189
    .local v2, npe:Ljava/lang/NullPointerException;
    new-instance v4, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {v4, v2}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 190
    .end local v2           #npe:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    .line 191
    .local v3, te:Ljavax/xml/transform/TransformerException;
    invoke-virtual {v3}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object v1

    .line 192
    .local v1, nestedException:Ljava/lang/Throwable;
    instance-of v4, v1, Ljavax/xml/xpath/XPathFunctionException;

    if-eqz v4, :cond_2

    .line 193
    check-cast v1, Ljavax/xml/xpath/XPathFunctionException;

    .end local v1           #nestedException:Ljava/lang/Throwable;
    throw v1

    .line 197
    .restart local v1       #nestedException:Ljava/lang/Throwable;
    :cond_2
    new-instance v4, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {v4, v3}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public evaluate(Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 7
    .parameter "source"
    .parameter "returnType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 274
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 275
    :cond_0
    const-string v3, "ER_SOURCE_RETURN_TYPE_CANNOT_BE_NULL"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, fmsg:Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 282
    .end local v2           #fmsg:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p2}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->isSupported(Ljavax/xml/namespace/QName;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 283
    const-string v3, "ER_UNSUPPORTED_RETURN_TYPE"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 286
    .restart local v2       #fmsg:Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 289
    .end local v2           #fmsg:Ljava/lang/String;
    :cond_2
    :try_start_0
    sget-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    if-nez v3, :cond_3

    .line 290
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    sput-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 291
    sget-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 292
    sget-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 294
    :cond_3
    sget-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    sput-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->db:Ljavax/xml/parsers/DocumentBuilder;

    .line 295
    sget-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->db:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v3, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 296
    .local v0, document:Lorg/w3c/dom/Document;
    invoke-virtual {p0, v0, p2}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->eval(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 297
    .end local v0           #document:Lorg/w3c/dom/Document;
    :catch_0
    move-exception v1

    .line 298
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {v3, v1}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public evaluate(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "item"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    .line 229
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public evaluate(Lorg/xml/sax/InputSource;)Ljava/lang/String;
    .locals 1
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    .line 325
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->evaluate(Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setXPath(Lorg/apache/xpath/XPath;)V
    .locals 0
    .parameter "xpath"

    .prologue
    .line 94
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->xpath:Lorg/apache/xpath/XPath;

    .line 95
    return-void
.end method
