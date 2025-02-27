.class Ljava/util/jar/JarVerifier$VerifierEntry;
.super Ljava/io/OutputStream;
.source "JarVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/JarVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerifierEntry"
.end annotation


# instance fields
.field private certificates:[Ljava/security/cert/Certificate;

.field private digest:Ljava/security/MessageDigest;

.field private hash:[B

.field private name:Ljava/lang/String;

.field final synthetic this$0:Ljava/util/jar/JarVerifier;


# direct methods
.method constructor <init>(Ljava/util/jar/JarVerifier;Ljava/lang/String;Ljava/security/MessageDigest;[B[Ljava/security/cert/Certificate;)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "digest"
    .parameter "hash"
    .parameter "certificates"

    .prologue
    .line 86
    iput-object p1, p0, Ljava/util/jar/JarVerifier$VerifierEntry;->this$0:Ljava/util/jar/JarVerifier;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 87
    iput-object p2, p0, Ljava/util/jar/JarVerifier$VerifierEntry;->name:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Ljava/util/jar/JarVerifier$VerifierEntry;->digest:Ljava/security/MessageDigest;

    .line 89
    iput-object p4, p0, Ljava/util/jar/JarVerifier$VerifierEntry;->hash:[B

    .line 90
    iput-object p5, p0, Ljava/util/jar/JarVerifier$VerifierEntry;->certificates:[Ljava/security/cert/Certificate;

    .line 91
    return-void
.end method


# virtual methods
.method verify()V
    .locals 5

    .prologue
    .line 121
    iget-object v1, p0, Ljava/util/jar/JarVerifier$VerifierEntry;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 122
    .local v0, d:[B
    iget-object v1, p0, Ljava/util/jar/JarVerifier$VerifierEntry;->hash:[B

    invoke-static {v1}, Llibcore/io/Base64;->decode([B)[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    iget-object v1, p0, Ljava/util/jar/JarVerifier$VerifierEntry;->this$0:Ljava/util/jar/JarVerifier;

    const-string v2, "META-INF/MANIFEST.MF"

    iget-object v3, p0, Ljava/util/jar/JarVerifier$VerifierEntry;->name:Ljava/lang/String;

    iget-object v4, p0, Ljava/util/jar/JarVerifier$VerifierEntry;->this$0:Ljava/util/jar/JarVerifier;

    #getter for: Ljava/util/jar/JarVerifier;->jarName:Ljava/lang/String;
    invoke-static {v4}, Ljava/util/jar/JarVerifier;->access$000(Ljava/util/jar/JarVerifier;)Ljava/lang/String;

    move-result-object v4

    #calls: Ljava/util/jar/JarVerifier;->invalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;
    invoke-static {v1, v2, v3, v4}, Ljava/util/jar/JarVerifier;->access$100(Ljava/util/jar/JarVerifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v1

    throw v1

    .line 125
    :cond_0
    iget-object v1, p0, Ljava/util/jar/JarVerifier$VerifierEntry;->this$0:Ljava/util/jar/JarVerifier;

    #getter for: Ljava/util/jar/JarVerifier;->verifiedEntries:Ljava/util/Hashtable;
    invoke-static {v1}, Ljava/util/jar/JarVerifier;->access$200(Ljava/util/jar/JarVerifier;)Ljava/util/Hashtable;

    move-result-object v1

    iget-object v2, p0, Ljava/util/jar/JarVerifier$VerifierEntry;->name:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/jar/JarVerifier$VerifierEntry;->certificates:[Ljava/security/cert/Certificate;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method

.method public write(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 98
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierEntry;->digest:Ljava/security/MessageDigest;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    .line 99
    return-void
.end method

.method public write([BII)V
    .locals 1
    .parameter "buf"
    .parameter "off"
    .parameter "nbytes"

    .prologue
    .line 106
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierEntry;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 107
    return-void
.end method
