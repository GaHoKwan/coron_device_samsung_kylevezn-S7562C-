.class public final Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;
.super Ljava/lang/Object;
.source "ImplForVariable.java"

# interfaces
.implements Ljava/lang/reflect/TypeVariable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Ljava/lang/reflect/GenericDeclaration;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/TypeVariable",
        "<TD;>;"
    }
.end annotation


# instance fields
.field private bounds:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

.field private final declOfVarUser:Ljava/lang/reflect/GenericDeclaration;

.field private formalVar:Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/harmony/luni/lang/reflect/ImplForVariable",
            "<TD;>;"
        }
    .end annotation
.end field

.field private genericDeclaration:Ljava/lang/reflect/GenericDeclaration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, this:Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;,"Lorg/apache/harmony/luni/lang/reflect/ImplForVariable<TD;>;"
    .local p1, genericDecl:Ljava/lang/reflect/GenericDeclaration;,"TD;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p2, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->name:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->declOfVarUser:Ljava/lang/reflect/GenericDeclaration;

    .line 69
    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;)V
    .locals 1
    .parameter
    .parameter "name"
    .parameter "bounds"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, this:Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;,"Lorg/apache/harmony/luni/lang/reflect/ImplForVariable<TD;>;"
    .local p1, genericDecl:Ljava/lang/reflect/GenericDeclaration;,"TD;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->genericDeclaration:Ljava/lang/reflect/GenericDeclaration;

    .line 56
    iput-object p2, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->name:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->bounds:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    .line 58
    iput-object p0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->formalVar:Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->declOfVarUser:Ljava/lang/reflect/GenericDeclaration;

    .line 60
    return-void
.end method

.method static findFormalVar(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)Ljava/lang/reflect/TypeVariable;
    .locals 6
    .parameter "layer"
    .parameter "name"

    .prologue
    .line 72
    invoke-interface {p0}, Ljava/lang/reflect/GenericDeclaration;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 73
    .local v1, formalVars:[Ljava/lang/reflect/TypeVariable;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/reflect/TypeVariable;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 74
    .local v4, var:Ljava/lang/reflect/TypeVariable;
    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 79
    .end local v4           #var:Ljava/lang/reflect/TypeVariable;
    :goto_1
    return-object v4

    .line 73
    .restart local v4       #var:Ljava/lang/reflect/TypeVariable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    .end local v4           #var:Ljava/lang/reflect/TypeVariable;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static nextLayer(Ljava/lang/reflect/GenericDeclaration;)Ljava/lang/reflect/GenericDeclaration;
    .locals 2
    .parameter "decl"

    .prologue
    .line 83
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_2

    move-object v0, p0

    .line 85
    check-cast v0, Ljava/lang/Class;

    .line 86
    .local v0, cl:Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object p0

    .line 87
    if-eqz p0, :cond_1

    .line 98
    .end local v0           #cl:Ljava/lang/Class;
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 90
    .restart local v0       #cl:Ljava/lang/Class;
    .restart local p0
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 91
    if-nez p0, :cond_0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 95
    .end local v0           #cl:Ljava/lang/Class;
    :cond_2
    instance-of v1, p0, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_3

    .line 96
    check-cast p0, Ljava/lang/reflect/Method;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 97
    .restart local p0
    :cond_3
    instance-of v1, p0, Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_4

    .line 98
    check-cast p0, Ljava/lang/reflect/Constructor;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 100
    .restart local p0
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    .local p0, this:Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;,"Lorg/apache/harmony/luni/lang/reflect/ImplForVariable<TD;>;"
    const/4 v1, 0x0

    .line 35
    instance-of v2, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v2, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 38
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    .line 39
    .local v0, that:Ljava/lang/reflect/TypeVariable;,"Ljava/lang/reflect/TypeVariable<*>;"
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getBounds()[Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 122
    .local p0, this:Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;,"Lorg/apache/harmony/luni/lang/reflect/ImplForVariable<TD;>;"
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->resolve()V

    .line 123
    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->bounds:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, this:Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;,"Lorg/apache/harmony/luni/lang/reflect/ImplForVariable<TD;>;"
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->resolve()V

    .line 128
    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->genericDeclaration:Ljava/lang/reflect/GenericDeclaration;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    .local p0, this:Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;,"Lorg/apache/harmony/luni/lang/reflect/ImplForVariable<TD;>;"
    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 46
    .local p0, this:Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;,"Lorg/apache/harmony/luni/lang/reflect/ImplForVariable<TD;>;"
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method resolve()V
    .locals 4

    .prologue
    .line 105
    .local p0, this:Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;,"Lorg/apache/harmony/luni/lang/reflect/ImplForVariable<TD;>;"
    iget-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->formalVar:Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;

    if-eqz v2, :cond_0

    .line 119
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->declOfVarUser:Ljava/lang/reflect/GenericDeclaration;

    .line 110
    .local v0, curLayer:Ljava/lang/reflect/GenericDeclaration;
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->name:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->findFormalVar(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .local v1, var:Ljava/lang/reflect/TypeVariable;
    if-nez v1, :cond_2

    .line 111
    invoke-static {v0}, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->nextLayer(Ljava/lang/reflect/GenericDeclaration;)Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    .line 112
    if-nez v0, :cond_1

    .line 113
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "illegal type variable reference"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 116
    :cond_2
    check-cast v1, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;

    .end local v1           #var:Ljava/lang/reflect/TypeVariable;
    iput-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->formalVar:Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;

    .line 117
    iget-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->formalVar:Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;

    iget-object v2, v2, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->genericDeclaration:Ljava/lang/reflect/GenericDeclaration;

    iput-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->genericDeclaration:Ljava/lang/reflect/GenericDeclaration;

    .line 118
    iget-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->formalVar:Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;

    iget-object v2, v2, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->bounds:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    iput-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->bounds:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    .local p0, this:Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;,"Lorg/apache/harmony/luni/lang/reflect/ImplForVariable<TD;>;"
    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->name:Ljava/lang/String;

    return-object v0
.end method
