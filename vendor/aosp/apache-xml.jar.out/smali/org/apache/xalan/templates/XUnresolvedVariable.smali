.class public Lorg/apache/xalan/templates/XUnresolvedVariable;
.super Lorg/apache/xpath/objects/XObject;
.source "XUnresolvedVariable.java"


# static fields
.field static final serialVersionUID:J = -0x39043df38b0156cL


# instance fields
.field private transient m_context:I

.field private transient m_doneEval:Z

.field private m_isGlobal:Z

.field private transient m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

.field private transient m_varStackContext:I

.field private transient m_varStackPos:I


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/ElemVariable;ILorg/apache/xalan/transformer/TransformerImpl;IIZ)V
    .locals 1
    .parameter "obj"
    .parameter "sourceNode"
    .parameter "transformer"
    .parameter "varStackPos"
    .parameter "varStackContext"
    .parameter "isGlobal"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_varStackPos:I

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_doneEval:Z

    .line 83
    iput p2, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_context:I

    .line 84
    iput-object p3, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    .line 88
    iput p4, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_varStackPos:I

    .line 91
    iput p5, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_varStackContext:I

    .line 93
    iput-boolean p6, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_isGlobal:Z

    .line 94
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 11
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 107
    iget-boolean v4, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_doneEval:Z

    if-nez v4, :cond_0

    .line 109
    iget-object v4, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v4}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v6

    const-string v7, "ER_REFERENCING_ITSELF"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->object()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xalan/templates/ElemVariable;

    invoke-virtual {v4}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/xml/utils/QName;->getLocalName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v10

    invoke-virtual {v5, v6, v7, v8}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    :cond_0
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v2

    .line 116
    .local v2, vars:Lorg/apache/xpath/VariableStack;
    invoke-virtual {v2}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v0

    .line 120
    .local v0, currentFrame:I
    iget-object v3, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    check-cast v3, Lorg/apache/xalan/templates/ElemVariable;

    .line 123
    .local v3, velem:Lorg/apache/xalan/templates/ElemVariable;
    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_doneEval:Z

    .line 124
    iget v4, v3, Lorg/apache/xalan/templates/ElemVariable;->m_frameSize:I

    if-eq v9, v4, :cond_1

    .line 125
    iget v4, v3, Lorg/apache/xalan/templates/ElemVariable;->m_frameSize:I

    invoke-virtual {v2, v4}, Lorg/apache/xpath/VariableStack;->link(I)I

    .line 126
    :cond_1
    iget-object v4, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    iget v5, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_context:I

    invoke-virtual {v3, v4, v5}, Lorg/apache/xalan/templates/ElemVariable;->getValue(Lorg/apache/xalan/transformer/TransformerImpl;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    .line 127
    .local v1, var:Lorg/apache/xpath/objects/XObject;
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_doneEval:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    iget v4, v3, Lorg/apache/xalan/templates/ElemVariable;->m_frameSize:I

    if-eq v9, v4, :cond_2

    .line 136
    invoke-virtual {v2, v0}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    :cond_2
    return-object v1

    .line 135
    .end local v1           #var:Lorg/apache/xpath/objects/XObject;
    :catchall_0
    move-exception v4

    iget v5, v3, Lorg/apache/xalan/templates/ElemVariable;->m_frameSize:I

    if-eq v9, v5, :cond_3

    .line 136
    invoke-virtual {v2, v0}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    :cond_3
    throw v4
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 172
    const/16 v0, 0x258

    return v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XUnresolvedVariable ("

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

.method public setVarStackContext(I)V
    .locals 0
    .parameter "bottom"

    .prologue
    .line 162
    iput p1, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_varStackContext:I

    .line 163
    return-void
.end method

.method public setVarStackPos(I)V
    .locals 0
    .parameter "top"

    .prologue
    .line 150
    iput p1, p0, Lorg/apache/xalan/templates/XUnresolvedVariable;->m_varStackPos:I

    .line 151
    return-void
.end method
