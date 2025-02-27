.class public Ljava/io/ObjectOutputStream;
.super Ljava/io/OutputStream;
.source "ObjectOutputStream.java"

# interfaces
.implements Ljava/io/ObjectOutput;
.implements Ljava/io/ObjectStreamConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/ObjectOutputStream$PutField;
    }
.end annotation


# static fields
.field private static final NOT_SC_BLOCK_DATA:B = -0x9t

.field private static final WRITE_UNSHARED_PARAM_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private currentClass:Ljava/io/ObjectStreamClass;

.field private currentHandle:I

.field private currentObject:Ljava/lang/Object;

.field private currentPutField:Ljava/io/EmulatedFieldsForDumping;

.field private enableReplace:Z

.field private nestedException:Ljava/io/StreamCorruptedException;

.field private nestedLevels:I

.field private objectsWritten:Ljava/io/SerializationHandleMap;

.field private output:Ljava/io/DataOutputStream;

.field private primitiveTypes:Ljava/io/DataOutputStream;

.field private primitiveTypesBuffer:Ljava/io/ByteArrayOutputStream;

.field private protocolVersion:I

.field private final proxyClassDesc:Ljava/io/ObjectStreamClass;

.field private subclassOverridingImplementation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Object;

    aput-object v2, v0, v1

    sput-object v0, Ljava/io/ObjectOutputStream;->WRITE_UNSHARED_PARAM_TYPES:[Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 119
    const-class v0, Ljava/lang/reflect/Proxy;

    invoke-static {v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->proxyClassDesc:Ljava/io/ObjectStreamClass;

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/ObjectOutputStream;->subclassOverridingImplementation:Z

    .line 253
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 266
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 119
    const-class v0, Ljava/lang/reflect/Proxy;

    invoke-static {v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->proxyClassDesc:Ljava/io/ObjectStreamClass;

    .line 267
    instance-of v0, p1, Ljava/io/DataOutputStream;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/DataOutputStream;

    .end local p1
    :goto_0
    iput-object p1, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    .line 269
    iput-boolean v1, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    .line 270
    const/4 v0, 0x2

    iput v0, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    .line 271
    iput-boolean v1, p0, Ljava/io/ObjectOutputStream;->subclassOverridingImplementation:Z

    .line 273
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->resetState()V

    .line 274
    new-instance v0, Ljava/io/StreamCorruptedException;

    invoke-direct {v0}, Ljava/io/StreamCorruptedException;-><init>()V

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->nestedException:Ljava/io/StreamCorruptedException;

    .line 277
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    .line 279
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->writeStreamHeader()V

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    .line 281
    return-void

    .line 267
    .restart local p1
    :cond_0
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private checkWritePrimitiveTypes()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypesBuffer:Ljava/io/ByteArrayOutputStream;

    .line 323
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Ljava/io/ObjectOutputStream;->primitiveTypesBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    .line 325
    :cond_0
    return-void
.end method

.method private computePutField()V
    .locals 2

    .prologue
    .line 350
    new-instance v0, Ljava/io/EmulatedFieldsForDumping;

    iget-object v1, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    invoke-direct {v0, p0, v1}, Ljava/io/EmulatedFieldsForDumping;-><init>(Ljava/io/ObjectOutputStream;Ljava/io/ObjectStreamClass;)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    .line 351
    return-void
.end method

.method private dumpCycle(Ljava/lang/Object;)I
    .locals 3
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 425
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v2, p1}, Ljava/io/SerializationHandleMap;->get(Ljava/lang/Object;)I

    move-result v0

    .line 426
    .local v0, handle:I
    if-eq v0, v1, :cond_0

    .line 427
    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeCyclicReference(I)V

    .line 430
    .end local v0           #handle:I
    :goto_0
    return v0

    .restart local v0       #handle:I
    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static native getFieldL(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method private nextHandle()I
    .locals 2

    .prologue
    .line 486
    iget v0, p0, Ljava/io/ObjectOutputStream;->currentHandle:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/io/ObjectOutputStream;->currentHandle:I

    return v0
.end method

.method private registerObjectWritten(Ljava/lang/Object;)I
    .locals 2
    .parameter "obj"

    .prologue
    .line 514
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->nextHandle()I

    move-result v0

    .line 515
    .local v0, handle:I
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v1, p1, v0}, Ljava/io/SerializationHandleMap;->put(Ljava/lang/Object;I)I

    .line 516
    return v0
.end method

.method private removeUnsharedReference(Ljava/lang/Object;I)V
    .locals 1
    .parameter "obj"
    .parameter "previousHandle"

    .prologue
    .line 529
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 530
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v0, p1, p2}, Ljava/io/SerializationHandleMap;->put(Ljava/lang/Object;I)I

    .line 534
    :goto_0
    return-void

    .line 532
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v0, p1}, Ljava/io/SerializationHandleMap;->remove(Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private resetSeenObjects()V
    .locals 1

    .prologue
    .line 587
    new-instance v0, Ljava/io/SerializationHandleMap;

    invoke-direct {v0}, Ljava/io/SerializationHandleMap;-><init>()V

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    .line 588
    const/high16 v0, 0x7e

    iput v0, p0, Ljava/io/ObjectOutputStream;->currentHandle:I

    .line 589
    return-void
.end method

.method private resetState()V
    .locals 1

    .prologue
    .line 598
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->resetSeenObjects()V

    .line 599
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    .line 600
    return-void
.end method

.method private writeClassDesc(Ljava/io/ObjectStreamClass;Z)I
    .locals 8
    .parameter "classDesc"
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x78

    const/4 v5, -0x1

    .line 748
    if-nez p1, :cond_1

    .line 749
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->writeNull()V

    move v1, v5

    .line 803
    :cond_0
    :goto_0
    return v1

    .line 752
    :cond_1
    const/4 v1, -0x1

    .line 753
    .local v1, handle:I
    if-nez p2, :cond_2

    .line 754
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->dumpCycle(Ljava/lang/Object;)I

    move-result v1

    .line 756
    :cond_2
    if-ne v1, v5, :cond_0

    .line 757
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 758
    .local v0, classToWrite:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, -0x1

    .line 759
    .local v4, previousHandle:I
    if-eqz p2, :cond_3

    .line 760
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v5, p1}, Ljava/io/SerializationHandleMap;->get(Ljava/lang/Object;)I

    move-result v4

    .line 764
    :cond_3
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->registerObjectWritten(Ljava/lang/Object;)I

    move-result v1

    .line 766
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->isProxy()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 767
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 768
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    .line 769
    .local v3, interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 770
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, v3

    if-ge v2, v5, :cond_4

    .line 771
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    aget-object v6, v3, v2

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 770
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 773
    :cond_4
    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->annotateProxyClass(Ljava/lang/Class;)V

    .line 774
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v5, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 775
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->proxyClassDesc:Ljava/io/ObjectStreamClass;

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)I

    .line 776
    if-eqz p2, :cond_0

    .line 778
    invoke-direct {p0, p1, v4}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;I)V

    goto :goto_0

    .line 783
    .end local v2           #i:I
    .end local v3           #interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_5
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v6, 0x72

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 784
    iget v5, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 785
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->writeNewClassDesc(Ljava/io/ObjectStreamClass;)V

    .line 794
    :goto_2
    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->annotateClass(Ljava/lang/Class;)V

    .line 795
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    .line 796
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v5, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 797
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSuperclass()Ljava/io/ObjectStreamClass;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)I

    .line 798
    if-eqz p2, :cond_0

    .line 800
    invoke-direct {p0, p1, v4}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;I)V

    goto :goto_0

    .line 789
    :cond_6
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    iput-object v5, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    .line 790
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream;->writeClassDescriptor(Ljava/io/ObjectStreamClass;)V

    .line 791
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    goto :goto_2
.end method

.method private writeCyclicReference(I)V
    .locals 2
    .parameter "handle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 811
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 812
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 813
    return-void
.end method

.method private writeEnumDesc(Ljava/lang/Class;Ljava/io/ObjectStreamClass;Z)Ljava/io/ObjectStreamClass;
    .locals 7
    .parameter
    .parameter "classDesc"
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/io/ObjectStreamClass;",
            "Z)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, theClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/16 v6, 0x12

    .line 1683
    invoke-virtual {p2, v6}, Ljava/io/ObjectStreamClass;->setFlags(B)V

    .line 1684
    const/4 v2, -0x1

    .line 1685
    .local v2, previousHandle:I
    if-eqz p3, :cond_0

    .line 1686
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v4, p2}, Ljava/io/SerializationHandleMap;->get(Ljava/lang/Object;)I

    move-result v2

    .line 1688
    :cond_0
    const/4 v1, -0x1

    .line 1689
    .local v1, handle:I
    if-nez p3, :cond_1

    .line 1690
    invoke-direct {p0, p2}, Ljava/io/ObjectOutputStream;->dumpCycle(Ljava/lang/Object;)I

    move-result v1

    .line 1692
    :cond_1
    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    .line 1693
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 1696
    .local v0, classToWrite:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, p2}, Ljava/io/ObjectOutputStream;->registerObjectWritten(Ljava/lang/Object;)I

    .line 1698
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v5, 0x72

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1699
    iget v4, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 1700
    invoke-direct {p0, p2}, Ljava/io/ObjectOutputStream;->writeNewClassDesc(Ljava/io/ObjectStreamClass;)V

    .line 1709
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->annotateClass(Ljava/lang/Class;)V

    .line 1710
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    .line 1711
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v5, 0x78

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1713
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getSuperclass()Ljava/io/ObjectStreamClass;

    move-result-object v3

    .line 1714
    .local v3, superClassDesc:Ljava/io/ObjectStreamClass;
    if-eqz v3, :cond_4

    .line 1716
    invoke-virtual {v3, v6}, Ljava/io/ObjectStreamClass;->setFlags(B)V

    .line 1717
    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {p0, v4, v3, p3}, Ljava/io/ObjectOutputStream;->writeEnumDesc(Ljava/lang/Class;Ljava/io/ObjectStreamClass;Z)Ljava/io/ObjectStreamClass;

    .line 1721
    :goto_1
    if-eqz p3, :cond_2

    .line 1723
    invoke-direct {p0, p2, v2}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;I)V

    .line 1726
    .end local v0           #classToWrite:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #superClassDesc:Ljava/io/ObjectStreamClass;
    :cond_2
    return-object p2

    .line 1704
    .restart local v0       #classToWrite:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_3
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    iput-object v4, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    .line 1705
    invoke-virtual {p0, p2}, Ljava/io/ObjectOutputStream;->writeClassDescriptor(Ljava/io/ObjectStreamClass;)V

    .line 1706
    const/4 v4, 0x0

    iput-object v4, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    goto :goto_0

    .line 1719
    .restart local v3       #superClassDesc:Ljava/io/ObjectStreamClass;
    :cond_4
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v5, 0x70

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_1
.end method

.method private writeFieldDescriptors(Ljava/io/ObjectStreamClass;Z)V
    .locals 7
    .parameter "classDesc"
    .parameter "externalizable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 846
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v4

    .line 847
    .local v4, loadedClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 848
    .local v2, fields:[Ljava/io/ObjectStreamField;
    const/4 v1, 0x0

    .line 852
    .local v1, fieldCount:I
    if-nez p2, :cond_0

    sget-object v6, Ljava/io/ObjectStreamClass;->STRINGCLASS:Ljava/lang/Class;

    if-eq v4, v6, :cond_0

    .line 853
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->fields()[Ljava/io/ObjectStreamField;

    move-result-object v2

    .line 854
    array-length v1, v2

    .line 858
    :cond_0
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v6, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 860
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 861
    aget-object v0, v2, v3

    .line 862
    .local v0, f:Ljava/io/ObjectStreamField;
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v6}, Ljava/io/ObjectStreamField;->writeField(Ljava/io/DataOutputStream;)Z

    move-result v5

    .line 863
    .local v5, wasPrimitive:Z
    if-nez v5, :cond_1

    .line 864
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getTypeString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 860
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 867
    .end local v0           #f:Ljava/io/ObjectStreamField;
    .end local v5           #wasPrimitive:Z
    :cond_2
    return-void
.end method

.method private writeFieldValues(Ljava/io/EmulatedFieldsForDumping;)V
    .locals 11
    .parameter "emulatedFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 904
    invoke-virtual {p1}, Ljava/io/EmulatedFieldsForDumping;->emulatedFields()Ljava/io/EmulatedFields;

    move-result-object v0

    .line 905
    .local v0, accessibleSimulatedFields:Ljava/io/EmulatedFields;
    invoke-virtual {v0}, Ljava/io/EmulatedFields;->slots()[Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v1

    .local v1, arr$:[Ljava/io/EmulatedFields$ObjectSlot;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_10

    aget-object v5, v1, v3

    .line 906
    .local v5, slot:Ljava/io/EmulatedFields$ObjectSlot;
    invoke-virtual {v5}, Ljava/io/EmulatedFields$ObjectSlot;->getFieldValue()Ljava/lang/Object;

    move-result-object v2

    .line 907
    .local v2, fieldValue:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/io/EmulatedFields$ObjectSlot;->getField()Ljava/io/ObjectStreamField;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 908
    .local v6, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_1

    .line 909
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_0

    check-cast v2, Ljava/lang/Integer;

    .end local v2           #fieldValue:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_1
    invoke-virtual {v9, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 905
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .restart local v2       #fieldValue:Ljava/lang/Object;
    :cond_0
    move v7, v8

    .line 909
    goto :goto_1

    .line 910
    :cond_1
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_3

    .line 911
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_2

    check-cast v2, Ljava/lang/Byte;

    .end local v2           #fieldValue:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    :goto_3
    invoke-virtual {v9, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_2

    .restart local v2       #fieldValue:Ljava/lang/Object;
    :cond_2
    move v7, v8

    goto :goto_3

    .line 912
    :cond_3
    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_5

    .line 913
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_4

    check-cast v2, Ljava/lang/Character;

    .end local v2           #fieldValue:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v7

    :goto_4
    invoke-virtual {v9, v7}, Ljava/io/DataOutputStream;->writeChar(I)V

    goto :goto_2

    .restart local v2       #fieldValue:Ljava/lang/Object;
    :cond_4
    move v7, v8

    goto :goto_4

    .line 914
    :cond_5
    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_7

    .line 915
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_6

    check-cast v2, Ljava/lang/Short;

    .end local v2           #fieldValue:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v7

    :goto_5
    invoke-virtual {v9, v7}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_2

    .restart local v2       #fieldValue:Ljava/lang/Object;
    :cond_6
    move v7, v8

    goto :goto_5

    .line 916
    :cond_7
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_9

    .line 917
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_8

    check-cast v2, Ljava/lang/Boolean;

    .end local v2           #fieldValue:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    :goto_6
    invoke-virtual {v9, v7}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_2

    .restart local v2       #fieldValue:Ljava/lang/Object;
    :cond_8
    move v7, v8

    goto :goto_6

    .line 918
    :cond_9
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_b

    .line 919
    iget-object v7, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_a

    check-cast v2, Ljava/lang/Long;

    .end local v2           #fieldValue:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    :goto_7
    invoke-virtual {v7, v9, v10}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_2

    .restart local v2       #fieldValue:Ljava/lang/Object;
    :cond_a
    const-wide/16 v9, 0x0

    goto :goto_7

    .line 920
    :cond_b
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_d

    .line 921
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_c

    check-cast v2, Ljava/lang/Float;

    .end local v2           #fieldValue:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    :goto_8
    invoke-virtual {v9, v7}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_2

    .restart local v2       #fieldValue:Ljava/lang/Object;
    :cond_c
    const/4 v7, 0x0

    goto :goto_8

    .line 922
    :cond_d
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_f

    .line 923
    iget-object v7, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_e

    check-cast v2, Ljava/lang/Double;

    .end local v2           #fieldValue:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    :goto_9
    invoke-virtual {v7, v9, v10}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto/16 :goto_2

    .restart local v2       #fieldValue:Ljava/lang/Object;
    :cond_e
    const-wide/16 v9, 0x0

    goto :goto_9

    .line 926
    :cond_f
    invoke-virtual {p0, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 929
    .end local v2           #fieldValue:Ljava/lang/Object;
    .end local v5           #slot:Ljava/io/EmulatedFields$ObjectSlot;
    .end local v6           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_10
    return-void
.end method

.method private writeFieldValues(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .locals 12
    .parameter "obj"
    .parameter "classDesc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 950
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->fields()[Ljava/io/ObjectStreamField;

    move-result-object v0

    .local v0, arr$:[Ljava/io/ObjectStreamField;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_a

    aget-object v2, v0, v3

    .line 952
    .local v2, fieldDesc:Ljava/io/ObjectStreamField;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v8

    .line 953
    .local v8, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p2, v2}, Ljava/io/ObjectStreamClass;->getReflectionField(Ljava/io/ObjectStreamField;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 954
    .local v1, field:Ljava/lang/reflect/Field;
    if-nez v1, :cond_0

    .line 955
    new-instance v9, Ljava/io/InvalidClassException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " doesn\'t have a field "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " of type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    .line 982
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v8           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v4

    .line 984
    .local v4, iae:Ljava/lang/IllegalAccessException;
    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    .line 957
    .end local v4           #iae:Ljava/lang/IllegalAccessException;
    .restart local v1       #field:Ljava/lang/reflect/Field;
    .restart local v8       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    :try_start_1
    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_1

    .line 958
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v10

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 950
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 959
    :cond_1
    sget-object v9, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_2

    .line 960
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeChar(I)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 985
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v8           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_1
    move-exception v6

    .line 989
    .local v6, nsf:Ljava/lang/NoSuchFieldError;
    new-instance v9, Ljava/io/InvalidClassException;

    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 961
    .end local v6           #nsf:Ljava/lang/NoSuchFieldError;
    .restart local v1       #field:Ljava/lang/reflect/Field;
    .restart local v8       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2
    :try_start_2
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_3

    .line 962
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto :goto_1

    .line 963
    :cond_3
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_4

    .line 964
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_1

    .line 965
    :cond_4
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_5

    .line 966
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_1

    .line 967
    :cond_5
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_6

    .line 968
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_1

    .line 969
    :cond_6
    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_7

    .line 970
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v10

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_1

    .line 971
    :cond_7
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_8

    .line 972
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_1

    .line 975
    :cond_8
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 976
    .local v7, objField:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 977
    invoke-virtual {p0, v7}, Ljava/io/ObjectOutputStream;->writeUnshared(Ljava/lang/Object;)V

    goto :goto_1

    .line 979
    :cond_9
    invoke-virtual {p0, v7}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 992
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v2           #fieldDesc:Ljava/io/ObjectStreamField;
    .end local v7           #objField:Ljava/lang/Object;
    .end local v8           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_a
    return-void
.end method

.method private writeHierarchy(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .locals 11
    .parameter "object"
    .parameter "classDesc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/NotActiveException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 1033
    if-nez p1, :cond_0

    .line 1034
    new-instance v8, Ljava/io/NotActiveException;

    invoke-direct {v8}, Ljava/io/NotActiveException;-><init>()V

    throw v8

    .line 1039
    :cond_0
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getHierarchy()Ljava/util/List;

    move-result-object v4

    .line 1040
    .local v4, hierarchy:Ljava/util/List;,"Ljava/util/List<Ljava/io/ObjectStreamClass;>;"
    const/4 v5, 0x0

    .local v5, i:I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .local v1, end:I
    :goto_0
    if-ge v5, v1, :cond_5

    .line 1041
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/ObjectStreamClass;

    .line 1044
    .local v7, osc:Ljava/io/ObjectStreamClass;
    iput-object p1, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    .line 1045
    iput-object v7, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1049
    const/4 v3, 0x0

    .line 1050
    .local v3, executed:Z
    :try_start_0
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->hasMethodWriteObject()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1051
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->getMethodWriteObject()Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1053
    .local v6, method:Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    :try_start_1
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    invoke-virtual {v6, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1054
    const/4 v3, 0x1

    .line 1068
    .end local v6           #method:Ljava/lang/reflect/Method;
    :cond_1
    if-eqz v3, :cond_4

    .line 1069
    :try_start_2
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    .line 1070
    iget-object v8, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v9, 0x78

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1079
    :goto_1
    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    .line 1080
    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1081
    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    .line 1040
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1055
    .restart local v6       #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1056
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    .line 1057
    .local v2, ex:Ljava/lang/Throwable;
    instance-of v8, v2, Ljava/lang/RuntimeException;

    if-eqz v8, :cond_2

    .line 1058
    check-cast v2, Ljava/lang/RuntimeException;

    .end local v2           #ex:Ljava/lang/Throwable;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1079
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    .end local v6           #method:Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v8

    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    .line 1080
    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1081
    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    throw v8

    .line 1059
    .restart local v0       #e:Ljava/lang/reflect/InvocationTargetException;
    .restart local v2       #ex:Ljava/lang/Throwable;
    .restart local v6       #method:Ljava/lang/reflect/Method;
    :cond_2
    :try_start_4
    instance-of v8, v2, Ljava/lang/Error;

    if-eqz v8, :cond_3

    .line 1060
    check-cast v2, Ljava/lang/Error;

    .end local v2           #ex:Ljava/lang/Throwable;
    throw v2

    .line 1062
    .restart local v2       #ex:Ljava/lang/Throwable;
    :cond_3
    check-cast v2, Ljava/io/IOException;

    .end local v2           #ex:Ljava/lang/Throwable;
    throw v2

    .line 1063
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 1064
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1074
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    .end local v6           #method:Ljava/lang/reflect/Method;
    :cond_4
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1084
    .end local v3           #executed:Z
    .end local v7           #osc:Ljava/io/ObjectStreamClass;
    :cond_5
    return-void
.end method

.method private writeNewArray(Ljava/lang/Object;Ljava/lang/Class;Ljava/io/ObjectStreamClass;Ljava/lang/Class;Z)I
    .locals 15
    .parameter "array"
    .parameter
    .parameter "arrayClDesc"
    .parameter
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/io/ObjectStreamClass;",
            "Ljava/lang/Class",
            "<*>;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1133
    .local p2, arrayClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p4, componentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v13, 0x75

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1134
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v12}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)I

    .line 1136
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->nextHandle()I

    move-result v6

    .line 1137
    .local v6, handle:I
    if-nez p5, :cond_0

    .line 1138
    iget-object v12, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v6}, Ljava/io/SerializationHandleMap;->put(Ljava/lang/Object;I)I

    .line 1146
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1147
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p4

    if-ne v0, v12, :cond_1

    .line 1148
    check-cast p1, [I

    .end local p1
    move-object/from16 v8, p1

    check-cast v8, [I

    .line 1149
    .local v8, intArray:[I
    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v13, v8

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1150
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v12, v8

    if-ge v7, v12, :cond_2

    .line 1151
    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    aget v13, v8, v7

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1150
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1153
    .end local v7           #i:I
    .end local v8           #intArray:[I
    .restart local p1
    :cond_1
    sget-object v12, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p4

    if-ne v0, v12, :cond_3

    .line 1154
    check-cast p1, [B

    .end local p1
    move-object/from16 v2, p1

    check-cast v2, [B

    .line 1155
    .local v2, byteArray:[B
    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v13, v2

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1156
    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/4 v13, 0x0

    array-length v14, v2

    invoke-virtual {v12, v2, v13, v14}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1208
    .end local v2           #byteArray:[B
    :cond_2
    return v6

    .line 1157
    .restart local p1
    :cond_3
    sget-object v12, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p4

    if-ne v0, v12, :cond_4

    .line 1158
    check-cast p1, [C

    .end local p1
    move-object/from16 v3, p1

    check-cast v3, [C

    .line 1159
    .local v3, charArray:[C
    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v13, v3

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1160
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_1
    array-length v12, v3

    if-ge v7, v12, :cond_2

    .line 1161
    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    aget-char v13, v3, v7

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 1160
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1163
    .end local v3           #charArray:[C
    .end local v7           #i:I
    .restart local p1
    :cond_4
    sget-object v12, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p4

    if-ne v0, v12, :cond_5

    .line 1164
    check-cast p1, [S

    .end local p1
    move-object/from16 v11, p1

    check-cast v11, [S

    .line 1165
    .local v11, shortArray:[S
    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v13, v11

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1166
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_2
    array-length v12, v11

    if-ge v7, v12, :cond_2

    .line 1167
    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    aget-short v13, v11, v7

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1166
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1169
    .end local v7           #i:I
    .end local v11           #shortArray:[S
    .restart local p1
    :cond_5
    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p4

    if-ne v0, v12, :cond_6

    .line 1170
    check-cast p1, [Z

    .end local p1
    move-object/from16 v1, p1

    check-cast v1, [Z

    .line 1171
    .local v1, booleanArray:[Z
    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v13, v1

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1172
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_3
    array-length v12, v1

    if-ge v7, v12, :cond_2

    .line 1173
    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    aget-boolean v13, v1, v7

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 1172
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1175
    .end local v1           #booleanArray:[Z
    .end local v7           #i:I
    .restart local p1
    :cond_6
    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p4

    if-ne v0, v12, :cond_7

    .line 1176
    check-cast p1, [J

    .end local p1
    move-object/from16 v9, p1

    check-cast v9, [J

    .line 1177
    .local v9, longArray:[J
    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v13, v9

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1178
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_4
    array-length v12, v9

    if-ge v7, v12, :cond_2

    .line 1179
    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    aget-wide v13, v9, v7

    invoke-virtual {v12, v13, v14}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1178
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1181
    .end local v7           #i:I
    .end local v9           #longArray:[J
    .restart local p1
    :cond_7
    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p4

    if-ne v0, v12, :cond_8

    .line 1182
    check-cast p1, [F

    .end local p1
    move-object/from16 v5, p1

    check-cast v5, [F

    .line 1183
    .local v5, floatArray:[F
    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v13, v5

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1184
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_5
    array-length v12, v5

    if-ge v7, v12, :cond_2

    .line 1185
    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    aget v13, v5, v7

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1184
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1187
    .end local v5           #floatArray:[F
    .end local v7           #i:I
    .restart local p1
    :cond_8
    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p4

    if-ne v0, v12, :cond_9

    .line 1188
    check-cast p1, [D

    .end local p1
    move-object/from16 v4, p1

    check-cast v4, [D

    .line 1189
    .local v4, doubleArray:[D
    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v13, v4

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1190
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_6
    array-length v12, v4

    if-ge v7, v12, :cond_2

    .line 1191
    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    aget-wide v13, v4, v7

    invoke-virtual {v12, v13, v14}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 1190
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 1194
    .end local v4           #doubleArray:[D
    .end local v7           #i:I
    .restart local p1
    :cond_9
    new-instance v12, Ljava/io/InvalidClassException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Wrong base type in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1198
    :cond_a
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    move-object/from16 v10, p1

    check-cast v10, [Ljava/lang/Object;

    .line 1199
    .local v10, objectArray:[Ljava/lang/Object;
    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v13, v10

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1200
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_7
    array-length v12, v10

    if-ge v7, v12, :cond_2

    .line 1205
    aget-object v12, v10, v7

    invoke-virtual {p0, v12}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1200
    add-int/lit8 v7, v7, 0x1

    goto :goto_7
.end method

.method private writeNewClass(Ljava/lang/Class;Z)I
    .locals 4
    .parameter
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1225
    .local p1, object:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v3, 0x76

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1232
    invoke-static {p1}, Ljava/io/ObjectStreamClass;->lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 1236
    .local v0, clDesc:Ljava/io/ObjectStreamClass;
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1237
    invoke-direct {p0, p1, v0, p2}, Ljava/io/ObjectOutputStream;->writeEnumDesc(Ljava/lang/Class;Ljava/io/ObjectStreamClass;Z)Ljava/io/ObjectStreamClass;

    .line 1242
    :goto_0
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->nextHandle()I

    move-result v1

    .line 1243
    .local v1, handle:I
    if-nez p2, :cond_0

    .line 1244
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v2, p1, v1}, Ljava/io/SerializationHandleMap;->put(Ljava/lang/Object;I)I

    .line 1247
    :cond_0
    return v1

    .line 1239
    .end local v1           #handle:I
    :cond_1
    invoke-direct {p0, v0, p2}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)I

    goto :goto_0
.end method

.method private writeNewClassDesc(Ljava/io/ObjectStreamClass;)V
    .locals 5
    .parameter "classDesc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1265
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1266
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1267
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getFlags()B

    move-result v1

    .line 1269
    .local v1, flags:B
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->isExternalizable()Z

    move-result v0

    .line 1271
    .local v0, externalizable:Z
    if-eqz v0, :cond_0

    .line 1272
    iget v2, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1273
    and-int/lit8 v2, v1, -0x9

    int-to-byte v1, v2

    .line 1280
    :cond_0
    :goto_0
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1281
    const/16 v2, 0x12

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getFlags()B

    move-result v3

    if-eq v2, v3, :cond_2

    .line 1282
    invoke-direct {p0, p1, v0}, Ljava/io/ObjectOutputStream;->writeFieldDescriptors(Ljava/io/ObjectStreamClass;Z)V

    .line 1287
    :goto_1
    return-void

    .line 1277
    :cond_1
    or-int/lit8 v2, v1, 0x8

    int-to-byte v1, v2

    goto :goto_0

    .line 1285
    :cond_2
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_1
.end method

.method private writeNewEnum(Ljava/lang/Object;Ljava/lang/Class;Z)I
    .locals 12
    .parameter "object"
    .parameter
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, theClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v11, 0x1

    .line 1731
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    .line 1733
    .local v5, originalCurrentPutField:Ljava/io/EmulatedFieldsForDumping;
    const/4 v9, 0x0

    iput-object v9, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    .line 1735
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v10, 0x7e

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1736
    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1738
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    goto :goto_0

    .line 1740
    :cond_0
    invoke-static {p2}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 1741
    .local v0, classDesc:Ljava/io/ObjectStreamClass;
    invoke-direct {p0, p2, v0, p3}, Ljava/io/ObjectOutputStream;->writeEnumDesc(Ljava/lang/Class;Ljava/io/ObjectStreamClass;Z)Ljava/io/ObjectStreamClass;

    .line 1743
    const/4 v6, -0x1

    .line 1744
    .local v6, previousHandle:I
    if-eqz p3, :cond_1

    .line 1745
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v9, p1}, Ljava/io/SerializationHandleMap;->get(Ljava/lang/Object;)I

    move-result v6

    .line 1747
    :cond_1
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->registerObjectWritten(Ljava/lang/Object;)I

    move-result v3

    .line 1749
    .local v3, handle:I
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getSuperclass()Ljava/io/ObjectStreamClass;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/ObjectStreamClass;->fields()[Ljava/io/ObjectStreamField;

    move-result-object v2

    .line 1752
    .local v2, fields:[Ljava/io/ObjectStreamField;
    if-eqz v2, :cond_4

    array-length v9, v2

    if-le v9, v11, :cond_4

    .line 1753
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getSuperclass()Ljava/io/ObjectStreamClass;

    move-result-object v9

    aget-object v10, v2, v11

    invoke-virtual {v9, v10}, Ljava/io/ObjectStreamClass;->getReflectionField(Ljava/io/ObjectStreamField;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1754
    .local v1, field:Ljava/lang/reflect/Field;
    if-nez v1, :cond_2

    .line 1755
    new-instance v9, Ljava/lang/NoSuchFieldError;

    invoke-direct {v9}, Ljava/lang/NoSuchFieldError;-><init>()V

    throw v9

    .line 1758
    :cond_2
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1759
    .local v7, str:Ljava/lang/String;
    const/4 v8, -0x1

    .line 1760
    .local v8, strHandle:I
    if-nez p3, :cond_3

    .line 1761
    invoke-direct {p0, v7}, Ljava/io/ObjectOutputStream;->dumpCycle(Ljava/lang/Object;)I

    move-result v8

    .line 1763
    :cond_3
    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 1764
    invoke-direct {p0, v7, p3}, Ljava/io/ObjectOutputStream;->writeNewString(Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1771
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v7           #str:Ljava/lang/String;
    .end local v8           #strHandle:I
    :cond_4
    if-eqz p3, :cond_5

    .line 1773
    invoke-direct {p0, p1, v6}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;I)V

    .line 1775
    :cond_5
    iput-object v5, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    .line 1776
    return v3

    .line 1766
    .restart local v1       #field:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v4

    .line 1767
    .local v4, iae:Ljava/lang/IllegalAccessException;
    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9
.end method

.method private writeNewException(Ljava/lang/Exception;)V
    .locals 3
    .parameter "ex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1322
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1323
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->resetSeenObjects()V

    .line 1324
    invoke-direct {p0, p1, v2, v2, v2}, Ljava/io/ObjectOutputStream;->writeObjectInternal(Ljava/lang/Object;ZZZ)I

    .line 1325
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->resetSeenObjects()V

    .line 1326
    return-void
.end method

.method private writeNewObject(Ljava/lang/Object;Ljava/lang/Class;Ljava/io/ObjectStreamClass;Z)I
    .locals 11
    .parameter "object"
    .parameter
    .parameter "clDesc"
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/io/ObjectStreamClass;",
            "Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, theClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 1356
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    .line 1357
    .local v4, originalCurrentPutField:Ljava/io/EmulatedFieldsForDumping;
    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    .line 1360
    invoke-virtual {p3}, Ljava/io/ObjectStreamClass;->isExternalizable()Z

    move-result v1

    .line 1361
    .local v1, externalizable:Z
    invoke-virtual {p3}, Ljava/io/ObjectStreamClass;->isSerializable()Z

    move-result v6

    .line 1362
    .local v6, serializable:Z
    if-nez v1, :cond_0

    if-nez v6, :cond_0

    .line 1364
    new-instance v7, Ljava/io/NotSerializableException;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1368
    :cond_0
    iget-object v8, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v9, 0x73

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1369
    invoke-direct {p0, p3, v7}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)I

    .line 1370
    const/4 v5, -0x1

    .line 1371
    .local v5, previousHandle:I
    if-eqz p4, :cond_1

    .line 1372
    iget-object v8, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v8, p1}, Ljava/io/SerializationHandleMap;->get(Ljava/lang/Object;)I

    move-result v5

    .line 1375
    :cond_1
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->registerObjectWritten(Ljava/lang/Object;)I

    move-result v2

    .line 1381
    .local v2, handle:I
    iput-object p1, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    .line 1382
    iput-object p3, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1384
    if-eqz v1, :cond_7

    .line 1385
    :try_start_0
    iget v8, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    if-ne v8, v3, :cond_4

    .line 1386
    .local v3, noBlockData:Z
    :goto_0
    if-eqz v3, :cond_2

    .line 1387
    iget-object v7, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    iput-object v7, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    .line 1390
    :cond_2
    move-object v0, p1

    check-cast v0, Ljava/io/Externalizable;

    move-object v7, v0

    invoke-interface {v7, p0}, Ljava/io/Externalizable;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 1391
    if-eqz v3, :cond_5

    .line 1392
    const/4 v7, 0x0

    iput-object v7, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1409
    .end local v3           #noBlockData:Z
    :goto_1
    if-eqz p4, :cond_3

    .line 1411
    invoke-direct {p0, p1, v5}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;I)V

    .line 1413
    :cond_3
    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    .line 1414
    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1415
    iput-object v4, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    .line 1418
    return v2

    :cond_4
    move v3, v7

    .line 1385
    goto :goto_0

    .line 1398
    .restart local v3       #noBlockData:Z
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    .line 1399
    iget-object v7, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v8, 0x78

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1409
    .end local v3           #noBlockData:Z
    :catchall_0
    move-exception v7

    if-eqz p4, :cond_6

    .line 1411
    invoke-direct {p0, p1, v5}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;I)V

    .line 1413
    :cond_6
    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    .line 1414
    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1415
    iput-object v4, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    throw v7

    .line 1404
    :cond_7
    :try_start_2
    iget-object v7, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    invoke-direct {p0, p1, v7}, Ljava/io/ObjectOutputStream;->writeHierarchy(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private writeNewString(Ljava/lang/String;Z)I
    .locals 9
    .parameter "object"
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1434
    invoke-static {p1, v8}, Ljava/nio/charset/ModifiedUtf8;->countBytes(Ljava/lang/String;Z)J

    move-result-wide v1

    .line 1436
    .local v1, count:J
    const/4 v4, 0x0

    .line 1437
    .local v4, offset:I
    const-wide/32 v6, 0xffff

    cmp-long v6, v1, v6

    if-gtz v6, :cond_1

    .line 1438
    long-to-int v6, v1

    add-int/lit8 v6, v6, 0x3

    new-array v0, v6, [B

    .line 1439
    .local v0, buffer:[B
    add-int/lit8 v5, v4, 0x1

    .end local v4           #offset:I
    .local v5, offset:I
    const/16 v6, 0x74

    aput-byte v6, v0, v4

    .line 1440
    long-to-int v6, v1

    int-to-short v6, v6

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v5, v6, v7}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    .line 1441
    add-int/lit8 v4, v5, 0x2

    .line 1448
    .end local v5           #offset:I
    .restart local v4       #offset:I
    :goto_0
    invoke-static {v0, v4, p1}, Ljava/nio/charset/ModifiedUtf8;->encode([BILjava/lang/String;)V

    .line 1449
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v7, v0

    invoke-virtual {v6, v0, v8, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1451
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->nextHandle()I

    move-result v3

    .line 1452
    .local v3, handle:I
    if-nez p2, :cond_0

    .line 1453
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v6, p1, v3}, Ljava/io/SerializationHandleMap;->put(Ljava/lang/Object;I)I

    .line 1456
    :cond_0
    return v3

    .line 1443
    .end local v0           #buffer:[B
    .end local v3           #handle:I
    :cond_1
    long-to-int v6, v1

    add-int/lit8 v6, v6, 0x9

    new-array v0, v6, [B

    .line 1444
    .restart local v0       #buffer:[B
    add-int/lit8 v5, v4, 0x1

    .end local v4           #offset:I
    .restart local v5       #offset:I
    const/16 v6, 0x7c

    aput-byte v6, v0, v4

    .line 1445
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v5, v1, v2, v6}, Llibcore/io/Memory;->pokeLong([BIJLjava/nio/ByteOrder;)V

    .line 1446
    add-int/lit8 v4, v5, 0x8

    .end local v5           #offset:I
    .restart local v4       #offset:I
    goto :goto_0
.end method

.method private writeNull()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1468
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1469
    return-void
.end method

.method private writeObject(Ljava/lang/Object;Z)V
    .locals 5
    .parameter "object"
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1501
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-ne v3, v4, :cond_2

    .line 1502
    .local v2, setOutput:Z
    :goto_0
    if-eqz v2, :cond_0

    .line 1503
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    .line 1507
    :cond_0
    iget-boolean v3, p0, Ljava/io/ObjectOutputStream;->subclassOverridingImplementation:Z

    if-eqz v3, :cond_3

    if-nez p2, :cond_3

    .line 1508
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream;->writeObjectOverride(Ljava/lang/Object;)V

    .line 1534
    :cond_1
    :goto_1
    return-void

    .line 1501
    .end local v2           #setOutput:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1514
    .restart local v2       #setOutput:Z
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    .line 1517
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2, v3, v4}, Ljava/io/ObjectOutputStream;->writeObjectInternal(Ljava/lang/Object;ZZZ)I

    .line 1518
    if-eqz v2, :cond_1

    .line 1519
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    iput-object v3, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1521
    :catch_0
    move-exception v0

    .line 1524
    .local v0, ioEx1:Ljava/io/IOException;
    iget v3, p0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    if-nez v3, :cond_4

    iget-object v3, p0, Ljava/io/ObjectOutputStream;->nestedException:Ljava/io/StreamCorruptedException;

    if-eq v0, v3, :cond_4

    .line 1526
    :try_start_1
    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeNewException(Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1532
    :cond_4
    throw v0

    .line 1527
    :catch_1
    move-exception v1

    .line 1528
    .local v1, ioEx2:Ljava/io/IOException;
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->nestedException:Ljava/io/StreamCorruptedException;

    invoke-virtual {v3}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1529
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->nestedException:Ljava/io/StreamCorruptedException;

    throw v3
.end method

.method private writeObjectInternal(Ljava/lang/Object;ZZZ)I
    .locals 17
    .parameter "object"
    .parameter "unshared"
    .parameter "computeClassBasedReplacement"
    .parameter "computeStreamReplacement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1560
    if-nez p1, :cond_0

    .line 1561
    invoke-direct/range {p0 .. p0}, Ljava/io/ObjectOutputStream;->writeNull()V

    .line 1562
    const/4 v14, -0x1

    .line 1673
    .end local p1
    :goto_0
    return v14

    .line 1564
    .restart local p1
    :cond_0
    const/4 v9, -0x1

    .line 1565
    .local v9, handle:I
    if-nez p2, :cond_1

    .line 1566
    invoke-direct/range {p0 .. p1}, Ljava/io/ObjectOutputStream;->dumpCycle(Ljava/lang/Object;)I

    move-result v9

    .line 1567
    const/4 v3, -0x1

    if-eq v9, v3, :cond_1

    move v14, v9

    .line 1568
    goto :goto_0

    .line 1573
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 1574
    .local v5, objClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v5}, Ljava/io/ObjectStreamClass;->lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v6

    .line 1576
    .local v6, clDesc:Ljava/io/ObjectStreamClass;
    move-object/from16 v0, p0

    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    .line 1579
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    if-eqz v3, :cond_2

    if-nez p4, :cond_4

    .line 1581
    :cond_2
    sget-object v3, Ljava/io/ObjectStreamClass;->CLASSCLASS:Ljava/lang/Class;

    if-ne v5, v3, :cond_3

    .line 1582
    check-cast p1, Ljava/lang/Class;

    .end local p1
    invoke-direct/range {p0 .. p2}, Ljava/io/ObjectOutputStream;->writeNewClass(Ljava/lang/Class;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    .line 1673
    move-object/from16 v0, p0

    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto :goto_0

    .line 1585
    .restart local p1
    :cond_3
    :try_start_1
    sget-object v3, Ljava/io/ObjectStreamClass;->OBJECTSTREAMCLASSCLASS:Ljava/lang/Class;

    if-ne v5, v3, :cond_4

    .line 1586
    check-cast p1, Ljava/io/ObjectStreamClass;

    .end local p1
    invoke-direct/range {p0 .. p2}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v14

    .line 1673
    move-object/from16 v0, p0

    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto :goto_0

    .line 1590
    .restart local p1
    :cond_4
    :try_start_2
    invoke-virtual {v6}, Ljava/io/ObjectStreamClass;->isSerializable()Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz p3, :cond_8

    .line 1591
    invoke-virtual {v6}, Ljava/io/ObjectStreamClass;->hasMethodWriteReplace()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1592
    invoke-virtual {v6}, Ljava/io/ObjectStreamClass;->getMethodWriteReplace()Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    .line 1593
    .local v12, methodWriteReplace:Ljava/lang/reflect/Method;
    const/4 v13, 0x0

    .line 1595
    .local v13, replObj:Ljava/lang/Object;
    const/4 v3, 0x0

    :try_start_3
    check-cast v3, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v13

    .line 1610
    :goto_1
    move-object/from16 v0, p1

    if-eq v13, v0, :cond_8

    .line 1612
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_4
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v13, v3, v4, v1}, Ljava/io/ObjectOutputStream;->writeObjectInternal(Ljava/lang/Object;ZZZ)I

    move-result v14

    .line 1616
    .local v14, replacementHandle:I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_5

    .line 1617
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v14}, Ljava/io/SerializationHandleMap;->put(Ljava/lang/Object;I)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1673
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_0

    .line 1596
    .end local v14           #replacementHandle:I
    :catch_0
    move-exception v10

    .line 1597
    .local v10, iae:Ljava/lang/IllegalAccessException;
    move-object/from16 v13, p1

    .line 1609
    goto :goto_1

    .line 1598
    .end local v10           #iae:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v11

    .line 1601
    .local v11, ite:Ljava/lang/reflect/InvocationTargetException;
    :try_start_5
    invoke-virtual {v11}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v16

    .line 1602
    .local v16, target:Ljava/lang/Throwable;
    move-object/from16 v0, v16

    instance-of v3, v0, Ljava/io/ObjectStreamException;

    if-eqz v3, :cond_6

    .line 1603
    check-cast v16, Ljava/io/ObjectStreamException;

    .end local v16           #target:Ljava/lang/Throwable;
    throw v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1673
    .end local v11           #ite:Ljava/lang/reflect/InvocationTargetException;
    .end local v12           #methodWriteReplace:Ljava/lang/reflect/Method;
    .end local v13           #replObj:Ljava/lang/Object;
    .end local p1
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget v4, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    throw v3

    .line 1604
    .restart local v11       #ite:Ljava/lang/reflect/InvocationTargetException;
    .restart local v12       #methodWriteReplace:Ljava/lang/reflect/Method;
    .restart local v13       #replObj:Ljava/lang/Object;
    .restart local v16       #target:Ljava/lang/Throwable;
    .restart local p1
    :cond_6
    :try_start_6
    move-object/from16 v0, v16

    instance-of v3, v0, Ljava/lang/Error;

    if-eqz v3, :cond_7

    .line 1605
    check-cast v16, Ljava/lang/Error;

    .end local v16           #target:Ljava/lang/Throwable;
    throw v16

    .line 1607
    .restart local v16       #target:Ljava/lang/Throwable;
    :cond_7
    check-cast v16, Ljava/lang/RuntimeException;

    .end local v16           #target:Ljava/lang/Throwable;
    throw v16

    .line 1628
    .end local v11           #ite:Ljava/lang/reflect/InvocationTargetException;
    .end local v12           #methodWriteReplace:Ljava/lang/reflect/Method;
    .end local v13           #replObj:Ljava/lang/Object;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    if-eqz v3, :cond_a

    if-eqz p4, :cond_a

    .line 1630
    invoke-virtual/range {p0 .. p1}, Ljava/io/ObjectOutputStream;->replaceObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 1631
    .local v15, streamReplacement:Ljava/lang/Object;
    move-object/from16 v0, p1

    if-eq v15, v0, :cond_a

    .line 1633
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v15, v3, v1, v4}, Ljava/io/ObjectOutputStream;->writeObjectInternal(Ljava/lang/Object;ZZZ)I

    move-result v14

    .line 1636
    .restart local v14       #replacementHandle:I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_9

    .line 1637
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v14}, Ljava/io/SerializationHandleMap;->put(Ljava/lang/Object;I)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1673
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_0

    .line 1646
    .end local v14           #replacementHandle:I
    .end local v15           #streamReplacement:Ljava/lang/Object;
    :cond_a
    :try_start_7
    sget-object v3, Ljava/io/ObjectStreamClass;->CLASSCLASS:Ljava/lang/Class;

    if-ne v5, v3, :cond_b

    .line 1647
    check-cast p1, Ljava/lang/Class;

    .end local p1
    invoke-direct/range {p0 .. p2}, Ljava/io/ObjectOutputStream;->writeNewClass(Ljava/lang/Class;Z)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v14

    .line 1673
    move-object/from16 v0, p0

    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_0

    .line 1651
    .restart local p1
    :cond_b
    :try_start_8
    sget-object v3, Ljava/io/ObjectStreamClass;->OBJECTSTREAMCLASSCLASS:Ljava/lang/Class;

    if-ne v5, v3, :cond_c

    .line 1652
    check-cast p1, Ljava/io/ObjectStreamClass;

    .end local p1
    invoke-direct/range {p0 .. p2}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v14

    .line 1673
    move-object/from16 v0, p0

    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_0

    .line 1656
    .restart local p1
    :cond_c
    :try_start_9
    sget-object v3, Ljava/io/ObjectStreamClass;->STRINGCLASS:Ljava/lang/Class;

    if-ne v5, v3, :cond_d

    .line 1657
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-direct/range {p0 .. p2}, Ljava/io/ObjectOutputStream;->writeNewString(Ljava/lang/String;Z)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v14

    .line 1673
    move-object/from16 v0, p0

    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_0

    .line 1661
    .restart local p1
    :cond_d
    :try_start_a
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1662
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Ljava/io/ObjectOutputStream;->writeNewArray(Ljava/lang/Object;Ljava/lang/Class;Ljava/io/ObjectStreamClass;Ljava/lang/Class;Z)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v14

    .line 1673
    move-object/from16 v0, p0

    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_0

    .line 1666
    :cond_e
    :try_start_b
    move-object/from16 v0, p1

    instance-of v3, v0, Ljava/lang/Enum;

    if-eqz v3, :cond_f

    .line 1667
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v5, v2}, Ljava/io/ObjectOutputStream;->writeNewEnum(Ljava/lang/Object;Ljava/lang/Class;Z)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v14

    .line 1673
    move-object/from16 v0, p0

    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_0

    .line 1671
    :cond_f
    :try_start_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v5, v6, v2}, Ljava/io/ObjectOutputStream;->writeNewObject(Ljava/lang/Object;Ljava/lang/Class;Ljava/io/ObjectStreamClass;Z)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v14

    .line 1673
    move-object/from16 v0, p0

    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_0
.end method


# virtual methods
.method protected annotateClass(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    .local p1, aClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    return-void
.end method

.method protected annotateProxyClass(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    .local p1, aClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->flush()V

    .line 338
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/FilterOutputStream;->close()V

    .line 339
    return-void
.end method

.method public defaultWriteObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 366
    new-instance v0, Ljava/io/NotActiveException;

    invoke-direct {v0}, Ljava/io/NotActiveException;-><init>()V

    throw v0

    .line 368
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    iget-object v1, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    invoke-direct {p0, v0, v1}, Ljava/io/ObjectOutputStream;->writeFieldValues(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    .line 369
    return-void
.end method

.method protected drain()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v3, 0x400

    .line 379
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    if-eqz v4, :cond_0

    iget-object v4, p0, Ljava/io/ObjectOutputStream;->primitiveTypesBuffer:Ljava/io/ByteArrayOutputStream;

    if-nez v4, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    const/4 v0, 0x0

    .line 385
    .local v0, offset:I
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->primitiveTypesBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 387
    .local v2, written:[B
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_4

    .line 388
    array-length v4, v2

    sub-int/2addr v4, v0

    if-le v4, v3, :cond_2

    move v1, v3

    .line 390
    .local v1, toWrite:I
    :goto_2
    const/16 v4, 0x100

    if-ge v1, v4, :cond_3

    .line 391
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v5, 0x77

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 392
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    int-to-byte v5, v1

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 399
    :goto_3
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v4, v2, v0, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 400
    add-int/2addr v0, v1

    .line 401
    goto :goto_1

    .line 388
    .end local v1           #toWrite:I
    :cond_2
    array-length v4, v2

    sub-int v1, v4, v0

    goto :goto_2

    .line 394
    .restart local v1       #toWrite:I
    :cond_3
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v5, 0x7a

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 395
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_3

    .line 404
    .end local v1           #toWrite:I
    :cond_4
    iput-object v6, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    .line 405
    iput-object v6, p0, Ljava/io/ObjectOutputStream;->primitiveTypesBuffer:Ljava/io/ByteArrayOutputStream;

    goto :goto_0
.end method

.method protected enableReplaceObject(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 446
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    .line 447
    .local v0, originalValue:Z
    iput-boolean p1, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    .line 448
    return v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 461
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    .line 462
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 463
    return-void
.end method

.method public putFields()Ljava/io/ObjectOutputStream$PutField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 504
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 505
    new-instance v0, Ljava/io/NotActiveException;

    invoke-direct {v0}, Ljava/io/NotActiveException;-><init>()V

    throw v0

    .line 507
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    if-nez v0, :cond_1

    .line 508
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->computePutField()V

    .line 510
    :cond_1
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    return-object v0
.end method

.method protected replaceObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 554
    return-object p1
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 570
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    .line 575
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 577
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->resetState()V

    .line 578
    return-void
.end method

.method public useProtocolVersion(I)V
    .locals 3
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 617
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v0}, Ljava/io/SerializationHandleMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 618
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set protocol version when stream in use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 620
    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 622
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    :cond_1
    iput p1, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    .line 625
    return-void
.end method

.method public write(I)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 660
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 661
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 662
    return-void
.end method

.method public write([BII)V
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 644
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 645
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 646
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 673
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 674
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 675
    return-void
.end method

.method public writeByte(I)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 686
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 687
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 688
    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 701
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 702
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 703
    return-void
.end method

.method public writeChar(I)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 714
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 715
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 716
    return-void
.end method

.method public writeChars(Ljava/lang/String;)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 728
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 729
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChars(Ljava/lang/String;)V

    .line 730
    return-void
.end method

.method protected writeClassDescriptor(Ljava/io/ObjectStreamClass;)V
    .locals 0
    .parameter "classDesc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1299
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->writeNewClassDesc(Ljava/io/ObjectStreamClass;)V

    .line 1300
    return-void
.end method

.method public writeDouble(D)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 824
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 825
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 826
    return-void
.end method

.method public writeFields()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 882
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    if-nez v0, :cond_0

    .line 883
    new-instance v0, Ljava/io/NotActiveException;

    invoke-direct {v0}, Ljava/io/NotActiveException;-><init>()V

    throw v0

    .line 885
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeFieldValues(Ljava/io/EmulatedFieldsForDumping;)V

    .line 886
    return-void
.end method

.method public writeFloat(F)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1003
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 1004
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1005
    return-void
.end method

.method public writeInt(I)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1095
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 1096
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1097
    return-void
.end method

.method public writeLong(J)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1108
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 1109
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1110
    return-void
.end method

.method public final writeObject(Ljava/lang/Object;)V
    .locals 1
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1481
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;Z)V

    .line 1482
    return-void
.end method

.method protected writeObjectOverride(Ljava/lang/Object;)V
    .locals 1
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1789
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream;->subclassOverridingImplementation:Z

    if-nez v0, :cond_0

    .line 1791
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1793
    :cond_0
    return-void
.end method

.method public writeShort(I)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1804
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 1805
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1806
    return-void
.end method

.method protected writeStreamHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1815
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v1, -0x5313

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1816
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1817
    return-void
.end method

.method public writeUTF(Ljava/lang/String;)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1829
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 1830
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1831
    return-void
.end method

.method public writeUnshared(Ljava/lang/Object;)V
    .locals 1
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1497
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;Z)V

    .line 1498
    return-void
.end method
