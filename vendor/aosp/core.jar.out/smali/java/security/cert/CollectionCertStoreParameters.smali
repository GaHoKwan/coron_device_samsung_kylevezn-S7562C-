.class public Ljava/security/cert/CollectionCertStoreParameters;
.super Ljava/lang/Object;
.source "CollectionCertStoreParameters.java"

# interfaces
.implements Ljava/security/cert/CertStoreParameters;


# static fields
.field private static final defaultCollection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final collection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    sput-object v0, Ljava/security/cert/CollectionCertStoreParameters;->defaultCollection:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Ljava/security/cert/CollectionCertStoreParameters;->defaultCollection:Ljava/util/Collection;

    iput-object v0, p0, Ljava/security/cert/CollectionCertStoreParameters;->collection:Ljava/util/Collection;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Ljava/security/cert/CollectionCertStoreParameters;->collection:Ljava/util/Collection;

    .line 62
    iget-object v0, p0, Ljava/security/cert/CollectionCertStoreParameters;->collection:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 65
    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 75
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 77
    :goto_0
    return-object v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Ljava/security/cert/CollectionCertStoreParameters;->collection:Ljava/util/Collection;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CollectionCertStoreParameters: [\ncollection: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/security/cert/CollectionCertStoreParameters;->getCollection()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
