.class public Lorg/apache/xpath/operations/Or;
.super Lorg/apache/xpath/operations/Operation;
.source "Or.java"


# static fields
.field static final serialVersionUID:J = -0x8f05413f1ebc497L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/apache/xpath/operations/Operation;-><init>()V

    return-void
.end method


# virtual methods
.method public bool(Lorg/apache/xpath/XPathContext;)Z
    .locals 1
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/xpath/operations/Operation;->m_left:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->bool(Lorg/apache/xpath/XPathContext;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->bool(Lorg/apache/xpath/XPathContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 3
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v2, p0, Lorg/apache/xpath/operations/Operation;->m_left:Lorg/apache/xpath/Expression;

    invoke-virtual {v2, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    .line 50
    .local v0, expr1:Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->bool()Z

    move-result v2

    if-nez v2, :cond_1

    .line 52
    iget-object v2, p0, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    invoke-virtual {v2, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    .line 54
    .local v1, expr2:Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v1}, Lorg/apache/xpath/objects/XObject;->bool()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;

    .line 57
    .end local v1           #expr2:Lorg/apache/xpath/objects/XObject;
    :goto_0
    return-object v2

    .line 54
    .restart local v1       #expr2:Lorg/apache/xpath/objects/XObject;
    :cond_0
    sget-object v2, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    goto :goto_0

    .line 57
    .end local v1           #expr2:Lorg/apache/xpath/objects/XObject;
    :cond_1
    sget-object v2, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;

    goto :goto_0
.end method
