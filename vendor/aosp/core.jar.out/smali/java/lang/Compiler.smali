.class public final Ljava/lang/Compiler;
.super Ljava/lang/Object;
.source "Compiler.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static command(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "cmd"

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public static compileClass(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, classToCompile:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public static compileClasses(Ljava/lang/String;)Z
    .locals 1
    .parameter "nameRoot"

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public static disable()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public static enable()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method
