.class public final Ljava/lang/StackTraceElement;
.super Ljava/lang/Object;
.source "StackTraceElement.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final NATIVE_LINE_NUMBER:I = -0x2

.field private static final serialVersionUID:J = 0x6109c59a2636dd85L


# instance fields
.field declaringClass:Ljava/lang/String;

.field fileName:Ljava/lang/String;

.field lineNumber:I

.field methodName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "cls"
    .parameter "method"
    .parameter "file"
    .parameter "line"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 64
    :cond_1
    iput-object p1, p0, Ljava/lang/StackTraceElement;->declaringClass:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Ljava/lang/StackTraceElement;->fileName:Ljava/lang/String;

    .line 67
    iput p4, p0, Ljava/lang/StackTraceElement;->lineNumber:I

    .line 68
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v2, 0x0

    .line 98
    instance-of v3, p1, Ljava/lang/StackTraceElement;

    if-nez v3, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 101
    check-cast v0, Ljava/lang/StackTraceElement;

    .line 107
    .local v0, castObj:Ljava/lang/StackTraceElement;
    iget-object v3, p0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 111
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, localFileName:Ljava/lang/String;
    if-nez v1, :cond_3

    .line 119
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 127
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 131
    const/4 v2, 0x1

    goto :goto_0

    .line 123
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Ljava/lang/StackTraceElement;->declaringClass:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "<unknown class>"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/lang/StackTraceElement;->declaringClass:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Ljava/lang/StackTraceElement;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Ljava/lang/StackTraceElement;->lineNumber:I

    return v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "<unknown method>"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 185
    const/4 v0, 0x0

    .line 188
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/lang/StackTraceElement;->declaringClass:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    goto :goto_0
.end method

.method public isNativeMethod()Z
    .locals 2

    .prologue
    .line 199
    iget v0, p0, Ljava/lang/StackTraceElement;->lineNumber:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x50

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 206
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    const-string v3, "(Native Method)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 213
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, fName:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 216
    const-string v3, "(Unknown Source)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 218
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    .line 220
    .local v2, lineNum:I
    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    if-ltz v2, :cond_2

    .line 223
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    :cond_2
    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
