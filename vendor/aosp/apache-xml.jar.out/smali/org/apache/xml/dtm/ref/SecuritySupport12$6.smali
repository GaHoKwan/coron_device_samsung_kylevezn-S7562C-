.class Lorg/apache/xml/dtm/ref/SecuritySupport12$6;
.super Ljava/lang/Object;
.source "SecuritySupport12.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xml/dtm/ref/SecuritySupport12;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/SecuritySupport12;

.field final synthetic val$cl:Ljava/lang/ClassLoader;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/xml/dtm/ref/SecuritySupport12;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/SecuritySupport12$6;->this$0:Lorg/apache/xml/dtm/ref/SecuritySupport12;

    iput-object p2, p0, Lorg/apache/xml/dtm/ref/SecuritySupport12$6;->val$cl:Ljava/lang/ClassLoader;

    iput-object p3, p0, Lorg/apache/xml/dtm/ref/SecuritySupport12$6;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 118
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/SecuritySupport12$6;->val$cl:Ljava/lang/ClassLoader;

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/SecuritySupport12$6;->val$name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 123
    .local v0, ris:Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 121
    .end local v0           #ris:Ljava/io/InputStream;
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/SecuritySupport12$6;->val$cl:Ljava/lang/ClassLoader;

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/SecuritySupport12$6;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .restart local v0       #ris:Ljava/io/InputStream;
    goto :goto_0
.end method
