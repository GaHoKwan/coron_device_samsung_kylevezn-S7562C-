.class public abstract Lorg/apache/xpath/axes/BasicTestIterator;
.super Lorg/apache/xpath/axes/LocPathIterator;
.source "BasicTestIterator.java"


# static fields
.field static final serialVersionUID:J = 0x30a59aca78c5c1efL


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>()V

    .line 46
    return-void
.end method

.method protected constructor <init>(Lorg/apache/xml/utils/PrefixResolver;)V
    .locals 0
    .parameter "nscontext"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 59
    return-void
.end method

.method protected constructor <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .locals 4
    .parameter "compiler"
    .parameter "opPos"
    .parameter "analysis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 76
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, v2}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    .line 78
    invoke-static {p2}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result v0

    .line 79
    .local v0, firstStepPos:I
    invoke-virtual {p1, v0}, Lorg/apache/xpath/compiler/Compiler;->getWhatToShow(I)I

    move-result v1

    .line 81
    .local v1, whatToShow:I
    and-int/lit16 v2, v1, 0x1043

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 87
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/xpath/patterns/NodeTest;->initNodeTest(I)V

    .line 93
    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->initPredicateInfo(Lorg/apache/xpath/compiler/Compiler;I)V

    .line 94
    return-void

    .line 90
    :cond_1
    invoke-virtual {p1, v0}, Lorg/apache/xpath/compiler/OpMap;->getStepNS(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Lorg/apache/xpath/compiler/OpMap;->getStepLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/xpath/patterns/NodeTest;->initNodeTest(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V
    .locals 0
    .parameter "compiler"
    .parameter "opPos"
    .parameter "analysis"
    .parameter "shouldLoadWalkers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    .line 116
    return-void
.end method


# virtual methods
.method public cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/ChildTestIterator;

    .line 219
    .local v0, clone:Lorg/apache/xpath/axes/ChildTestIterator;
    invoke-virtual {v0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->resetProximityPositions()V

    .line 221
    return-object v0
.end method

.method protected abstract getNextNode()I
.end method

.method public nextNode()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    .line 135
    iget-boolean v4, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    if-eqz v4, :cond_1

    .line 137
    iput v3, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    move v0, v3

    .line 201
    :cond_0
    :goto_0
    return v0

    .line 141
    :cond_1
    iget v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    if-ne v3, v4, :cond_2

    .line 143
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->resetProximityPositions()V

    .line 150
    :cond_2
    iget v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    if-eq v3, v4, :cond_5

    .line 152
    iget-object v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v2

    .line 155
    .local v2, vars:Lorg/apache/xpath/VariableStack;
    invoke-virtual {v2}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v1

    .line 157
    .local v1, savedStart:I
    iget v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    invoke-virtual {v2, v4}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    .line 170
    :cond_3
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xpath/axes/BasicTestIterator;->getNextNode()I

    move-result v0

    .line 172
    .local v0, next:I
    if-eq v3, v0, :cond_4

    .line 174
    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->acceptNode(I)S

    move-result v4

    if-ne v5, v4, :cond_6

    .line 184
    :cond_4
    :goto_2
    if-eq v3, v0, :cond_7

    .line 186
    iget v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    iget v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    if-eq v3, v4, :cond_0

    .line 201
    invoke-virtual {v2, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    goto :goto_0

    .line 162
    .end local v0           #next:I
    .end local v1           #savedStart:I
    .end local v2           #vars:Lorg/apache/xpath/VariableStack;
    :cond_5
    const/4 v2, 0x0

    .line 163
    .restart local v2       #vars:Lorg/apache/xpath/VariableStack;
    const/4 v1, 0x0

    .restart local v1       #savedStart:I
    goto :goto_1

    .line 182
    .restart local v0       #next:I
    :cond_6
    if-ne v0, v3, :cond_3

    goto :goto_2

    .line 191
    :cond_7
    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    iget v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    if-eq v3, v4, :cond_8

    .line 201
    invoke-virtual {v2, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    :cond_8
    move v0, v3

    goto :goto_0

    .line 198
    .end local v0           #next:I
    :catchall_0
    move-exception v4

    iget v5, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    if-eq v3, v5, :cond_9

    .line 201
    invoke-virtual {v2, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    :cond_9
    throw v4
.end method
