.class public Ljava/lang/Package;
.super Ljava/lang/Object;
.source "Package.java"

# interfaces
.implements Ljava/lang/reflect/AnnotatedElement;


# static fields
.field private static final NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;


# instance fields
.field private final implTitle:Ljava/lang/String;

.field private final implVendor:Ljava/lang/String;

.field private final implVersion:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final sealBase:Ljava/net/URL;

.field private final specTitle:Ljava/lang/String;

.field private final specVendor:Ljava/lang/String;

.field private final specVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    sput-object v0, Ljava/lang/Package;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)V
    .locals 0
    .parameter "name"
    .parameter "specTitle"
    .parameter "specVersion"
    .parameter "specVendor"
    .parameter "implTitle"
    .parameter "implVersion"
    .parameter "implVendor"
    .parameter "sealBase"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Ljava/lang/Package;->name:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Ljava/lang/Package;->specTitle:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Ljava/lang/Package;->specVendor:Ljava/lang/String;

    .line 69
    iput-object p5, p0, Ljava/lang/Package;->implTitle:Ljava/lang/String;

    .line 70
    iput-object p6, p0, Ljava/lang/Package;->implVersion:Ljava/lang/String;

    .line 71
    iput-object p7, p0, Ljava/lang/Package;->implVendor:Ljava/lang/String;

    .line 72
    iput-object p8, p0, Ljava/lang/Package;->sealBase:Ljava/net/URL;

    .line 73
    return-void
.end method

.method public static getPackage(Ljava/lang/String;)Ljava/lang/Package;
    .locals 2
    .parameter "packageName"

    .prologue
    .line 172
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 173
    .local v0, classloader:Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 174
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 176
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v1

    return-object v1
.end method

.method public static getPackages()[Ljava/lang/Package;
    .locals 2

    .prologue
    .line 186
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 187
    .local v0, classloader:Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 188
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 190
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getPackages()[Ljava/lang/Package;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, annotationType:Ljava/lang/Class;,"Ljava/lang/Class<TA;>;"
    invoke-virtual {p0}, Ljava/lang/Package;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/annotation/Annotation;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 87
    .local v0, annotation:Ljava/lang/annotation/Annotation;
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    .end local v0           #annotation:Ljava/lang/annotation/Annotation;
    :goto_1
    return-object v0

    .line 86
    .restart local v0       #annotation:Ljava/lang/annotation/Annotation;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    .end local v0           #annotation:Ljava/lang/annotation/Annotation;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Ljava/lang/Package;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Ljava/lang/Package;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public getImplementationTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Ljava/lang/Package;->implTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getImplementationVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Ljava/lang/Package;->implVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getImplementationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Ljava/lang/Package;->implVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Ljava/lang/Package;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecificationTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Ljava/lang/Package;->specTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecificationVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Ljava/lang/Package;->specVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecificationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Ljava/lang/Package;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, annotationType:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0, p1}, Ljava/lang/Package;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCompatibleWith(Ljava/lang/String;)Z
    .locals 9
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 244
    const-string v7, "\\."

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 245
    .local v4, requested:[Ljava/lang/String;
    iget-object v7, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    const-string v8, "\\."

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, provided:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v7, v4

    array-length v8, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-ge v0, v7, :cond_3

    .line 248
    aget-object v7, v4, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 249
    .local v3, reqNum:I
    aget-object v7, v2, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 251
    .local v1, provNum:I
    if-le v3, v1, :cond_1

    .line 262
    .end local v1           #provNum:I
    .end local v3           #reqNum:I
    :cond_0
    :goto_1
    return v5

    .line 253
    .restart local v1       #provNum:I
    .restart local v3       #reqNum:I
    :cond_1
    if-ge v3, v1, :cond_2

    move v5, v6

    .line 254
    goto :goto_1

    .line 247
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    .end local v1           #provNum:I
    .end local v3           #reqNum:I
    :cond_3
    array-length v7, v4

    array-length v8, v2

    if-gt v7, v8, :cond_0

    move v5, v6

    .line 262
    goto :goto_1
.end method

.method public isSealed()Z
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Ljava/lang/Package;->sealBase:Ljava/net/URL;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSealed(Ljava/net/URL;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 284
    iget-object v0, p0, Ljava/lang/Package;->sealBase:Ljava/net/URL;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/lang/Package;->sealBase:Ljava/net/URL;

    invoke-virtual {v0, p1}, Ljava/net/URL;->sameFile(Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/Package;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
