.class public Lorg/apache/xpath/objects/XObject;
.super Lorg/apache/xpath/Expression;
.source "XObject.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CLASS_BOOLEAN:I = 0x1

.field public static final CLASS_NODESET:I = 0x4

.field public static final CLASS_NULL:I = -0x1

.field public static final CLASS_NUMBER:I = 0x2

.field public static final CLASS_RTREEFRAG:I = 0x5

.field public static final CLASS_STRING:I = 0x3

.field public static final CLASS_UNKNOWN:I = 0x0

.field public static final CLASS_UNRESOLVEDVARIABLE:I = 0x258

.field static final serialVersionUID:J = -0xb67edf6448449e7L


# instance fields
.field protected m_obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/apache/xpath/Expression;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/apache/xpath/Expression;-><init>()V

    .line 71
    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XObject;->setObject(Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public static create(Ljava/lang/Object;)Lorg/apache/xpath/objects/XObject;
    .locals 1
    .parameter "val"

    .prologue
    .line 165
    invoke-static {p0}, Lorg/apache/xpath/objects/XObjectFactory;->create(Ljava/lang/Object;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/Object;Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 1
    .parameter "val"
    .parameter "xctxt"

    .prologue
    .line 180
    invoke-static {p0, p1}, Lorg/apache/xpath/objects/XObjectFactory;->create(Ljava/lang/Object;Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public allowDetachToRelease(Z)V
    .locals 0
    .parameter "allowRelease"

    .prologue
    .line 103
    return-void
.end method

.method public appendToFsb(Lorg/apache/xml/utils/FastStringBuffer;)V
    .locals 1
    .parameter "fsb"

    .prologue
    .line 732
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 733
    return-void
.end method

.method public bool()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 266
    const-string v0, "ER_CANT_CONVERT_TO_NUMBER"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->getTypeString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    return v3
.end method

.method public boolWithSideEffects()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->bool()Z

    move-result v0

    return v0
.end method

.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .locals 2
    .parameter "owner"
    .parameter "visitor"

    .prologue
    .line 740
    const/4 v0, 0x0

    const-string v1, "callVisitors should not be called for this object!!!"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/Expression;->assertion(ZLjava/lang/String;)V

    .line 741
    return-void
.end method

.method public castToType(ILorg/apache/xpath/XPathContext;)Ljava/lang/Object;
    .locals 5
    .parameter "t"
    .parameter "support"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 495
    packed-switch p1, :pswitch_data_0

    .line 518
    const-string v1, "ER_CANT_CONVERT_TO_TYPE"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->getTypeString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/apache/xpath/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 522
    const/4 v0, 0x0

    .line 525
    :goto_0
    return-object v0

    .line 498
    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, result:Ljava/lang/String;
    goto :goto_0

    .line 501
    .end local v0           #result:Ljava/lang/String;
    :pswitch_1
    new-instance v0, Ljava/lang/Double;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    .line 502
    .local v0, result:Ljava/lang/Double;
    goto :goto_0

    .line 504
    .end local v0           #result:Ljava/lang/Double;
    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    .line 505
    .local v0, result:Lorg/apache/xml/dtm/DTMIterator;
    goto :goto_0

    .line 507
    .end local v0           #result:Lorg/apache/xml/dtm/DTMIterator;
    :pswitch_3
    new-instance v0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->bool()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    .line 508
    .local v0, result:Ljava/lang/Boolean;
    goto :goto_0

    .line 510
    .end local v0           #result:Ljava/lang/Boolean;
    :pswitch_4
    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    .line 511
    .local v0, result:Ljava/lang/Object;
    goto :goto_0

    .line 495
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 2
    .parameter "expr"

    .prologue
    const/4 v0, 0x0

    .line 747
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->isSameClass(Lorg/apache/xpath/Expression;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 756
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 753
    .restart local p1
    :cond_1
    check-cast p1, Lorg/apache/xpath/objects/XObject;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 756
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public destruct()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XObject;->allowDetachToRelease(Z)V

    .line 124
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->detach()V

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XObject;->setObject(Ljava/lang/Object;)V

    .line 128
    :cond_0
    return-void
.end method

.method public detach()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V
    .locals 1
    .parameter "ch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/xml/utils/XMLString;->dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V

    .line 152
    return-void
.end method

.method public equals(Lorg/apache/xpath/objects/XObject;)Z
    .locals 2
    .parameter "obj2"

    .prologue
    .line 639
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 640
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    move-result v0

    .line 648
    :goto_0
    return v0

    .line 642
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 644
    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    iget-object v1, p1, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 648
    :cond_1
    iget-object v0, p1, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected error(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 685
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 686
    return-void
.end method

.method protected error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "msg"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 701
    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 709
    .local v0, fmsg:Ljava/lang/String;
    new-instance v1, Lorg/apache/xpath/XPathException;

    invoke-direct {v1, v0, p0}, Lorg/apache/xpath/XPathException;-><init>(Ljava/lang/String;Lorg/apache/xpath/ExpressionNode;)V

    throw v1
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 0
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 90
    return-object p0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0
    .parameter "vars"
    .parameter "globalsSize"

    .prologue
    .line 720
    return-void
.end method

.method public getFresh()Lorg/apache/xpath/objects/XObject;
    .locals 0

    .prologue
    .line 425
    return-object p0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#UNKNOWN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->object()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greaterThan(Lorg/apache/xpath/objects/XObject;)Z
    .locals 4
    .parameter "obj2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 594
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 595
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->lessThan(Lorg/apache/xpath/objects/XObject;)Z

    move-result v0

    .line 597
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public greaterThanOrEqual(Lorg/apache/xpath/objects/XObject;)Z
    .locals 4
    .parameter "obj2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 618
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 619
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->lessThanOrEqual(Lorg/apache/xpath/objects/XObject;)Z

    move-result v0

    .line 621
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iter()Lorg/apache/xml/dtm/DTMIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 412
    const-string v0, "ER_CANT_CONVERT_TO_NODELIST"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->getTypeString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    const/4 v0, 0x0

    return-object v0
.end method

.method public lessThan(Lorg/apache/xpath/objects/XObject;)Z
    .locals 4
    .parameter "obj2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 546
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 547
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->greaterThan(Lorg/apache/xpath/objects/XObject;)Z

    move-result v0

    .line 549
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lessThanOrEqual(Lorg/apache/xpath/objects/XObject;)Z
    .locals 4
    .parameter "obj2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 570
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 571
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->greaterThanOrEqual(Lorg/apache/xpath/objects/XObject;)Z

    move-result v0

    .line 573
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mutableNodeset()Lorg/apache/xpath/NodeSetDTM;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 473
    const-string v0, "ER_CANT_CONVERT_TO_MUTABLENODELIST"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->getTypeString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    check-cast v0, Lorg/apache/xpath/NodeSetDTM;

    return-object v0
.end method

.method public nodelist()Lorg/w3c/dom/NodeList;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 455
    const-string v0, "ER_CANT_CONVERT_TO_NODELIST"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->getTypeString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    const/4 v0, 0x0

    return-object v0
.end method

.method public nodeset()Lorg/w3c/dom/traversal/NodeIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 439
    const-string v0, "ER_CANT_CONVERT_TO_NODELIST"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->getTypeString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    const/4 v0, 0x0

    return-object v0
.end method

.method public notEquals(Lorg/apache/xpath/objects/XObject;)Z
    .locals 2
    .parameter "obj2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 668
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 669
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->notEquals(Lorg/apache/xpath/objects/XObject;)Z

    move-result v0

    .line 671
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public num()D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 238
    const-string v0, "ER_CANT_CONVERT_TO_NUMBER"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->getTypeString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public numWithSideEffects()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v0

    return-wide v0
.end method

.method public object()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    return-object v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public rtf()I
    .locals 1

    .prologue
    .line 388
    const/4 v0, -0x1

    return v0
.end method

.method public rtf(Lorg/apache/xpath/XPathContext;)I
    .locals 3
    .parameter "support"

    .prologue
    .line 325
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->rtf()I

    move-result v1

    .line 327
    .local v1, result:I
    const/4 v2, -0x1

    if-ne v2, v1, :cond_0

    .line 329
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->createDocumentFragment()Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 332
    .local v0, frag:Lorg/apache/xml/dtm/DTM;
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/xml/dtm/DTM;->appendTextChild(Ljava/lang/String;)V

    .line 334
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v1

    .line 337
    .end local v0           #frag:Lorg/apache/xml/dtm/DTM;
    :cond_0
    return v1
.end method

.method public rtree()Lorg/w3c/dom/DocumentFragment;
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x0

    return-object v0
.end method

.method public rtree(Lorg/apache/xpath/XPathContext;)Lorg/w3c/dom/DocumentFragment;
    .locals 4
    .parameter "support"

    .prologue
    .line 349
    const/4 v0, 0x0

    .line 350
    .local v0, docFrag:Lorg/w3c/dom/DocumentFragment;
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->rtf()I

    move-result v2

    .line 352
    .local v2, result:I
    const/4 v3, -0x1

    if-ne v3, v2, :cond_0

    .line 354
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->createDocumentFragment()Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    .line 357
    .local v1, frag:Lorg/apache/xml/dtm/DTM;
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/xml/dtm/DTM;->appendTextChild(Ljava/lang/String;)V

    .line 359
    invoke-interface {v1}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v3

    invoke-interface {v1, v3}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .end local v0           #docFrag:Lorg/w3c/dom/DocumentFragment;
    check-cast v0, Lorg/w3c/dom/DocumentFragment;

    .line 367
    .restart local v0       #docFrag:Lorg/w3c/dom/DocumentFragment;
    :goto_0
    return-object v0

    .line 363
    .end local v1           #frag:Lorg/apache/xml/dtm/DTM;
    :cond_0
    invoke-virtual {p1, v2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    .line 364
    .restart local v1       #frag:Lorg/apache/xml/dtm/DTM;
    invoke-interface {v1}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v3

    invoke-interface {v1, v3}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .end local v0           #docFrag:Lorg/w3c/dom/DocumentFragment;
    check-cast v0, Lorg/w3c/dom/DocumentFragment;

    .restart local v0       #docFrag:Lorg/w3c/dom/DocumentFragment;
    goto :goto_0
.end method

.method protected setObject(Ljava/lang/Object;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 75
    iput-object p1, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public str()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public xstr()Lorg/apache/xml/utils/XMLString;
    .locals 2

    .prologue
    .line 291
    invoke-static {}, Lorg/apache/xpath/objects/XMLStringFactoryImpl;->getFactory()Lorg/apache/xml/utils/XMLStringFactory;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    move-result-object v0

    return-object v0
.end method
