.class final Ljava/util/Collections$SingletonList;
.super Ljava/util/AbstractList;
.source "Collections.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingletonList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2aef29103ca79b97L


# instance fields
.field final element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p0, this:Ljava/util/Collections$SingletonList;,"Ljava/util/Collections$SingletonList<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 268
    iput-object p1, p0, Ljava/util/Collections$SingletonList;->element:Ljava/lang/Object;

    .line 269
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 272
    .local p0, this:Ljava/util/Collections$SingletonList;,"Ljava/util/Collections$SingletonList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SingletonList;->element:Ljava/lang/Object;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ljava/util/Collections$SingletonList;->element:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, this:Ljava/util/Collections$SingletonList;,"Ljava/util/Collections$SingletonList<TE;>;"
    if-nez p1, :cond_0

    .line 277
    iget-object v0, p0, Ljava/util/Collections$SingletonList;->element:Ljava/lang/Object;

    return-object v0

    .line 279
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 283
    .local p0, this:Ljava/util/Collections$SingletonList;,"Ljava/util/Collections$SingletonList<TE;>;"
    const/4 v0, 0x1

    return v0
.end method
