.class public final Ljava/lang/Byte;
.super Ljava/lang/Number;
.source "Byte.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation

.annotation build Ljava/lang/FindBugsSuppressWarnings;
    value = {
        "DM_NUMBER_CTOR"
    }
.end annotation


# static fields
.field public static final MAX_VALUE:B = 0x7ft

.field public static final MIN_VALUE:B = -0x80t

.field public static final SIZE:I = 0x8

.field public static final TYPE:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALUES:[Ljava/lang/Byte; = null

.field private static final serialVersionUID:J = -0x63b19f7b11af0ae4L


# instance fields
.field private final value:B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 57
    const-class v1, [B

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 306
    const/16 v1, 0x100

    new-array v1, v1, [Ljava/lang/Byte;

    sput-object v1, Ljava/lang/Byte;->VALUES:[Ljava/lang/Byte;

    .line 309
    const/16 v0, -0x80

    .local v0, i:I
    :goto_0
    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    .line 310
    sget-object v1, Ljava/lang/Byte;->VALUES:[Ljava/lang/Byte;

    add-int/lit16 v2, v0, 0x80

    new-instance v3, Ljava/lang/Byte;

    int-to-byte v4, v0

    invoke-direct {v3, v4}, Ljava/lang/Byte;-><init>(B)V

    aput-object v3, v1, v2

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    :cond_0
    return-void
.end method

.method public constructor <init>(B)V
    .locals 0
    .parameter "value"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 69
    iput-byte p1, p0, Ljava/lang/Byte;->value:B

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    invoke-direct {p0, v0}, Ljava/lang/Byte;-><init>(B)V

    .line 83
    return-void
.end method

.method public static compare(BB)I
    .locals 1
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 119
    if-le p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-ge p0, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/Byte;
    .locals 5
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 136
    .local v0, intValue:I
    int-to-byte v1, v0

    .line 137
    .local v1, result:B
    if-ne v1, v0, :cond_0

    .line 138
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    return-object v2

    .line 140
    :cond_0
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Value out of range for byte: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static parseByte(Ljava/lang/String;)B
    .locals 1
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 195
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v0

    return v0
.end method

.method public static parseByte(Ljava/lang/String;I)B
    .locals 5
    .parameter "string"
    .parameter "radix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 215
    .local v0, intValue:I
    int-to-byte v1, v0

    .line 216
    .local v1, result:B
    if-ne v1, v0, :cond_0

    .line 217
    return v1

    .line 219
    :cond_0
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Value out of range for byte: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static toHexString(BZ)Ljava/lang/String;
    .locals 1
    .parameter "b"
    .parameter "upperCase"

    .prologue
    .line 237
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->byteToHexString(BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(B)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 249
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(B)Ljava/lang/Byte;
    .locals 2
    .parameter "b"

    .prologue
    .line 300
    sget-object v0, Ljava/lang/Byte;->VALUES:[Ljava/lang/Byte;

    add-int/lit16 v1, p0, 0x80

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Byte;
    .locals 1
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 264
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Ljava/lang/Byte;
    .locals 1
    .parameter "string"
    .parameter "radix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-static {p0, p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .locals 1

    .prologue
    .line 92
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    return v0
.end method

.method public compareTo(Ljava/lang/Byte;)I
    .locals 2
    .parameter "object"

    .prologue
    .line 109
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    iget-byte v1, p1, Ljava/lang/Byte;->value:B

    invoke-static {v0, v1}, Ljava/lang/Byte;->compare(BB)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    check-cast p1, Ljava/lang/Byte;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/lang/Byte;->compareTo(Ljava/lang/Byte;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 145
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"
    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "RC_REF_COMPARISON"
        }
    .end annotation

    .prologue
    .line 161
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Byte;

    .end local p1
    iget-byte v0, p1, Ljava/lang/Byte;->value:B

    iget-byte v1, p0, Ljava/lang/Byte;->value:B

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public floatValue()F
    .locals 1

    .prologue
    .line 166
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    int-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 171
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    return v0
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 176
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 181
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    int-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .locals 1

    .prologue
    .line 224
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
