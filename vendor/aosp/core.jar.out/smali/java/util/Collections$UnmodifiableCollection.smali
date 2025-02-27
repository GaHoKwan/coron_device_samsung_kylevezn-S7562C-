.class Ljava/util/Collections$UnmodifiableCollection;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x19420080cb5ef71eL


# instance fields
.field final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 923
    .local p0, this:Ljava/util/Collections$UnmodifiableCollection;,"Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 924
    iput-object p1, p0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    .line 925
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 928
    .local p0, this:Ljava/util/Collections$UnmodifiableCollection;,"Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 932
    .local p0, this:Ljava/util/Collections$UnmodifiableCollection;,"Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 936
    .local p0, this:Ljava/util/Collections$UnmodifiableCollection;,"Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 940
    .local p0, this:Ljava/util/Collections$UnmodifiableCollection;,"Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
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
    .line 944
    .local p0, this:Ljava/util/Collections$UnmodifiableCollection;,"Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 948
    .local p0, this:Ljava/util/Collections$UnmodifiableCollection;,"Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 952
    .local p0, this:Ljava/util/Collections$UnmodifiableCollection;,"Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableCollection$1;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableCollection$1;-><init>(Ljava/util/Collections$UnmodifiableCollection;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 970
    .local p0, this:Ljava/util/Collections$UnmodifiableCollection;,"Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
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
    .line 974
    .local p0, this:Ljava/util/Collections$UnmodifiableCollection;,"Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 978
    .local p0, this:Ljava/util/Collections$UnmodifiableCollection;,"Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 982
    .local p0, this:Ljava/util/Collections$UnmodifiableCollection;,"Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 986
    .local p0, this:Ljava/util/Collections$UnmodifiableCollection;,"Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 990
    .local p0, this:Ljava/util/Collections$UnmodifiableCollection;,"Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 994
    .local p0, this:Ljava/util/Collections$UnmodifiableCollection;,"Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
