.class public abstract Ljava/security/KeyStore$Builder;
.super Ljava/lang/Object;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/KeyStore$Builder$TmpLSParameter;,
        Ljava/security/KeyStore$Builder$BuilderImpl;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 717
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/io/File;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Builder;
    .locals 6
    .parameter "type"
    .parameter "provider"
    .parameter "file"
    .parameter "protectionParameter"

    .prologue
    .line 813
    if-nez p0, :cond_0

    .line 814
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 816
    :cond_0
    if-nez p3, :cond_1

    .line 817
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "protectionParameter == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 819
    :cond_1
    if-nez p2, :cond_2

    .line 820
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 824
    :cond_2
    instance-of v0, p3, Ljava/security/KeyStore$PasswordProtection;

    if-nez v0, :cond_3

    instance-of v0, p3, Ljava/security/KeyStore$CallbackHandlerProtection;

    if-nez v0, :cond_3

    .line 826
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protectionParameter is neither PasswordProtection nor CallbackHandlerProtection instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 830
    :cond_3
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 831
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 833
    :cond_4
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_5

    .line 834
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a regular file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 837
    :cond_5
    new-instance v0, Ljava/security/KeyStore$Builder$BuilderImpl;

    const/4 v1, 0x0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava/security/KeyStore$Builder$BuilderImpl;-><init>(Ljava/security/KeyStore;Ljava/security/KeyStore$ProtectionParameter;Ljava/io/File;Ljava/lang/String;Ljava/security/Provider;)V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Builder;
    .locals 6
    .parameter "type"
    .parameter "provider"
    .parameter "protectionParameter"

    .prologue
    const/4 v1, 0x0

    .line 869
    if-nez p0, :cond_0

    .line 870
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 872
    :cond_0
    if-nez p2, :cond_1

    .line 873
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "protectionParameter == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 875
    :cond_1
    new-instance v0, Ljava/security/KeyStore$Builder$BuilderImpl;

    move-object v2, p2

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava/security/KeyStore$Builder$BuilderImpl;-><init>(Ljava/security/KeyStore;Ljava/security/KeyStore$ProtectionParameter;Ljava/io/File;Ljava/lang/String;Ljava/security/Provider;)V

    return-object v0
.end method

.method public static newInstance(Ljava/security/KeyStore;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Builder;
    .locals 6
    .parameter "keyStore"
    .parameter "protectionParameter"

    .prologue
    const/4 v3, 0x0

    .line 768
    if-nez p0, :cond_0

    .line 769
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "keyStore == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 771
    :cond_0
    if-nez p1, :cond_1

    .line 772
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "protectionParameter == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 774
    :cond_1
    #getter for: Ljava/security/KeyStore;->isInit:Z
    invoke-static {p0}, Ljava/security/KeyStore;->access$000(Ljava/security/KeyStore;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 775
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "KeyStore was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 777
    :cond_2
    new-instance v0, Ljava/security/KeyStore$Builder$BuilderImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Ljava/security/KeyStore$Builder$BuilderImpl;-><init>(Ljava/security/KeyStore;Ljava/security/KeyStore$ProtectionParameter;Ljava/io/File;Ljava/lang/String;Ljava/security/Provider;)V

    return-object v0
.end method


# virtual methods
.method public abstract getKeyStore()Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public abstract getProtectionParameter(Ljava/lang/String;)Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method
