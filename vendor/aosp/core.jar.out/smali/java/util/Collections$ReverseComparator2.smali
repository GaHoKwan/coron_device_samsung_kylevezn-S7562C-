.class final Ljava/util/Collections$ReverseComparator2;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReverseComparator2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3fa6c354d51L


# instance fields
.field private final cmp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, this:Ljava/util/Collections$ReverseComparator2;,"Ljava/util/Collections$ReverseComparator2<TT;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p1, p0, Ljava/util/Collections$ReverseComparator2;->cmp:Ljava/util/Comparator;

    .line 207
    return-void
.end method

.method static synthetic access$500(Ljava/util/Collections$ReverseComparator2;)Ljava/util/Comparator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 201
    iget-object v0, p0, Ljava/util/Collections$ReverseComparator2;->cmp:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, this:Ljava/util/Collections$ReverseComparator2;,"Ljava/util/Collections$ReverseComparator2<TT;>;"
    .local p1, o1:Ljava/lang/Object;,"TT;"
    .local p2, o2:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Ljava/util/Collections$ReverseComparator2;->cmp:Ljava/util/Comparator;

    invoke-interface {v0, p2, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 214
    .local p0, this:Ljava/util/Collections$ReverseComparator2;,"Ljava/util/Collections$ReverseComparator2<TT;>;"
    instance-of v0, p1, Ljava/util/Collections$ReverseComparator2;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Collections$ReverseComparator2;

    .end local p1
    iget-object v0, p1, Ljava/util/Collections$ReverseComparator2;->cmp:Ljava/util/Comparator;

    iget-object v1, p0, Ljava/util/Collections$ReverseComparator2;->cmp:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 219
    .local p0, this:Ljava/util/Collections$ReverseComparator2;,"Ljava/util/Collections$ReverseComparator2<TT;>;"
    iget-object v0, p0, Ljava/util/Collections$ReverseComparator2;->cmp:Ljava/util/Comparator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method
