.class Lorg/apache/xalan/xslt/SecuritySupport12;
.super Lorg/apache/xalan/xslt/SecuritySupport;
.source "SecuritySupport12.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/apache/xalan/xslt/SecuritySupport;-><init>()V

    return-void
.end method


# virtual methods
.method getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lorg/apache/xalan/xslt/SecuritySupport12$1;

    invoke-direct {v0, p0}, Lorg/apache/xalan/xslt/SecuritySupport12$1;-><init>(Lorg/apache/xalan/xslt/SecuritySupport12;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method getFileExists(Ljava/io/File;)Z
    .locals 1
    .parameter "f"

    .prologue
    .line 129
    new-instance v0, Lorg/apache/xalan/xslt/SecuritySupport12$7;

    invoke-direct {v0, p0, p1}, Lorg/apache/xalan/xslt/SecuritySupport12$7;-><init>(Lorg/apache/xalan/xslt/SecuritySupport12;Ljava/io/File;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    .locals 2
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 100
    :try_start_0
    new-instance v1, Lorg/apache/xalan/xslt/SecuritySupport12$5;

    invoke-direct {v1, p0, p1}, Lorg/apache/xalan/xslt/SecuritySupport12$5;-><init>(Lorg/apache/xalan/xslt/SecuritySupport12;Ljava/io/File;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/io/FileNotFoundException;

    throw v1
.end method

.method getLastModified(Ljava/io/File;)J
    .locals 2
    .parameter "f"

    .prologue
    .line 138
    new-instance v0, Lorg/apache/xalan/xslt/SecuritySupport12$8;

    invoke-direct {v0, p0, p1}, Lorg/apache/xalan/xslt/SecuritySupport12$8;-><init>(Lorg/apache/xalan/xslt/SecuritySupport12;Ljava/io/File;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 1
    .parameter "cl"

    .prologue
    .line 72
    new-instance v0, Lorg/apache/xalan/xslt/SecuritySupport12$3;

    invoke-direct {v0, p0, p1}, Lorg/apache/xalan/xslt/SecuritySupport12$3;-><init>(Lorg/apache/xalan/xslt/SecuritySupport12;Ljava/lang/ClassLoader;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "cl"
    .parameter "name"

    .prologue
    .line 114
    new-instance v0, Lorg/apache/xalan/xslt/SecuritySupport12$6;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/xalan/xslt/SecuritySupport12$6;-><init>(Lorg/apache/xalan/xslt/SecuritySupport12;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method

.method getSystemClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lorg/apache/xalan/xslt/SecuritySupport12$2;

    invoke-direct {v0, p0}, Lorg/apache/xalan/xslt/SecuritySupport12$2;-><init>(Lorg/apache/xalan/xslt/SecuritySupport12;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "propName"

    .prologue
    .line 88
    new-instance v0, Lorg/apache/xalan/xslt/SecuritySupport12$4;

    invoke-direct {v0, p0, p1}, Lorg/apache/xalan/xslt/SecuritySupport12$4;-><init>(Lorg/apache/xalan/xslt/SecuritySupport12;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
