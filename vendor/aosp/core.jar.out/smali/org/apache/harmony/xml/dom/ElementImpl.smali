.class public Lorg/apache/harmony/xml/dom/ElementImpl;
.super Lorg/apache/harmony/xml/dom/InnerNodeImpl;
.source "ElementImpl.java"

# interfaces
.implements Lorg/w3c/dom/Element;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;
    }
.end annotation


# instance fields
.field private attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/xml/dom/AttrImpl;",
            ">;"
        }
    .end annotation
.end field

.field localName:Ljava/lang/String;

.field namespaceAware:Z

.field namespaceURI:Ljava/lang/String;

.field prefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V
    .locals 1
    .parameter "document"
    .parameter "name"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    .line 56
    invoke-static {p0, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->setName(Lorg/apache/harmony/xml/dom/NodeImpl;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "document"
    .parameter "namespaceURI"
    .parameter "qualifiedName"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    .line 51
    invoke-static {p0, p2, p3}, Lorg/apache/harmony/xml/dom/ElementImpl;->setNameNS(Lorg/apache/harmony/xml/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/xml/dom/ElementImpl;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/harmony/xml/dom/ElementImpl;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttribute(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/xml/dom/ElementImpl;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttributeNS(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private indexOfAttribute(Ljava/lang/String;)I
    .locals 3
    .parameter "name"

    .prologue
    .line 60
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 61
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 62
    .local v0, attr:Lorg/apache/harmony/xml/dom/AttrImpl;
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    .end local v0           #attr:Lorg/apache/harmony/xml/dom/AttrImpl;
    .end local v1           #i:I
    :goto_1
    return v1

    .line 60
    .restart local v0       #attr:Lorg/apache/harmony/xml/dom/AttrImpl;
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .end local v0           #attr:Lorg/apache/harmony/xml/dom/AttrImpl;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private indexOfAttributeNS(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 71
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 72
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 73
    .local v0, attr:Lorg/apache/harmony/xml/dom/AttrImpl;
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    .end local v0           #attr:Lorg/apache/harmony/xml/dom/AttrImpl;
    .end local v1           #i:I
    :goto_1
    return v1

    .line 71
    .restart local v0       #attr:Lorg/apache/harmony/xml/dom/AttrImpl;
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v0           #attr:Lorg/apache/harmony/xml/dom/AttrImpl;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    .line 85
    .local v0, attr:Lorg/w3c/dom/Attr;
    if-nez v0, :cond_0

    .line 86
    const-string v1, ""

    .line 89
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    .line 95
    .local v0, attr:Lorg/w3c/dom/Attr;
    if-nez v0, :cond_0

    .line 96
    const-string v1, ""

    .line 99
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getAttributeNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;
    .locals 2
    .parameter "name"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttribute(Ljava/lang/String;)I

    move-result v0

    .line 105
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 106
    const/4 v1, 0x0

    .line 109
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xml/dom/AttrImpl;

    goto :goto_0
.end method

.method public bridge synthetic getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;
    .locals 2
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttributeNS(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 115
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 116
    const/4 v1, 0x0

    .line 119
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xml/dom/AttrImpl;

    goto :goto_0
.end method

.method public bridge synthetic getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;-><init>(Lorg/apache/harmony/xml/dom/ElementImpl;)V

    return-object v0
.end method

.method getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 6
    .parameter "name"

    .prologue
    .line 133
    iget-object v4, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 134
    .local v0, attr:Lorg/w3c/dom/Attr;
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->isId()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 158
    .end local v0           #attr:Lorg/w3c/dom/Attr;
    .end local p0
    :cond_1
    :goto_0
    return-object p0

    .line 145
    .restart local p0
    :cond_2
    const-string v4, "id"

    invoke-virtual {p0, v4}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 149
    iget-object v4, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    .line 150
    .local v3, node:Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-virtual {v3}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 151
    check-cast v3, Lorg/apache/harmony/xml/dom/ElementImpl;

    .end local v3           #node:Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-virtual {v3, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 152
    .local v1, element:Lorg/w3c/dom/Element;
    if-eqz v1, :cond_3

    move-object p0, v1

    .line 153
    goto :goto_0

    .line 158
    .end local v1           #element:Lorg/w3c/dom/Element;
    :cond_4
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1
    .parameter "name"

    .prologue
    .line 162
    new-instance v0, Lorg/apache/harmony/xml/dom/NodeListImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/NodeListImpl;-><init>()V

    .line 163
    .local v0, result:Lorg/apache/harmony/xml/dom/NodeListImpl;
    invoke-virtual {p0, v0, p1}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->getElementsByTagName(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;)V

    .line 164
    return-object v0
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 168
    new-instance v0, Lorg/apache/harmony/xml/dom/NodeListImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/NodeListImpl;-><init>()V

    .line 169
    .local v0, result:Lorg/apache/harmony/xml/dom/NodeListImpl;
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->getElementsByTagNameNS(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceAware:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->localName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceURI:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/ElementImpl;->getTagName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 1

    .prologue
    .line 390
    sget-object v0, Lorg/apache/harmony/xml/dom/ElementImpl;->NULL_TYPE_INFO:Lorg/w3c/dom/TypeInfo;

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->localName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->localName:Ljava/lang/String;

    goto :goto_0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttribute(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 208
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttributeNS(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAttributes()Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttribute(Ljava/lang/String;)I

    move-result v0

    .line 219
    .local v0, i:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 220
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 222
    :cond_0
    return-void
.end method

.method public removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "namespaceURI"
    .parameter "localName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttributeNS(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 228
    .local v0, i:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 229
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 231
    :cond_0
    return-void
.end method

.method public removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 4
    .parameter "oldAttr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 234
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 236
    .local v0, oldAttrImpl:Lorg/apache/harmony/xml/dom/AttrImpl;
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 237
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 240
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 241
    iput-object v3, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->ownerElement:Lorg/apache/harmony/xml/dom/ElementImpl;

    .line 243
    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    .line 249
    .local v0, attr:Lorg/w3c/dom/Attr;
    if-nez v0, :cond_0

    .line 250
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createAttribute(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    .line 251
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/ElementImpl;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 254
    :cond_0
    invoke-interface {v0, p2}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "namespaceURI"
    .parameter "qualifiedName"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    .line 261
    .local v0, attr:Lorg/w3c/dom/Attr;
    if-nez v0, :cond_0

    .line 262
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-virtual {v1, p1, p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    .line 263
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/ElementImpl;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 266
    :cond_0
    invoke-interface {v0, p3}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 6
    .parameter "newAttr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 270
    move-object v1, p1

    check-cast v1, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 272
    .local v1, newAttrImpl:Lorg/apache/harmony/xml/dom/AttrImpl;
    iget-object v3, v1, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    iget-object v4, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    if-eq v3, v4, :cond_0

    .line 273
    new-instance v3, Lorg/w3c/dom/DOMException;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 276
    :cond_0
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 277
    new-instance v3, Lorg/w3c/dom/DOMException;

    const/16 v4, 0xa

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 280
    :cond_1
    const/4 v2, 0x0

    .line 282
    .local v2, oldAttrImpl:Lorg/apache/harmony/xml/dom/AttrImpl;
    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttribute(Ljava/lang/String;)I

    move-result v0

    .line 283
    .local v0, i:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 284
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #oldAttrImpl:Lorg/apache/harmony/xml/dom/AttrImpl;
    check-cast v2, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 285
    .restart local v2       #oldAttrImpl:Lorg/apache/harmony/xml/dom/AttrImpl;
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 288
    :cond_2
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    iput-object p0, v1, Lorg/apache/harmony/xml/dom/AttrImpl;->ownerElement:Lorg/apache/harmony/xml/dom/ElementImpl;

    .line 291
    return-object v2
.end method

.method public setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 6
    .parameter "newAttr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 295
    move-object v1, p1

    check-cast v1, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 297
    .local v1, newAttrImpl:Lorg/apache/harmony/xml/dom/AttrImpl;
    iget-object v3, v1, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    iget-object v4, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    if-eq v3, v4, :cond_0

    .line 298
    new-instance v3, Lorg/w3c/dom/DOMException;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 301
    :cond_0
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 302
    new-instance v3, Lorg/w3c/dom/DOMException;

    const/16 v4, 0xa

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 305
    :cond_1
    const/4 v2, 0x0

    .line 307
    .local v2, oldAttrImpl:Lorg/apache/harmony/xml/dom/AttrImpl;
    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttributeNS(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 308
    .local v0, i:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 309
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #oldAttrImpl:Lorg/apache/harmony/xml/dom/AttrImpl;
    check-cast v2, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 310
    .restart local v2       #oldAttrImpl:Lorg/apache/harmony/xml/dom/AttrImpl;
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 313
    :cond_2
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    iput-object p0, v1, Lorg/apache/harmony/xml/dom/AttrImpl;->ownerElement:Lorg/apache/harmony/xml/dom/ElementImpl;

    .line 316
    return-object v2
.end method

.method public setIdAttribute(Ljava/lang/String;Z)V
    .locals 5
    .parameter "name"
    .parameter "isId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 394
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    .line 395
    .local v0, attr:Lorg/apache/harmony/xml/dom/AttrImpl;
    if-nez v0, :cond_0

    .line 396
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/16 v2, 0x8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such attribute: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 399
    :cond_0
    iput-boolean p2, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->isId:Z

    .line 400
    return-void
.end method

.method public setIdAttributeNS(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "isId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 404
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    .line 405
    .local v0, attr:Lorg/apache/harmony/xml/dom/AttrImpl;
    if-nez v0, :cond_0

    .line 406
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/16 v2, 0x8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such attribute: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 409
    :cond_0
    iput-boolean p3, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->isId:Z

    .line 410
    return-void
.end method

.method public setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V
    .locals 0
    .parameter "idAttr"
    .parameter "isId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 413
    check-cast p1, Lorg/apache/harmony/xml/dom/AttrImpl;

    .end local p1
    iput-boolean p2, p1, Lorg/apache/harmony/xml/dom/AttrImpl;->isId:Z

    .line 414
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 2
    .parameter "prefix"

    .prologue
    .line 321
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceAware:Z

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceURI:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lorg/apache/harmony/xml/dom/ElementImpl;->validatePrefix(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->prefix:Ljava/lang/String;

    .line 322
    return-void
.end method
