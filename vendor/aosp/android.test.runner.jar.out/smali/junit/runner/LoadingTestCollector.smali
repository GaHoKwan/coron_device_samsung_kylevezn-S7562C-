.class public Ljunit/runner/LoadingTestCollector;
.super Ljunit/runner/ClassPathTestCollector;
.source "LoadingTestCollector.java"


# instance fields
.field fLoader:Ljunit/runner/TestCaseClassLoader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljunit/runner/ClassPathTestCollector;-><init>()V

    .line 19
    new-instance v0, Ljunit/runner/TestCaseClassLoader;

    invoke-direct {v0}, Ljunit/runner/TestCaseClassLoader;-><init>()V

    iput-object v0, p0, Ljunit/runner/LoadingTestCollector;->fLoader:Ljunit/runner/TestCaseClassLoader;

    .line 20
    return-void
.end method


# virtual methods
.method classFromFile(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .parameter "classFileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Ljunit/runner/ClassPathTestCollector;->classNameFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, className:Ljava/lang/String;
    iget-object v1, p0, Ljunit/runner/LoadingTestCollector;->fLoader:Ljunit/runner/TestCaseClassLoader;

    invoke-virtual {v1, v0}, Ljunit/runner/TestCaseClassLoader;->isExcluded(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    iget-object v1, p0, Ljunit/runner/LoadingTestCollector;->fLoader:Ljunit/runner/TestCaseClassLoader;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljunit/runner/TestCaseClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v1

    .line 40
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method hasPublicConstructor(Ljava/lang/Class;)Z
    .locals 2
    .parameter "testClass"

    .prologue
    .line 64
    :try_start_0
    invoke-static {p1}, Ljunit/framework/TestSuite;->getTestConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method hasSuiteMethod(Ljava/lang/Class;)Z
    .locals 4
    .parameter "testClass"

    .prologue
    const/4 v1, 0x0

    .line 55
    :try_start_0
    const-string v2, "suite"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method isTestClass(Ljava/lang/Class;)Z
    .locals 2
    .parameter "testClass"

    .prologue
    const/4 v0, 0x1

    .line 44
    invoke-virtual {p0, p1}, Ljunit/runner/LoadingTestCollector;->hasSuiteMethod(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    const-class v1, Ljunit/framework/Test;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Ljunit/runner/LoadingTestCollector;->hasPublicConstructor(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTestClass(Ljava/lang/String;)Z
    .locals 3
    .parameter "classFileName"

    .prologue
    const/4 v1, 0x0

    .line 24
    :try_start_0
    const-string v2, ".class"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    invoke-virtual {p0, p1}, Ljunit/runner/LoadingTestCollector;->classFromFile(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 26
    .local v0, testClass:Ljava/lang/Class;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ljunit/runner/LoadingTestCollector;->isTestClass(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 33
    .end local v0           #testClass:Ljava/lang/Class;
    :cond_0
    :goto_0
    return v1

    .line 31
    :catch_0
    move-exception v2

    goto :goto_0

    .line 29
    :catch_1
    move-exception v2

    goto :goto_0
.end method
