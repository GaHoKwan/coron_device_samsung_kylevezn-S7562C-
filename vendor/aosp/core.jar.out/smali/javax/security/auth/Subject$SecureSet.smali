.class final Ljavax/security/auth/Subject$SecureSet;
.super Ljava/util/AbstractSet;
.source "Subject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/security/auth/Subject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SecureSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/security/auth/Subject$SecureSet$SecureIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SST:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TSST;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final SET_Principal:I = 0x0

.field private static final SET_PrivCred:I = 0x1

.field private static final SET_PubCred:I = 0x2

.field private static final serialVersionUID:J = 0x6dcc328017557e27L


# instance fields
.field private elements:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TSST;>;"
        }
    .end annotation
.end field

.field private transient permission:Ljavax/security/auth/AuthPermission;

.field private setType:I

.field final synthetic this$0:Ljavax/security/auth/Subject;


# direct methods
.method protected constructor <init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;)V
    .locals 1
    .parameter
    .parameter "perm"

    .prologue
    .line 531
    .local p0, this:Ljavax/security/auth/Subject$SecureSet;,"Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    iput-object p1, p0, Ljavax/security/auth/Subject$SecureSet;->this$0:Ljavax/security/auth/Subject;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 532
    iput-object p2, p0, Ljavax/security/auth/Subject$SecureSet;->permission:Ljavax/security/auth/AuthPermission;

    .line 533
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    .line 534
    return-void
.end method

.method protected constructor <init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;Ljava/util/Collection;)V
    .locals 4
    .parameter
    .parameter "perm"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/security/auth/AuthPermission;",
            "Ljava/util/Collection",
            "<+TSST;>;)V"
        }
    .end annotation

    .prologue
    .line 539
    .local p0, this:Ljavax/security/auth/Subject$SecureSet;,"Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    .local p3, s:Ljava/util/Collection;,"Ljava/util/Collection<+TSST;>;"
    invoke-direct {p0, p1, p2}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;)V

    .line 543
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v2, 0x1

    .line 545
    .local v2, trust:Z
    :goto_0
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 546
    .local v1, o:Ljava/lang/Object;,"TSST;"
    invoke-direct {p0, v1}, Ljavax/security/auth/Subject$SecureSet;->verifyElement(Ljava/lang/Object;)V

    .line 547
    if-nez v2, :cond_1

    iget-object v3, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 548
    :cond_1
    iget-object v3, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 543
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #o:Ljava/lang/Object;,"TSST;"
    .end local v2           #trust:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 551
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #trust:Z
    :cond_3
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 677
    .local p0, this:Ljavax/security/auth/Subject$SecureSet;,"Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 679
    iget v2, p0, Ljavax/security/auth/Subject$SecureSet;->setType:I

    packed-switch v2, :pswitch_data_0

    .line 690
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 681
    :pswitch_0
    invoke-static {}, Ljavax/security/auth/Subject;->access$000()Ljavax/security/auth/AuthPermission;

    move-result-object v2

    iput-object v2, p0, Ljavax/security/auth/Subject$SecureSet;->permission:Ljavax/security/auth/AuthPermission;

    .line 693
    :goto_0
    iget-object v2, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 694
    .local v0, element:Ljava/lang/Object;,"TSST;"
    invoke-direct {p0, v0}, Ljavax/security/auth/Subject$SecureSet;->verifyElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 684
    .end local v0           #element:Ljava/lang/Object;,"TSST;"
    .end local v1           #i$:Ljava/util/Iterator;
    :pswitch_1
    invoke-static {}, Ljavax/security/auth/Subject;->access$200()Ljavax/security/auth/AuthPermission;

    move-result-object v2

    iput-object v2, p0, Ljavax/security/auth/Subject$SecureSet;->permission:Ljavax/security/auth/AuthPermission;

    goto :goto_0

    .line 687
    :pswitch_2
    invoke-static {}, Ljavax/security/auth/Subject;->access$300()Ljavax/security/auth/AuthPermission;

    move-result-object v2

    iput-object v2, p0, Ljavax/security/auth/Subject$SecureSet;->permission:Ljavax/security/auth/AuthPermission;

    goto :goto_0

    .line 696
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    return-void

    .line 679
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private verifyElement(Ljava/lang/Object;)V
    .locals 2
    .parameter "o"

    .prologue
    .line 556
    .local p0, this:Ljavax/security/auth/Subject$SecureSet;,"Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    if-nez p1, :cond_0

    .line 557
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 559
    :cond_0
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->permission:Ljavax/security/auth/AuthPermission;

    invoke-static {}, Ljavax/security/auth/Subject;->access$000()Ljavax/security/auth/AuthPermission;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const-class v0, Ljava/security/Principal;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 560
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Element is not instance of java.security.Principal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_1
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 701
    .local p0, this:Ljavax/security/auth/Subject$SecureSet;,"Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->permission:Ljavax/security/auth/AuthPermission;

    invoke-static {}, Ljavax/security/auth/Subject;->access$200()Ljavax/security/auth/AuthPermission;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 702
    const/4 v0, 0x1

    iput v0, p0, Ljavax/security/auth/Subject$SecureSet;->setType:I

    .line 709
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 710
    return-void

    .line 703
    :cond_0
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->permission:Ljavax/security/auth/AuthPermission;

    invoke-static {}, Ljavax/security/auth/Subject;->access$000()Ljavax/security/auth/AuthPermission;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 704
    const/4 v0, 0x0

    iput v0, p0, Ljavax/security/auth/Subject$SecureSet;->setType:I

    goto :goto_0

    .line 706
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Ljavax/security/auth/Subject$SecureSet;->setType:I

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSST;)Z"
        }
    .end annotation

    .prologue
    .line 571
    .local p0, this:Ljavax/security/auth/Subject$SecureSet;,"Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    .local p1, o:Ljava/lang/Object;,"TSST;"
    invoke-direct {p0, p1}, Ljavax/security/auth/Subject$SecureSet;->verifyElement(Ljava/lang/Object;)V

    .line 573
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->this$0:Ljavax/security/auth/Subject;

    #calls: Ljavax/security/auth/Subject;->checkState()V
    invoke-static {v0}, Ljavax/security/auth/Subject;->access$100(Ljavax/security/auth/Subject;)V

    .line 575
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 576
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 577
    const/4 v0, 0x1

    .line 579
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final get(Ljava/lang/Class;)Ljava/util/Set;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 626
    .local p0, this:Ljavax/security/auth/Subject$SecureSet;,"Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    .local p1, c:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    if-nez p1, :cond_0

    .line 627
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 630
    :cond_0
    new-instance v2, Ljavax/security/auth/Subject$SecureSet$2;

    invoke-direct {v2, p0, p1}, Ljavax/security/auth/Subject$SecureSet$2;-><init>(Ljavax/security/auth/Subject$SecureSet;Ljava/lang/Class;)V

    .line 667
    .local v2, s:Ljava/util/AbstractSet;,"Ljava/util/AbstractSet<TE;>;"
    invoke-virtual {p0}, Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 668
    .local v1, o:Ljava/lang/Object;,"TSST;"
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 669
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/security/auth/Subject$SecureSet$2;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 672
    .end local v1           #o:Ljava/lang/Object;,"TSST;"
    :cond_2
    return-object v2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TSST;>;"
        }
    .end annotation

    .prologue
    .line 586
    .local p0, this:Ljavax/security/auth/Subject$SecureSet;,"Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->permission:Ljavax/security/auth/AuthPermission;

    invoke-static {}, Ljavax/security/auth/Subject;->access$200()Ljavax/security/auth/AuthPermission;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 591
    new-instance v0, Ljavax/security/auth/Subject$SecureSet$1;

    iget-object v1, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet$1;-><init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V

    .line 603
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljavax/security/auth/Subject$SecureSet$SecureIterator;

    iget-object v1, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet$SecureIterator;-><init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 609
    .local p0, this:Ljavax/security/auth/Subject$SecureSet;,"Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    if-nez p1, :cond_0

    .line 610
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 612
    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 617
    .local p0, this:Ljavax/security/auth/Subject$SecureSet;,"Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method
