.class public Ljavax/xml/namespace/QName;
.super Ljava/lang/Object;
.source "QName.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final compatibilitySerialVersionUID:J = 0x3d521a30bc76fdffL

.field private static final defaultSerialVersionUID:J = -0x7e9257d203c42294L

.field private static final serialVersionUID:J


# instance fields
.field private final localPart:Ljava/lang/String;

.field private final namespaceURI:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private transient qNameAsString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 91
    const-string v1, "org.apache.xml.namespace.QName.useCompatibleSerialVersionUID"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, compatPropValue:Ljava/lang/String;
    const-string v1, "1.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide v1, -0x7e9257d203c42294L

    :goto_0
    sput-wide v1, Ljavax/xml/namespace/QName;->serialVersionUID:J

    .line 94
    return-void

    .line 93
    :cond_0
    const-wide v1, 0x3d521a30bc76fdffL

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "localPart"

    .prologue
    .line 253
    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, v0, p1, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "namespaceURI"
    .parameter "localPart"

    .prologue
    .line 155
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "namespaceURI"
    .parameter "localPart"
    .parameter "prefix"

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    if-nez p1, :cond_0

    .line 199
    const-string v0, ""

    iput-object v0, p0, Ljavax/xml/namespace/QName;->namespaceURI:Ljava/lang/String;

    .line 205
    :goto_0
    if-nez p2, :cond_1

    .line 206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "local part cannot be \"null\" when creating a QName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    iput-object p1, p0, Ljavax/xml/namespace/QName;->namespaceURI:Ljava/lang/String;

    goto :goto_0

    .line 208
    :cond_1
    iput-object p2, p0, Ljavax/xml/namespace/QName;->localPart:Ljava/lang/String;

    .line 211
    if-nez p3, :cond_2

    .line 212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "prefix cannot be \"null\" when creating a QName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_2
    iput-object p3, p0, Ljavax/xml/namespace/QName;->prefix:Ljava/lang/String;

    .line 215
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 481
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 482
    iget-object v0, p0, Ljavax/xml/namespace/QName;->prefix:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 483
    const-string v0, ""

    iput-object v0, p0, Ljavax/xml/namespace/QName;->prefix:Ljava/lang/String;

    .line 485
    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/xml/namespace/QName;
    .locals 5
    .parameter "qNameAsString"

    .prologue
    .line 428
    if-nez p0, :cond_0

    .line 429
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cannot create QName from \"null\" or \"\" String"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 433
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 434
    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v1, v2, p0, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :goto_0
    return-object v1

    .line 441
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_2

    .line 442
    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v1, v2, p0, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 449
    :cond_2
    const-string v1, "{}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 450
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Namespace URI .equals(XMLConstants.NULL_NS_URI), .equals(\"\"), only the local part, \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "should be provided."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 459
    :cond_3
    const/16 v1, 0x7d

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 460
    .local v0, endOfNamespaceURI:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 461
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot create QName from \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\", missing closing \"}\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 466
    :cond_4
    new-instance v1, Ljavax/xml/namespace/QName;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "objectToTest"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 316
    if-ne p1, p0, :cond_1

    .line 324
    :cond_0
    :goto_0
    return v1

    .line 320
    :cond_1
    instance-of v3, p1, Ljavax/xml/namespace/QName;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 321
    check-cast v0, Ljavax/xml/namespace/QName;

    .line 322
    .local v0, qName:Ljavax/xml/namespace/QName;
    iget-object v3, p0, Ljavax/xml/namespace/QName;->localPart:Ljava/lang/String;

    iget-object v4, v0, Ljavax/xml/namespace/QName;->localPart:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Ljavax/xml/namespace/QName;->namespaceURI:Ljava/lang/String;

    iget-object v4, v0, Ljavax/xml/namespace/QName;->namespaceURI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0           #qName:Ljavax/xml/namespace/QName;
    :cond_3
    move v1, v2

    .line 324
    goto :goto_0
.end method

.method public getLocalPart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Ljavax/xml/namespace/QName;->localPart:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Ljavax/xml/namespace/QName;->namespaceURI:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Ljavax/xml/namespace/QName;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Ljavax/xml/namespace/QName;->namespaceURI:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljavax/xml/namespace/QName;->localPart:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 367
    iget-object v0, p0, Ljavax/xml/namespace/QName;->qNameAsString:Ljava/lang/String;

    .line 368
    .local v0, _qNameAsString:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 369
    iget-object v3, p0, Ljavax/xml/namespace/QName;->namespaceURI:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 370
    .local v2, nsLength:I
    if-nez v2, :cond_1

    .line 371
    iget-object v0, p0, Ljavax/xml/namespace/QName;->localPart:Ljava/lang/String;

    .line 381
    :goto_0
    iput-object v0, p0, Ljavax/xml/namespace/QName;->qNameAsString:Ljava/lang/String;

    .line 383
    .end local v2           #nsLength:I
    :cond_0
    return-object v0

    .line 374
    .restart local v2       #nsLength:I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljavax/xml/namespace/QName;->localPart:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 375
    .local v1, buffer:Ljava/lang/StringBuilder;
    const/16 v3, 0x7b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    iget-object v3, p0, Ljavax/xml/namespace/QName;->namespaceURI:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    const/16 v3, 0x7d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 378
    iget-object v3, p0, Ljavax/xml/namespace/QName;->localPart:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
