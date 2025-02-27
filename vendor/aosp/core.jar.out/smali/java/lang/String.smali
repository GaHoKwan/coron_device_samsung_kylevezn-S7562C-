.class public final Ljava/lang/String;
.super Ljava/lang/Object;
.source "String.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/String$1;,
        Ljava/lang/String$CaseInsensitiveComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/CharSequence;"
    }
.end annotation


# static fields
.field private static final ASCII:[C = null

.field public static final CASE_INSENSITIVE_ORDER:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final REPLACEMENT_CHAR:C = '\ufffd'

.field private static final serialVersionUID:J = -0x5f0f5bc785c44cbeL


# instance fields
.field private final count:I

.field private hashCode:I

.field private final offset:I

.field private final value:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 96
    new-instance v1, Ljava/lang/String$CaseInsensitiveComparator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/String$CaseInsensitiveComparator;-><init>(Ljava/lang/String$1;)V

    sput-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 100
    const/16 v1, 0x80

    new-array v1, v1, [C

    sput-object v1, Ljava/lang/String;->ASCII:[C

    .line 101
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Ljava/lang/String;->ASCII:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 102
    sget-object v1, Ljava/lang/String;->ASCII:[C

    int-to-char v2, v0

    aput-char v2, v1, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    sget-object v0, Llibcore/util/EmptyArray;->CHAR:[C

    iput-object v0, p0, Ljava/lang/String;->value:[C

    .line 119
    iput v1, p0, Ljava/lang/String;->offset:I

    .line 120
    iput v1, p0, Ljava/lang/String;->count:I

    .line 121
    return-void
.end method

.method constructor <init>(II[C)V
    .locals 0
    .parameter "offset"
    .parameter "charCount"
    .parameter "chars"

    .prologue
    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    iput-object p3, p0, Ljava/lang/String;->value:[C

    .line 443
    iput p1, p0, Ljava/lang/String;->offset:I

    .line 444
    iput p2, p0, Ljava/lang/String;->count:I

    .line 445
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "toCopy"

    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iget-object v0, p1, Ljava/lang/String;->value:[C

    array-length v0, v0

    iget v1, p1, Ljava/lang/String;->count:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Ljava/lang/String;->value:[C

    :goto_0
    iput-object v0, p0, Ljava/lang/String;->value:[C

    .line 456
    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/String;->offset:I

    .line 457
    iget-object v0, p0, Ljava/lang/String;->value:[C

    array-length v0, v0

    iput v0, p0, Ljava/lang/String;->count:I

    .line 458
    return-void

    .line 453
    :cond_0
    iget-object v0, p1, Ljava/lang/String;->value:[C

    iget v1, p1, Ljava/lang/String;->offset:I

    iget v2, p1, Ljava/lang/String;->offset:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;C)V
    .locals 5
    .parameter "s"
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput v4, p0, Ljava/lang/String;->offset:I

    .line 129
    iget v0, p1, Ljava/lang/String;->count:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/lang/String;->value:[C

    .line 130
    iget v0, p1, Ljava/lang/String;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/lang/String;->count:I

    .line 131
    iget-object v0, p1, Ljava/lang/String;->value:[C

    iget v1, p1, Ljava/lang/String;->offset:I

    iget-object v2, p0, Ljava/lang/String;->value:[C

    iget v3, p1, Ljava/lang/String;->count:I

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p1, Ljava/lang/String;->count:I

    aput-char p2, v0, v1

    .line 133
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 7
    .parameter "s1"
    .parameter "v1"

    .prologue
    const/4 v6, 0x0

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    if-nez p1, :cond_0

    .line 566
    const-string p1, "null"

    .line 568
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 569
    .local v1, s2:Ljava/lang/String;
    iget v2, p1, Ljava/lang/String;->count:I

    iget v3, v1, Ljava/lang/String;->count:I

    add-int v0, v2, v3

    .line 570
    .local v0, len:I
    new-array v2, v0, [C

    iput-object v2, p0, Ljava/lang/String;->value:[C

    .line 571
    iput v6, p0, Ljava/lang/String;->offset:I

    .line 572
    iget-object v2, p1, Ljava/lang/String;->value:[C

    iget v3, p1, Ljava/lang/String;->offset:I

    iget-object v4, p0, Ljava/lang/String;->value:[C

    iget v5, p1, Ljava/lang/String;->count:I

    invoke-static {v2, v3, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 573
    iget-object v2, v1, Ljava/lang/String;->value:[C

    iget v3, v1, Ljava/lang/String;->offset:I

    iget-object v4, p0, Ljava/lang/String;->value:[C

    iget v5, p1, Ljava/lang/String;->count:I

    iget v6, v1, Ljava/lang/String;->count:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 574
    iput v0, p0, Ljava/lang/String;->count:I

    .line 575
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "s1"
    .parameter "s2"

    .prologue
    const/4 v4, 0x0

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    if-nez p1, :cond_0

    .line 466
    const-string p1, "null"

    .line 468
    :cond_0
    if-nez p2, :cond_1

    .line 469
    const-string p2, "null"

    .line 471
    :cond_1
    iget v0, p1, Ljava/lang/String;->count:I

    iget v1, p2, Ljava/lang/String;->count:I

    add-int/2addr v0, v1

    iput v0, p0, Ljava/lang/String;->count:I

    .line 472
    iget v0, p0, Ljava/lang/String;->count:I

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/lang/String;->value:[C

    .line 473
    iput v4, p0, Ljava/lang/String;->offset:I

    .line 474
    iget-object v0, p1, Ljava/lang/String;->value:[C

    iget v1, p1, Ljava/lang/String;->offset:I

    iget-object v2, p0, Ljava/lang/String;->value:[C

    iget v3, p1, Ljava/lang/String;->count:I

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 475
    iget-object v0, p2, Ljava/lang/String;->value:[C

    iget v1, p2, Ljava/lang/String;->offset:I

    iget-object v2, p0, Ljava/lang/String;->value:[C

    iget v3, p1, Ljava/lang/String;->count:I

    iget v4, p2, Ljava/lang/String;->count:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "s1"
    .parameter "s2"
    .parameter "s3"

    .prologue
    const/4 v4, 0x0

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    if-nez p1, :cond_0

    .line 484
    const-string p1, "null"

    .line 486
    :cond_0
    if-nez p2, :cond_1

    .line 487
    const-string p2, "null"

    .line 489
    :cond_1
    if-nez p3, :cond_2

    .line 490
    const-string p3, "null"

    .line 492
    :cond_2
    iget v0, p1, Ljava/lang/String;->count:I

    iget v1, p2, Ljava/lang/String;->count:I

    add-int/2addr v0, v1

    iget v1, p3, Ljava/lang/String;->count:I

    add-int/2addr v0, v1

    iput v0, p0, Ljava/lang/String;->count:I

    .line 493
    iget v0, p0, Ljava/lang/String;->count:I

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/lang/String;->value:[C

    .line 494
    iput v4, p0, Ljava/lang/String;->offset:I

    .line 495
    iget-object v0, p1, Ljava/lang/String;->value:[C

    iget v1, p1, Ljava/lang/String;->offset:I

    iget-object v2, p0, Ljava/lang/String;->value:[C

    iget v3, p1, Ljava/lang/String;->count:I

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 496
    iget-object v0, p2, Ljava/lang/String;->value:[C

    iget v1, p2, Ljava/lang/String;->offset:I

    iget-object v2, p0, Ljava/lang/String;->value:[C

    iget v3, p1, Ljava/lang/String;->count:I

    iget v4, p2, Ljava/lang/String;->count:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 497
    iget-object v0, p3, Ljava/lang/String;->value:[C

    iget v1, p3, Ljava/lang/String;->offset:I

    iget-object v2, p0, Ljava/lang/String;->value:[C

    iget v3, p1, Ljava/lang/String;->count:I

    iget v4, p2, Ljava/lang/String;->count:I

    add-int/2addr v3, v4

    iget v4, p3, Ljava/lang/String;->count:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 498
    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;)V
    .locals 1
    .parameter "stringBuffer"

    .prologue
    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/String;->offset:I

    .line 506
    monitor-enter p1

    .line 507
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/AbstractStringBuilder;->shareValue()[C

    move-result-object v0

    iput-object v0, p0, Ljava/lang/String;->value:[C

    .line 508
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iput v0, p0, Ljava/lang/String;->count:I

    .line 509
    monitor-exit p1

    .line 510
    return-void

    .line 509
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter "stringBuilder"

    .prologue
    const/4 v2, 0x0

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    if-nez p1, :cond_0

    .line 552
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "stringBuilder == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_0
    iput v2, p0, Ljava/lang/String;->offset:I

    .line 555
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Ljava/lang/String;->count:I

    .line 556
    iget v0, p0, Ljava/lang/String;->count:I

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/lang/String;->value:[C

    .line 557
    iget v0, p0, Ljava/lang/String;->count:I

    iget-object v1, p0, Ljava/lang/String;->value:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 558
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .parameter "data"
    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "DM_DEFAULT_ENCODING"
        }
    .end annotation

    .prologue
    .line 141
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Ljava/lang/String;-><init>([BII)V

    .line 142
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2
    .parameter "data"
    .parameter "high"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 158
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/lang/String;-><init>([BIII)V

    .line 159
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 3
    .parameter "data"
    .parameter "offset"
    .parameter "byteCount"

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    or-int v1, p2, p3

    if-ltz v1, :cond_0

    array-length v1, p1

    sub-int/2addr v1, p2

    if-le p3, v1, :cond_1

    .line 172
    :cond_0
    array-length v1, p1

    invoke-direct {p0, v1, p2, p3}, Ljava/lang/String;->failedBoundsCheck(III)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v1

    throw v1

    .line 174
    :cond_1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 175
    .local v0, cb:Ljava/nio/CharBuffer;
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->length()I

    move-result v1

    iput v1, p0, Ljava/lang/String;->count:I

    .line 176
    const/4 v1, 0x0

    iput v1, p0, Ljava/lang/String;->offset:I

    .line 177
    iget v1, p0, Ljava/lang/String;->count:I

    if-lez v1, :cond_2

    .line 178
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v1

    iput-object v1, p0, Ljava/lang/String;->value:[C

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_2
    sget-object v1, Llibcore/util/EmptyArray;->CHAR:[C

    iput-object v1, p0, Ljava/lang/String;->value:[C

    goto :goto_0
.end method

.method public constructor <init>([BIII)V
    .locals 4
    .parameter "data"
    .parameter "high"
    .parameter "offset"
    .parameter "byteCount"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    or-int v2, p3, p4

    if-ltz v2, :cond_0

    array-length v2, p1

    sub-int/2addr v2, p3

    if-le p4, v2, :cond_1

    .line 198
    :cond_0
    array-length v2, p1

    invoke-direct {p0, v2, p3, p4}, Ljava/lang/String;->failedBoundsCheck(III)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v2

    throw v2

    .line 200
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Ljava/lang/String;->offset:I

    .line 201
    new-array v2, p4, [C

    iput-object v2, p0, Ljava/lang/String;->value:[C

    .line 202
    iput p4, p0, Ljava/lang/String;->count:I

    .line 203
    shl-int/lit8 p2, p2, 0x8

    .line 204
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Ljava/lang/String;->count:I

    if-ge v0, v2, :cond_2

    .line 205
    iget-object v2, p0, Ljava/lang/String;->value:[C

    add-int/lit8 v1, p3, 0x1

    .end local p3
    .local v1, offset:I
    aget-byte v3, p1, p3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, p2

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 204
    add-int/lit8 v0, v0, 0x1

    move p3, v1

    .end local v1           #offset:I
    .restart local p3
    goto :goto_0

    .line 207
    :cond_2
    return-void
.end method

.method public constructor <init>([BIILjava/lang/String;)V
    .locals 1
    .parameter "data"
    .parameter "offset"
    .parameter "byteCount"
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-static {p4}, Ljava/nio/charset/Charset;->forNameUEE(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 224
    return-void
.end method

.method public constructor <init>([BIILjava/nio/charset/Charset;)V
    .locals 28
    .parameter "data"
    .parameter "offset"
    .parameter "byteCount"
    .parameter "charset"

    .prologue
    .line 255
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 256
    or-int v23, p2, p3

    if-ltz v23, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    sub-int v23, v23, p2

    move/from16 v0, p3

    move/from16 v1, v23

    if-le v0, v1, :cond_1

    .line 257
    :cond_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;->failedBoundsCheck(III)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v23

    throw v23

    .line 262
    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    .line 263
    .local v6, canonicalCharsetName:Ljava/lang/String;
    const-string v23, "UTF-8"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 264
    move-object/from16 v8, p1

    .line 265
    .local v8, d:[B
    move/from16 v0, p3

    new-array v0, v0, [C

    move-object/from16 v19, v0

    .line 267
    .local v19, v:[C
    move/from16 v11, p2

    .line 268
    .local v11, idx:I
    add-int v13, p2, p3

    .line 269
    .local v13, last:I
    const/4 v15, 0x0

    .local v15, s:I
    move/from16 v16, v15

    .end local v15           #s:I
    .local v16, s:I
    move v12, v11

    .line 271
    .end local v11           #idx:I
    .local v12, idx:I
    :goto_0
    if-ge v12, v13, :cond_14

    .line 272
    add-int/lit8 v11, v12, 0x1

    .end local v12           #idx:I
    .restart local v11       #idx:I
    aget-byte v5, v8, v12

    .line 273
    .local v5, b0:B
    and-int/lit16 v0, v5, 0x80

    move/from16 v23, v0

    if-nez v23, :cond_2

    .line 276
    and-int/lit16 v0, v5, 0xff

    move/from16 v20, v0

    .line 277
    .local v20, val:I
    add-int/lit8 v15, v16, 0x1

    .end local v16           #s:I
    .restart local v15       #s:I
    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v23, v0

    aput-char v23, v19, v16

    .end local v20           #val:I
    :goto_1
    move/from16 v16, v15

    .end local v15           #s:I
    .restart local v16       #s:I
    move v12, v11

    .line 354
    .end local v11           #idx:I
    .restart local v12       #idx:I
    goto :goto_0

    .line 278
    .end local v12           #idx:I
    .restart local v11       #idx:I
    :cond_2
    and-int/lit16 v0, v5, 0xe0

    move/from16 v23, v0

    const/16 v24, 0xc0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    and-int/lit16 v0, v5, 0xf0

    move/from16 v23, v0

    const/16 v24, 0xe0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    and-int/lit16 v0, v5, 0xf8

    move/from16 v23, v0

    const/16 v24, 0xf0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    and-int/lit16 v0, v5, 0xfc

    move/from16 v23, v0

    const/16 v24, 0xf8

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    and-int/lit16 v0, v5, 0xfe

    move/from16 v23, v0

    const/16 v24, 0xfc

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    .line 280
    :cond_3
    const/16 v18, 0x1

    .line 281
    .local v18, utfCount:I
    and-int/lit16 v0, v5, 0xf0

    move/from16 v23, v0

    const/16 v24, 0xe0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    const/16 v18, 0x2

    .line 293
    :cond_4
    :goto_2
    add-int v23, v11, v18

    move/from16 v0, v23

    if-le v0, v13, :cond_8

    .line 294
    add-int/lit8 v15, v16, 0x1

    .end local v16           #s:I
    .restart local v15       #s:I
    const v23, 0xfffd

    aput-char v23, v19, v16

    .line 356
    .end local v5           #b0:B
    .end local v18           #utfCount:I
    :goto_3
    move/from16 v0, p3

    if-ne v15, v0, :cond_f

    .line 358
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->offset:I

    .line 359
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/String;->value:[C

    .line 360
    move-object/from16 v0, p0

    iput v15, v0, Ljava/lang/String;->count:I

    .line 394
    .end local v8           #d:[B
    .end local v11           #idx:I
    .end local v13           #last:I
    .end local v15           #s:I
    .end local v19           #v:[C
    :goto_4
    return-void

    .line 282
    .restart local v5       #b0:B
    .restart local v8       #d:[B
    .restart local v11       #idx:I
    .restart local v13       #last:I
    .restart local v16       #s:I
    .restart local v18       #utfCount:I
    .restart local v19       #v:[C
    :cond_5
    and-int/lit16 v0, v5, 0xf8

    move/from16 v23, v0

    const/16 v24, 0xf0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    const/16 v18, 0x3

    goto :goto_2

    .line 283
    :cond_6
    and-int/lit16 v0, v5, 0xfc

    move/from16 v23, v0

    const/16 v24, 0xf8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    const/16 v18, 0x4

    goto :goto_2

    .line 284
    :cond_7
    and-int/lit16 v0, v5, 0xfe

    move/from16 v23, v0

    const/16 v24, 0xfc

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    const/16 v18, 0x5

    goto :goto_2

    .line 299
    :cond_8
    const/16 v23, 0x1f

    add-int/lit8 v24, v18, -0x1

    shr-int v23, v23, v24

    and-int v20, v5, v23

    .line 300
    .restart local v20       #val:I
    const/4 v10, 0x0

    .local v10, i:I
    move v12, v11

    .end local v11           #idx:I
    .restart local v12       #idx:I
    :goto_5
    move/from16 v0, v18

    if-ge v10, v0, :cond_a

    .line 301
    add-int/lit8 v11, v12, 0x1

    .end local v12           #idx:I
    .restart local v11       #idx:I
    aget-byte v4, v8, v12

    .line 302
    .local v4, b:B
    and-int/lit16 v0, v4, 0xc0

    move/from16 v23, v0

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_9

    .line 303
    add-int/lit8 v15, v16, 0x1

    .end local v16           #s:I
    .restart local v15       #s:I
    const v23, 0xfffd

    aput-char v23, v19, v16

    .line 304
    add-int/lit8 v11, v11, -0x1

    move/from16 v16, v15

    .end local v15           #s:I
    .restart local v16       #s:I
    move v12, v11

    .line 305
    .end local v11           #idx:I
    .restart local v12       #idx:I
    goto/16 :goto_0

    .line 308
    .end local v12           #idx:I
    .restart local v11       #idx:I
    :cond_9
    shl-int/lit8 v20, v20, 0x6

    .line 309
    and-int/lit8 v23, v4, 0x3f

    or-int v20, v20, v23

    .line 300
    add-int/lit8 v10, v10, 0x1

    move v12, v11

    .end local v11           #idx:I
    .restart local v12       #idx:I
    goto :goto_5

    .line 327
    .end local v4           #b:B
    :cond_a
    const/16 v23, 0x2

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_b

    const v23, 0xd800

    move/from16 v0, v20

    move/from16 v1, v23

    if-lt v0, v1, :cond_b

    const v23, 0xdfff

    move/from16 v0, v20

    move/from16 v1, v23

    if-gt v0, v1, :cond_b

    .line 328
    add-int/lit8 v15, v16, 0x1

    .end local v16           #s:I
    .restart local v15       #s:I
    const v23, 0xfffd

    aput-char v23, v19, v16

    move/from16 v16, v15

    .line 329
    .end local v15           #s:I
    .restart local v16       #s:I
    goto/16 :goto_0

    .line 333
    :cond_b
    const v23, 0x10ffff

    move/from16 v0, v20

    move/from16 v1, v23

    if-le v0, v1, :cond_c

    .line 334
    add-int/lit8 v15, v16, 0x1

    .end local v16           #s:I
    .restart local v15       #s:I
    const v23, 0xfffd

    aput-char v23, v19, v16

    move/from16 v16, v15

    .line 335
    .end local v15           #s:I
    .restart local v16       #s:I
    goto/16 :goto_0

    .line 339
    :cond_c
    const/high16 v23, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_d

    .line 340
    add-int/lit8 v15, v16, 0x1

    .end local v16           #s:I
    .restart local v15       #s:I
    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v23, v0

    aput-char v23, v19, v16

    :goto_6
    move v11, v12

    .line 350
    .end local v12           #idx:I
    .restart local v11       #idx:I
    goto/16 :goto_1

    .line 342
    .end local v11           #idx:I
    .end local v15           #s:I
    .restart local v12       #idx:I
    .restart local v16       #s:I
    :cond_d
    const v23, 0xffff

    and-int v22, v20, v23

    .line 343
    .local v22, x:I
    shr-int/lit8 v23, v20, 0x10

    and-int/lit8 v17, v23, 0x1f

    .line 344
    .local v17, u:I
    add-int/lit8 v23, v17, -0x1

    const v24, 0xffff

    and-int v21, v23, v24

    .line 345
    .local v21, w:I
    const v23, 0xd800

    shl-int/lit8 v24, v21, 0x6

    or-int v23, v23, v24

    shr-int/lit8 v24, v22, 0xa

    or-int v9, v23, v24

    .line 346
    .local v9, hi:I
    const v23, 0xdc00

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x3ff

    move/from16 v24, v0

    or-int v14, v23, v24

    .line 347
    .local v14, lo:I
    add-int/lit8 v15, v16, 0x1

    .end local v16           #s:I
    .restart local v15       #s:I
    int-to-char v0, v9

    move/from16 v23, v0

    aput-char v23, v19, v16

    .line 348
    add-int/lit8 v16, v15, 0x1

    .end local v15           #s:I
    .restart local v16       #s:I
    int-to-char v0, v14

    move/from16 v23, v0

    aput-char v23, v19, v15

    move/from16 v15, v16

    .end local v16           #s:I
    .restart local v15       #s:I
    goto :goto_6

    .line 352
    .end local v9           #hi:I
    .end local v10           #i:I
    .end local v12           #idx:I
    .end local v14           #lo:I
    .end local v15           #s:I
    .end local v17           #u:I
    .end local v18           #utfCount:I
    .end local v20           #val:I
    .end local v21           #w:I
    .end local v22           #x:I
    .restart local v11       #idx:I
    .restart local v16       #s:I
    :cond_e
    add-int/lit8 v15, v16, 0x1

    .end local v16           #s:I
    .restart local v15       #s:I
    const v23, 0xfffd

    aput-char v23, v19, v16

    goto/16 :goto_1

    .line 363
    .end local v5           #b0:B
    :cond_f
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->offset:I

    .line 364
    new-array v0, v15, [C

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/String;->value:[C

    .line 365
    move-object/from16 v0, p0

    iput v15, v0, Ljava/lang/String;->count:I

    .line 366
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/String;->value:[C

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_4

    .line 368
    .end local v8           #d:[B
    .end local v11           #idx:I
    .end local v13           #last:I
    .end local v15           #s:I
    .end local v19           #v:[C
    :cond_10
    const-string v23, "ISO-8859-1"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 369
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->offset:I

    .line 370
    move/from16 v0, p3

    new-array v0, v0, [C

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/String;->value:[C

    .line 371
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->count:I

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/String;->value:[C

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Ljava/nio/charset/Charsets;->isoLatin1BytesToChars([BII[C)V

    goto/16 :goto_4

    .line 373
    :cond_11
    const-string v23, "US-ASCII"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_12

    .line 374
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->offset:I

    .line 375
    move/from16 v0, p3

    new-array v0, v0, [C

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/String;->value:[C

    .line 376
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->count:I

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/String;->value:[C

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Ljava/nio/charset/Charsets;->asciiBytesToChars([BII[C)V

    goto/16 :goto_4

    .line 379
    :cond_12
    invoke-static/range {p1 .. p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v23

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v7

    .line 380
    .local v7, cb:Ljava/nio/CharBuffer;
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->offset:I

    .line 381
    invoke-virtual {v7}, Ljava/nio/CharBuffer;->length()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->count:I

    .line 382
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/String;->count:I

    move/from16 v23, v0

    if-lez v23, :cond_13

    .line 388
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/String;->count:I

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [C

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/String;->value:[C

    .line 389
    invoke-virtual {v7}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/String;->value:[C

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/String;->count:I

    move/from16 v27, v0

    invoke-static/range {v23 .. v27}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_4

    .line 391
    :cond_13
    sget-object v23, Llibcore/util/EmptyArray;->CHAR:[C

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/String;->value:[C

    goto/16 :goto_4

    .end local v7           #cb:Ljava/nio/CharBuffer;
    .restart local v8       #d:[B
    .restart local v12       #idx:I
    .restart local v13       #last:I
    .restart local v16       #s:I
    .restart local v19       #v:[C
    :cond_14
    move/from16 v15, v16

    .end local v16           #s:I
    .restart local v15       #s:I
    move v11, v12

    .end local v12           #idx:I
    .restart local v11       #idx:I
    goto/16 :goto_3
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 3
    .parameter "data"
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 238
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p2}, Ljava/nio/charset/Charset;->forNameUEE(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 239
    return-void
.end method

.method public constructor <init>([BLjava/nio/charset/Charset;)V
    .locals 2
    .parameter "data"
    .parameter "charset"

    .prologue
    .line 403
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 404
    return-void
.end method

.method public constructor <init>([C)V
    .locals 2
    .parameter "data"

    .prologue
    .line 414
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Ljava/lang/String;-><init>([CII)V

    .line 415
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 3
    .parameter "data"
    .parameter "offset"
    .parameter "charCount"

    .prologue
    const/4 v2, 0x0

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    or-int v0, p2, p3

    if-ltz v0, :cond_0

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_1

    .line 429
    :cond_0
    array-length v0, p1

    invoke-direct {p0, v0, p2, p3}, Ljava/lang/String;->failedBoundsCheck(III)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 431
    :cond_1
    iput v2, p0, Ljava/lang/String;->offset:I

    .line 432
    new-array v0, p3, [C

    iput-object v0, p0, Ljava/lang/String;->value:[C

    .line 433
    iput p3, p0, Ljava/lang/String;->count:I

    .line 434
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->count:I

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 435
    return-void
.end method

.method public constructor <init>([III)V
    .locals 5
    .parameter "codePoints"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    if-nez p1, :cond_0

    .line 527
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 529
    :cond_0
    or-int v3, p2, p3

    if-ltz v3, :cond_1

    array-length v3, p1

    sub-int/2addr v3, p2

    if-le p3, v3, :cond_2

    .line 530
    :cond_1
    array-length v3, p1

    invoke-direct {p0, v3, p2, p3}, Ljava/lang/String;->failedBoundsCheck(III)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v3

    throw v3

    .line 532
    :cond_2
    const/4 v3, 0x0

    iput v3, p0, Ljava/lang/String;->offset:I

    .line 533
    mul-int/lit8 v3, p3, 0x2

    new-array v3, v3, [C

    iput-object v3, p0, Ljava/lang/String;->value:[C

    .line 534
    add-int v1, p2, p3

    .line 535
    .local v1, end:I
    const/4 v0, 0x0

    .line 536
    .local v0, c:I
    move v2, p2

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 537
    aget v3, p1, v2

    iget-object v4, p0, Ljava/lang/String;->value:[C

    invoke-static {v3, v4, v0}, Ljava/lang/Character;->toChars(I[CI)I

    move-result v3

    add-int/2addr v0, v3

    .line 536
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 539
    :cond_3
    iput v0, p0, Ljava/lang/String;->count:I

    .line 540
    return-void
.end method

.method public static copyValueOf([C)Ljava/lang/String;
    .locals 3
    .parameter "data"

    .prologue
    .line 704
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public static copyValueOf([CII)Ljava/lang/String;
    .locals 1
    .parameter "data"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 726
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private failedBoundsCheck(III)Ljava/lang/StringIndexOutOfBoundsException;
    .locals 1
    .parameter "arrayLength"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 597
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(III)V

    throw v0
.end method

.method private native fastIndexOf(II)I
.end method

.method private foldCase(C)C
    .locals 1
    .parameter "ch"

    .prologue
    .line 605
    const/16 v0, 0x80

    if-ge p1, v0, :cond_1

    .line 606
    const/16 v0, 0x41

    if-gt v0, p1, :cond_0

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_0

    .line 607
    add-int/lit8 v0, p1, 0x20

    int-to-char p1, v0

    .line 611
    .end local p1
    :cond_0
    :goto_0
    return p1

    .restart local p1
    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    goto :goto_0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "format"
    .parameter "args"

    .prologue
    .line 1972
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .parameter "locale"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 1993
    if-nez p1, :cond_0

    .line 1994
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null format argument"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1996
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez p2, :cond_1

    const/4 v2, 0x0

    :goto_0
    add-int v0, v3, v2

    .line 1997
    .local v0, bufferSize:I
    new-instance v1, Ljava/util/Formatter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-direct {v1, v2, p0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 1998
    .local v1, f:Ljava/util/Formatter;
    invoke-virtual {v1, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1996
    .end local v0           #bufferSize:I
    .end local v1           #f:Ljava/util/Formatter;
    :cond_1
    array-length v2, p2

    mul-int/lit8 v2, v2, 0xa

    goto :goto_0
.end method

.method private indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;
    .locals 1
    .parameter "index"

    .prologue
    .line 589
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static indexOf(Ljava/lang/String;Ljava/lang/String;IIC)I
    .locals 14
    .parameter "haystackString"
    .parameter "needleString"
    .parameter "cache"
    .parameter "md2"
    .parameter "lastChar"
    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "UPM_UNCALLED_PRIVATE_METHOD"
        }
    .end annotation

    .prologue
    .line 2014
    iget-object v1, p0, Ljava/lang/String;->value:[C

    .line 2015
    .local v1, haystack:[C
    iget v4, p0, Ljava/lang/String;->offset:I

    .line 2016
    .local v4, haystackOffset:I
    iget v3, p0, Ljava/lang/String;->count:I

    .line 2017
    .local v3, haystackLength:I
    iget-object v7, p1, Ljava/lang/String;->value:[C

    .line 2018
    .local v7, needle:[C
    iget v10, p1, Ljava/lang/String;->offset:I

    .line 2019
    .local v10, needleOffset:I
    iget v8, p1, Ljava/lang/String;->count:I

    .line 2020
    .local v8, needleLength:I
    add-int/lit8 v9, v8, -0x1

    .line 2021
    .local v9, needleLengthMinus1:I
    add-int v2, v4, v3

    .line 2022
    .local v2, haystackEnd:I
    add-int v5, v4, v9

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_5

    .line 2023
    aget-char v12, v1, v5

    move/from16 v0, p4

    if-ne v0, v12, :cond_3

    .line 2024
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    if-ge v6, v9, :cond_2

    .line 2025
    add-int v12, v6, v10

    aget-char v12, v7, v12

    add-int v13, v5, v6

    sub-int/2addr v13, v9

    aget-char v13, v1, v13

    if-eq v12, v13, :cond_1

    .line 2027
    const/4 v11, 0x1

    .line 2028
    .local v11, skip:I
    const/4 v12, 0x1

    aget-char v13, v1, v5

    shl-int/2addr v12, v13

    and-int v12, v12, p2

    if-nez v12, :cond_0

    .line 2029
    add-int/2addr v11, v6

    .line 2031
    :cond_0
    move/from16 v0, p3

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int/2addr v5, v12

    .line 2032
    goto :goto_0

    .line 2024
    .end local v11           #skip:I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2035
    :cond_2
    sub-int v12, v5, v9

    sub-int/2addr v12, v4

    .line 2043
    .end local v6           #j:I
    :goto_2
    return v12

    .line 2038
    :cond_3
    const/4 v12, 0x1

    aget-char v13, v1, v5

    shl-int/2addr v12, v13

    and-int v12, v12, p2

    if-nez v12, :cond_4

    .line 2039
    add-int/2addr v5, v9

    .line 2041
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2043
    :cond_5
    const/4 v12, -0x1

    goto :goto_2
.end method

.method private indexOfSupplementary(II)I
    .locals 4
    .parameter "c"
    .parameter "start"

    .prologue
    .line 972
    invoke-static {p1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 973
    const/4 v2, -0x1

    .line 977
    :goto_0
    return v2

    .line 975
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 976
    .local v0, chars:[C
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>(II[C)V

    .line 977
    .local v1, needle:Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0
.end method

.method private lastIndexOfSupplementary(II)I
    .locals 4
    .parameter "c"
    .parameter "start"

    .prologue
    .line 1138
    invoke-static {p1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1139
    const/4 v2, -0x1

    .line 1143
    :goto_0
    return v2

    .line 1141
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 1142
    .local v0, chars:[C
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>(II[C)V

    .line 1143
    .local v1, needle:Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0
.end method

.method private startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 593
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    sub-int v1, p2, p1

    invoke-direct {v0, p0, p1, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;II)V

    throw v0
.end method

.method public static valueOf(C)Ljava/lang/String;
    .locals 4
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1618
    const/16 v1, 0x80

    if-ge p0, v1, :cond_0

    .line 1619
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/lang/String;->ASCII:[C

    invoke-direct {v0, p0, v2, v1}, Ljava/lang/String;-><init>(II[C)V

    .line 1623
    .local v0, s:Ljava/lang/String;
    :goto_0
    iput p0, v0, Ljava/lang/String;->hashCode:I

    .line 1624
    return-object v0

    .line 1621
    .end local v0           #s:Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/String;

    new-array v1, v2, [C

    aput-char p0, v1, v3

    invoke-direct {v0, v3, v2, v1}, Ljava/lang/String;-><init>(II[C)V

    .restart local v0       #s:Ljava/lang/String;
    goto :goto_0
.end method

.method public static valueOf(D)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 1635
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(F)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 1646
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 1657
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(J)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 1668
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 1681
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public static valueOf(Z)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 1694
    if-eqz p0, :cond_0

    const-string v0, "true"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public static valueOf([C)Ljava/lang/String;
    .locals 3
    .parameter "data"

    .prologue
    .line 1584
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public static valueOf([CII)Ljava/lang/String;
    .locals 1
    .parameter "data"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 1606
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method


# virtual methods
.method _getChars(II[CI)V
    .locals 3
    .parameter "start"
    .parameter "end"
    .parameter "buffer"
    .parameter "index"

    .prologue
    .line 913
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 914
    return-void
.end method

.method public native charAt(I)C
.end method

.method public codePointAt(I)I
    .locals 4
    .parameter "index"

    .prologue
    .line 1872
    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/String;->count:I

    if-lt p1, v0, :cond_1

    .line 1873
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/String;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 1875
    :cond_1
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    iget v2, p0, Ljava/lang/String;->offset:I

    iget v3, p0, Ljava/lang/String;->count:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/Character;->codePointAt([CII)I

    move-result v0

    return v0
.end method

.method public codePointBefore(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 1886
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget v0, p0, Ljava/lang/String;->count:I

    if-le p1, v0, :cond_1

    .line 1887
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/String;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 1889
    :cond_1
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    iget v2, p0, Ljava/lang/String;->offset:I

    invoke-static {v0, v1, v2}, Ljava/lang/Character;->codePointBefore([CII)I

    move-result v0

    return v0
.end method

.method public codePointCount(II)I
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1907
    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/String;->count:I

    if-gt p2, v0, :cond_0

    if-le p1, p2, :cond_1

    .line 1908
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 1910
    :cond_1
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, v2}, Ljava/lang/Character;->codePointCount([CII)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public native compareTo(Ljava/lang/String;)I
.end method

.method public compareToIgnoreCase(Ljava/lang/String;)I
    .locals 12
    .parameter "string"

    .prologue
    .line 657
    iget v3, p0, Ljava/lang/String;->offset:I

    .local v3, o1:I
    iget v5, p1, Ljava/lang/String;->offset:I

    .line 658
    .local v5, o2:I
    iget v10, p0, Ljava/lang/String;->offset:I

    iget v9, p0, Ljava/lang/String;->count:I

    iget v11, p1, Ljava/lang/String;->count:I

    if-ge v9, v11, :cond_0

    iget v9, p0, Ljava/lang/String;->count:I

    :goto_0
    add-int v2, v10, v9

    .line 660
    .local v2, end:I
    iget-object v8, p1, Ljava/lang/String;->value:[C

    .local v8, target:[C
    move v6, v5

    .end local v5           #o2:I
    .local v6, o2:I
    move v4, v3

    .line 661
    .end local v3           #o1:I
    .local v4, o1:I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 662
    iget-object v9, p0, Ljava/lang/String;->value:[C

    add-int/lit8 v3, v4, 0x1

    .end local v4           #o1:I
    .restart local v3       #o1:I
    aget-char v0, v9, v4

    .local v0, c1:C
    add-int/lit8 v5, v6, 0x1

    .end local v6           #o2:I
    .restart local v5       #o2:I
    aget-char v1, v8, v6

    .local v1, c2:C
    if-ne v0, v1, :cond_1

    move v6, v5

    .end local v5           #o2:I
    .restart local v6       #o2:I
    move v4, v3

    .line 663
    .end local v3           #o1:I
    .restart local v4       #o1:I
    goto :goto_1

    .line 658
    .end local v0           #c1:C
    .end local v1           #c2:C
    .end local v2           #end:I
    .end local v4           #o1:I
    .end local v6           #o2:I
    .end local v8           #target:[C
    .restart local v3       #o1:I
    .restart local v5       #o2:I
    :cond_0
    iget v9, p1, Ljava/lang/String;->count:I

    goto :goto_0

    .line 665
    .restart local v0       #c1:C
    .restart local v1       #c2:C
    .restart local v2       #end:I
    .restart local v8       #target:[C
    :cond_1
    invoke-direct {p0, v0}, Ljava/lang/String;->foldCase(C)C

    move-result v0

    .line 666
    invoke-direct {p0, v1}, Ljava/lang/String;->foldCase(C)C

    move-result v1

    .line 667
    sub-int v7, v0, v1

    .local v7, result:I
    if-eqz v7, :cond_3

    .line 671
    .end local v0           #c1:C
    .end local v1           #c2:C
    .end local v7           #result:I
    :goto_2
    return v7

    .end local v3           #o1:I
    .end local v5           #o2:I
    .restart local v4       #o1:I
    .restart local v6       #o2:I
    :cond_2
    iget v9, p0, Ljava/lang/String;->count:I

    iget v10, p1, Ljava/lang/String;->count:I

    sub-int v7, v9, v10

    move v5, v6

    .end local v6           #o2:I
    .restart local v5       #o2:I
    move v3, v4

    .end local v4           #o1:I
    .restart local v3       #o1:I
    goto :goto_2

    .restart local v0       #c1:C
    .restart local v1       #c2:C
    .restart local v7       #result:I
    :cond_3
    move v6, v5

    .end local v5           #o2:I
    .restart local v6       #o2:I
    move v4, v3

    .end local v3           #o1:I
    .restart local v4       #o1:I
    goto :goto_1
.end method

.method public concat(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "string"

    .prologue
    const/4 v5, 0x0

    .line 683
    iget v1, p1, Ljava/lang/String;->count:I

    if-lez v1, :cond_1

    iget v1, p0, Ljava/lang/String;->count:I

    if-lez v1, :cond_1

    .line 684
    iget v1, p0, Ljava/lang/String;->count:I

    iget v2, p1, Ljava/lang/String;->count:I

    add-int/2addr v1, v2

    new-array v0, v1, [C

    .line 685
    .local v0, buffer:[C
    iget-object v1, p0, Ljava/lang/String;->value:[C

    iget v2, p0, Ljava/lang/String;->offset:I

    iget v3, p0, Ljava/lang/String;->count:I

    invoke-static {v1, v2, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 686
    iget-object v1, p1, Ljava/lang/String;->value:[C

    iget v2, p1, Ljava/lang/String;->offset:I

    iget v3, p0, Ljava/lang/String;->count:I

    iget v4, p1, Ljava/lang/String;->count:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 687
    new-instance p1, Ljava/lang/String;

    .end local p1
    array-length v1, v0

    invoke-direct {p1, v5, v1, v0}, Ljava/lang/String;-><init>(II[C)V

    .line 689
    .end local v0           #buffer:[C
    :cond_0
    :goto_0
    return-object p1

    .restart local p1
    :cond_1
    iget v1, p0, Ljava/lang/String;->count:I

    if-eqz v1, :cond_0

    move-object p1, p0

    goto :goto_0
.end method

.method public contains(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "cs"

    .prologue
    .line 1924
    if-nez p1, :cond_0

    .line 1925
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1927
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contentEquals(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "cs"

    .prologue
    const/4 v1, 0x0

    .line 1731
    if-nez p1, :cond_0

    .line 1732
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1735
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1737
    .local v0, len:I
    iget v2, p0, Ljava/lang/String;->count:I

    if-eq v0, v2, :cond_1

    .line 1745
    :goto_0
    return v1

    .line 1741
    :cond_1
    if-nez v0, :cond_2

    iget v2, p0, Ljava/lang/String;->count:I

    if-nez v2, :cond_2

    .line 1742
    const/4 v1, 0x1

    goto :goto_0

    .line 1745
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v1, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    goto :goto_0
.end method

.method public contentEquals(Ljava/lang/StringBuffer;)Z
    .locals 5
    .parameter "strbuf"

    .prologue
    const/4 v1, 0x0

    .line 1711
    monitor-enter p1

    .line 1712
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 1713
    .local v0, size:I
    iget v2, p0, Ljava/lang/String;->count:I

    if-eq v2, v0, :cond_0

    .line 1714
    monitor-exit p1

    .line 1716
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/AbstractStringBuilder;->getValue()[C

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Ljava/lang/String;-><init>(II[C)V

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    monitor-exit p1

    goto :goto_0

    .line 1718
    .end local v0           #size:I
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public endsWith(Ljava/lang/String;)Z
    .locals 3
    .parameter "suffix"

    .prologue
    .line 741
    iget v0, p0, Ljava/lang/String;->count:I

    iget v1, p1, Ljava/lang/String;->count:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    iget v2, p1, Ljava/lang/String;->count:I

    invoke-virtual {p0, v0, p1, v1, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public native equals(Ljava/lang/Object;)Z
.end method

.method public equalsIgnoreCase(Ljava/lang/String;)Z
    .locals 12
    .parameter "string"
    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "ES_COMPARING_PARAMETER_STRING_WITH_EQ"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 768
    if-ne p1, p0, :cond_1

    .line 784
    :cond_0
    :goto_0
    return v8

    .line 771
    :cond_1
    if-eqz p1, :cond_2

    iget v10, p0, Ljava/lang/String;->count:I

    iget v11, p1, Ljava/lang/String;->count:I

    if-eq v10, v11, :cond_3

    :cond_2
    move v8, v9

    .line 772
    goto :goto_0

    .line 774
    :cond_3
    iget v3, p0, Ljava/lang/String;->offset:I

    .local v3, o1:I
    iget v5, p1, Ljava/lang/String;->offset:I

    .line 775
    .local v5, o2:I
    iget v10, p0, Ljava/lang/String;->offset:I

    iget v11, p0, Ljava/lang/String;->count:I

    add-int v2, v10, v11

    .line 776
    .local v2, end:I
    iget-object v7, p1, Ljava/lang/String;->value:[C

    .local v7, target:[C
    move v6, v5

    .end local v5           #o2:I
    .local v6, o2:I
    move v4, v3

    .line 777
    .end local v3           #o1:I
    .local v4, o1:I
    :goto_1
    if-ge v4, v2, :cond_0

    .line 778
    iget-object v10, p0, Ljava/lang/String;->value:[C

    add-int/lit8 v3, v4, 0x1

    .end local v4           #o1:I
    .restart local v3       #o1:I
    aget-char v0, v10, v4

    .line 779
    .local v0, c1:C
    add-int/lit8 v5, v6, 0x1

    .end local v6           #o2:I
    .restart local v5       #o2:I
    aget-char v1, v7, v6

    .line 780
    .local v1, c2:C
    if-eq v0, v1, :cond_4

    invoke-direct {p0, v0}, Ljava/lang/String;->foldCase(C)C

    move-result v10

    invoke-direct {p0, v1}, Ljava/lang/String;->foldCase(C)C

    move-result v11

    if-eq v10, v11, :cond_4

    move v8, v9

    .line 781
    goto :goto_0

    :cond_4
    move v6, v5

    .end local v5           #o2:I
    .restart local v6       #o2:I
    move v4, v3

    .line 783
    .end local v3           #o1:I
    .restart local v4       #o1:I
    goto :goto_1
.end method

.method public getBytes(II[BI)V
    .locals 5
    .parameter "start"
    .parameter "end"
    .parameter "data"
    .parameter "index"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 809
    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    iget v3, p0, Ljava/lang/String;->count:I

    if-gt p2, v3, :cond_0

    .line 810
    iget v3, p0, Ljava/lang/String;->offset:I

    add-int/2addr p2, v3

    .line 812
    :try_start_0
    iget v3, p0, Ljava/lang/String;->offset:I

    add-int v0, v3, p1

    .local v0, i:I
    move v2, p4

    .end local p4
    .local v2, index:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 813
    add-int/lit8 p4, v2, 0x1

    .end local v2           #index:I
    .restart local p4
    iget-object v3, p0, Ljava/lang/String;->value:[C

    aget-char v3, v3, v0

    int-to-byte v3, v3

    aput-byte v3, p3, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    add-int/lit8 v0, v0, 0x1

    move v2, p4

    .end local p4
    .restart local v2       #index:I
    goto :goto_0

    .line 815
    .end local v0           #i:I
    .end local v2           #index:I
    .restart local p4
    :catch_0
    move-exception v1

    .line 816
    .local v1, ignored:Ljava/lang/ArrayIndexOutOfBoundsException;
    array-length v3, p3

    sub-int v4, p2, p1

    invoke-direct {p0, v3, p4, v4}, Ljava/lang/String;->failedBoundsCheck(III)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v3

    throw v3

    .line 819
    .end local v1           #ignored:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v3

    throw v3

    .line 821
    .end local p4
    .restart local v0       #i:I
    .restart local v2       #index:I
    :cond_1
    return-void
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 832
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 1
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 845
    invoke-static {p1}, Ljava/nio/charset/Charset;->forNameUEE(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytes(Ljava/nio/charset/Charset;)[B
    .locals 7
    .parameter "charset"

    .prologue
    .line 859
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    .line 860
    .local v2, canonicalCharsetName:Ljava/lang/String;
    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 861
    iget-object v4, p0, Ljava/lang/String;->value:[C

    iget v5, p0, Ljava/lang/String;->offset:I

    iget v6, p0, Ljava/lang/String;->count:I

    invoke-static {v4, v5, v6}, Ljava/nio/charset/Charsets;->toUtf8Bytes([CII)[B

    move-result-object v1

    .line 873
    :goto_0
    return-object v1

    .line 862
    :cond_0
    const-string v4, "ISO-8859-1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 863
    iget-object v4, p0, Ljava/lang/String;->value:[C

    iget v5, p0, Ljava/lang/String;->offset:I

    iget v6, p0, Ljava/lang/String;->count:I

    invoke-static {v4, v5, v6}, Ljava/nio/charset/Charsets;->toIsoLatin1Bytes([CII)[B

    move-result-object v1

    goto :goto_0

    .line 864
    :cond_1
    const-string v4, "US-ASCII"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 865
    iget-object v4, p0, Ljava/lang/String;->value:[C

    iget v5, p0, Ljava/lang/String;->offset:I

    iget v6, p0, Ljava/lang/String;->count:I

    invoke-static {v4, v5, v6}, Ljava/nio/charset/Charsets;->toAsciiBytes([CII)[B

    move-result-object v1

    goto :goto_0

    .line 866
    :cond_2
    const-string v4, "UTF-16BE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 867
    iget-object v4, p0, Ljava/lang/String;->value:[C

    iget v5, p0, Ljava/lang/String;->offset:I

    iget v6, p0, Ljava/lang/String;->count:I

    invoke-static {v4, v5, v6}, Ljava/nio/charset/Charsets;->toBigEndianUtf16Bytes([CII)[B

    move-result-object v1

    goto :goto_0

    .line 869
    :cond_3
    iget-object v4, p0, Ljava/lang/String;->value:[C

    iget v5, p0, Ljava/lang/String;->offset:I

    iget v6, p0, Ljava/lang/String;->count:I

    invoke-static {v4, v5, v6}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v3

    .line 870
    .local v3, chars:Ljava/nio/CharBuffer;
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->asReadOnlyBuffer()Ljava/nio/CharBuffer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 871
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v4

    new-array v1, v4, [B

    .line 872
    .local v1, bytes:[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public getChars(II[CI)V
    .locals 3
    .parameter "start"
    .parameter "end"
    .parameter "buffer"
    .parameter "index"

    .prologue
    .line 898
    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    iget v0, p0, Ljava/lang/String;->count:I

    if-gt p2, v0, :cond_0

    .line 899
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 904
    return-void

    .line 902
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 917
    iget v2, p0, Ljava/lang/String;->hashCode:I

    .line 918
    .local v2, hash:I
    if-nez v2, :cond_2

    .line 919
    iget v4, p0, Ljava/lang/String;->count:I

    if-nez v4, :cond_0

    .line 920
    const/4 v4, 0x0

    .line 929
    :goto_0
    return v4

    .line 922
    :cond_0
    iget v4, p0, Ljava/lang/String;->count:I

    iget v5, p0, Ljava/lang/String;->offset:I

    add-int v1, v4, v5

    .line 923
    .local v1, end:I
    iget-object v0, p0, Ljava/lang/String;->value:[C

    .line 924
    .local v0, chars:[C
    iget v3, p0, Ljava/lang/String;->offset:I

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 925
    mul-int/lit8 v4, v2, 0x1f

    aget-char v5, v0, v3

    add-int v2, v4, v5

    .line 924
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 927
    :cond_1
    iput v2, p0, Ljava/lang/String;->hashCode:I

    .end local v0           #chars:[C
    .end local v1           #end:I
    .end local v3           #i:I
    :cond_2
    move v4, v2

    .line 929
    goto :goto_0
.end method

.method public indexOf(I)I
    .locals 2
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 944
    const v0, 0xffff

    if-le p1, v0, :cond_0

    .line 945
    invoke-direct {p0, p1, v1}, Ljava/lang/String;->indexOfSupplementary(II)I

    move-result v0

    .line 947
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, v1}, Ljava/lang/String;->fastIndexOf(II)I

    move-result v0

    goto :goto_0
.end method

.method public indexOf(II)I
    .locals 1
    .parameter "c"
    .parameter "start"

    .prologue
    .line 963
    const v0, 0xffff

    if-le p1, v0, :cond_0

    .line 964
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->indexOfSupplementary(II)I

    move-result v0

    .line 966
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->fastIndexOf(II)I

    move-result v0

    goto :goto_0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 14
    .parameter "string"

    .prologue
    const/4 v11, -0x1

    .line 993
    const/4 v7, 0x0

    .line 994
    .local v7, start:I
    iget v8, p1, Ljava/lang/String;->count:I

    .line 995
    .local v8, subCount:I
    iget v0, p0, Ljava/lang/String;->count:I

    .line 996
    .local v0, _count:I
    if-lez v8, :cond_6

    .line 997
    if-le v8, v0, :cond_1

    move v4, v11

    .line 1020
    .end local v0           #_count:I
    :cond_0
    :goto_0
    return v4

    .line 1000
    .restart local v0       #_count:I
    :cond_1
    iget-object v10, p1, Ljava/lang/String;->value:[C

    .line 1001
    .local v10, target:[C
    iget v9, p1, Ljava/lang/String;->offset:I

    .line 1002
    .local v9, subOffset:I
    aget-char v3, v10, v9

    .line 1003
    .local v3, firstChar:C
    add-int v2, v9, v8

    .line 1005
    .local v2, end:I
    :goto_1
    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 1006
    .local v4, i:I
    if-eq v4, v11, :cond_2

    add-int v12, v8, v4

    if-le v12, v0, :cond_3

    :cond_2
    move v4, v11

    .line 1007
    goto :goto_0

    .line 1009
    :cond_3
    iget v12, p0, Ljava/lang/String;->offset:I

    add-int v5, v12, v4

    .local v5, o1:I
    move v6, v9

    .line 1010
    .local v6, o2:I
    iget-object v1, p0, Ljava/lang/String;->value:[C

    .line 1011
    .local v1, _value:[C
    :cond_4
    add-int/lit8 v6, v6, 0x1

    if-ge v6, v2, :cond_5

    add-int/lit8 v5, v5, 0x1

    aget-char v12, v1, v5

    aget-char v13, v10, v6

    if-eq v12, v13, :cond_4

    .line 1014
    :cond_5
    if-eq v6, v2, :cond_0

    .line 1017
    add-int/lit8 v7, v4, 0x1

    .line 1018
    goto :goto_1

    .line 1020
    .end local v1           #_value:[C
    .end local v2           #end:I
    .end local v3           #firstChar:C
    .end local v4           #i:I
    .end local v5           #o1:I
    .end local v6           #o2:I
    .end local v9           #subOffset:I
    .end local v10           #target:[C
    :cond_6
    if-ge v7, v0, :cond_7

    move v0, v7

    .end local v0           #_count:I
    :cond_7
    move v4, v0

    goto :goto_0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 13
    .parameter "subString"
    .parameter "start"

    .prologue
    const/4 v10, -0x1

    .line 1038
    if-gez p2, :cond_0

    .line 1039
    const/4 p2, 0x0

    .line 1041
    :cond_0
    iget v7, p1, Ljava/lang/String;->count:I

    .line 1042
    .local v7, subCount:I
    iget v0, p0, Ljava/lang/String;->count:I

    .line 1043
    .local v0, _count:I
    if-lez v7, :cond_7

    .line 1044
    add-int v11, v7, p2

    if-le v11, v0, :cond_2

    move v4, v10

    .line 1067
    .end local v0           #_count:I
    :cond_1
    :goto_0
    return v4

    .line 1047
    .restart local v0       #_count:I
    :cond_2
    iget-object v9, p1, Ljava/lang/String;->value:[C

    .line 1048
    .local v9, target:[C
    iget v8, p1, Ljava/lang/String;->offset:I

    .line 1049
    .local v8, subOffset:I
    aget-char v3, v9, v8

    .line 1050
    .local v3, firstChar:C
    add-int v2, v8, v7

    .line 1052
    .local v2, end:I
    :goto_1
    invoke-virtual {p0, v3, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 1053
    .local v4, i:I
    if-eq v4, v10, :cond_3

    add-int v11, v7, v4

    if-le v11, v0, :cond_4

    :cond_3
    move v4, v10

    .line 1054
    goto :goto_0

    .line 1056
    :cond_4
    iget v11, p0, Ljava/lang/String;->offset:I

    add-int v5, v11, v4

    .local v5, o1:I
    move v6, v8

    .line 1057
    .local v6, o2:I
    iget-object v1, p0, Ljava/lang/String;->value:[C

    .line 1058
    .local v1, _value:[C
    :cond_5
    add-int/lit8 v6, v6, 0x1

    if-ge v6, v2, :cond_6

    add-int/lit8 v5, v5, 0x1

    aget-char v11, v1, v5

    aget-char v12, v9, v6

    if-eq v11, v12, :cond_5

    .line 1061
    :cond_6
    if-eq v6, v2, :cond_1

    .line 1064
    add-int/lit8 p2, v4, 0x1

    .line 1065
    goto :goto_1

    .line 1067
    .end local v1           #_value:[C
    .end local v2           #end:I
    .end local v3           #firstChar:C
    .end local v4           #i:I
    .end local v5           #o1:I
    .end local v6           #o2:I
    .end local v8           #subOffset:I
    .end local v9           #target:[C
    :cond_7
    if-ge p2, v0, :cond_8

    move v0, p2

    .end local v0           #_count:I
    :cond_8
    move v4, v0

    goto :goto_0
.end method

.method public native intern()Ljava/lang/String;
.end method

.method public native isEmpty()Z
.end method

.method public lastIndexOf(I)I
    .locals 5
    .parameter "c"

    .prologue
    .line 1098
    const v4, 0xffff

    if-le p1, v4, :cond_0

    .line 1099
    const v4, 0x7fffffff

    invoke-direct {p0, p1, v4}, Ljava/lang/String;->lastIndexOfSupplementary(II)I

    move-result v4

    .line 1109
    :goto_0
    return v4

    .line 1101
    :cond_0
    iget v0, p0, Ljava/lang/String;->count:I

    .line 1102
    .local v0, _count:I
    iget v1, p0, Ljava/lang/String;->offset:I

    .line 1103
    .local v1, _offset:I
    iget-object v2, p0, Ljava/lang/String;->value:[C

    .line 1104
    .local v2, _value:[C
    add-int v4, v1, v0

    add-int/lit8 v3, v4, -0x1

    .local v3, i:I
    :goto_1
    if-lt v3, v1, :cond_2

    .line 1105
    aget-char v4, v2, v3

    if-ne v4, p1, :cond_1

    .line 1106
    sub-int v4, v3, v1

    goto :goto_0

    .line 1104
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1109
    :cond_2
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public lastIndexOf(II)I
    .locals 5
    .parameter "c"
    .parameter "start"

    .prologue
    .line 1118
    const v4, 0xffff

    if-le p1, v4, :cond_0

    .line 1119
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->lastIndexOfSupplementary(II)I

    move-result v4

    .line 1134
    :goto_0
    return v4

    .line 1121
    :cond_0
    iget v0, p0, Ljava/lang/String;->count:I

    .line 1122
    .local v0, _count:I
    iget v1, p0, Ljava/lang/String;->offset:I

    .line 1123
    .local v1, _offset:I
    iget-object v2, p0, Ljava/lang/String;->value:[C

    .line 1124
    .local v2, _value:[C
    if-ltz p2, :cond_3

    .line 1125
    if-lt p2, v0, :cond_1

    .line 1126
    add-int/lit8 p2, v0, -0x1

    .line 1128
    :cond_1
    add-int v3, v1, p2

    .local v3, i:I
    :goto_1
    if-lt v3, v1, :cond_3

    .line 1129
    aget-char v4, v2, v3

    if-ne v4, p1, :cond_2

    .line 1130
    sub-int v4, v3, v1

    goto :goto_0

    .line 1128
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1134
    .end local v3           #i:I
    :cond_3
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1
    .parameter "string"

    .prologue
    .line 1160
    iget v0, p0, Ljava/lang/String;->count:I

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 11
    .parameter "subString"
    .parameter "start"

    .prologue
    const/4 v8, -0x1

    .line 1178
    iget v5, p1, Ljava/lang/String;->count:I

    .line 1179
    .local v5, subCount:I
    iget v9, p0, Ljava/lang/String;->count:I

    if-gt v5, v9, :cond_7

    if-ltz p2, :cond_7

    .line 1180
    if-lez v5, :cond_5

    .line 1181
    iget v9, p0, Ljava/lang/String;->count:I

    sub-int/2addr v9, v5

    if-le p2, v9, :cond_0

    .line 1182
    iget v9, p0, Ljava/lang/String;->count:I

    sub-int p2, v9, v5

    .line 1185
    :cond_0
    iget-object v7, p1, Ljava/lang/String;->value:[C

    .line 1186
    .local v7, target:[C
    iget v6, p1, Ljava/lang/String;->offset:I

    .line 1187
    .local v6, subOffset:I
    aget-char v1, v7, v6

    .line 1188
    .local v1, firstChar:C
    add-int v0, v6, v5

    .line 1190
    .local v0, end:I
    :goto_0
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    .line 1191
    .local v2, i:I
    if-ne v2, v8, :cond_2

    move v2, v8

    .line 1206
    .end local v0           #end:I
    .end local v1           #firstChar:C
    .end local v2           #i:I
    .end local v6           #subOffset:I
    .end local v7           #target:[C
    :cond_1
    :goto_1
    return v2

    .line 1194
    .restart local v0       #end:I
    .restart local v1       #firstChar:C
    .restart local v2       #i:I
    .restart local v6       #subOffset:I
    .restart local v7       #target:[C
    :cond_2
    iget v9, p0, Ljava/lang/String;->offset:I

    add-int v3, v9, v2

    .local v3, o1:I
    move v4, v6

    .line 1195
    .local v4, o2:I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_4

    iget-object v9, p0, Ljava/lang/String;->value:[C

    add-int/lit8 v3, v3, 0x1

    aget-char v9, v9, v3

    aget-char v10, v7, v4

    if-eq v9, v10, :cond_3

    .line 1198
    :cond_4
    if-eq v4, v0, :cond_1

    .line 1201
    add-int/lit8 p2, v2, -0x1

    .line 1202
    goto :goto_0

    .line 1204
    .end local v0           #end:I
    .end local v1           #firstChar:C
    .end local v2           #i:I
    .end local v3           #o1:I
    .end local v4           #o2:I
    .end local v6           #subOffset:I
    .end local v7           #target:[C
    :cond_5
    iget v8, p0, Ljava/lang/String;->count:I

    if-ge p2, v8, :cond_6

    move v8, p2

    :goto_2
    move v2, v8

    goto :goto_1

    :cond_6
    iget v8, p0, Ljava/lang/String;->count:I

    goto :goto_2

    :cond_7
    move v2, v8

    .line 1206
    goto :goto_1
.end method

.method public native length()I
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1
    .parameter "regularExpression"

    .prologue
    .line 1765
    invoke-static {p1, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public offsetByCodePoints(II)I
    .locals 5
    .parameter "index"
    .parameter "codePointOffset"

    .prologue
    .line 1946
    iget v2, p0, Ljava/lang/String;->offset:I

    add-int v1, p1, v2

    .line 1947
    .local v1, s:I
    iget-object v2, p0, Ljava/lang/String;->value:[C

    iget v3, p0, Ljava/lang/String;->offset:I

    iget v4, p0, Ljava/lang/String;->count:I

    invoke-static {v2, v3, v4, v1, p2}, Ljava/lang/Character;->offsetByCodePoints([CIIII)I

    move-result v0

    .line 1948
    .local v0, r:I
    iget v2, p0, Ljava/lang/String;->offset:I

    sub-int v2, v0, v2

    return v2
.end method

.method public regionMatches(ILjava/lang/String;II)Z
    .locals 9
    .parameter "thisStart"
    .parameter "string"
    .parameter "start"
    .parameter "length"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1234
    if-nez p2, :cond_0

    .line 1235
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 1237
    :cond_0
    if-ltz p3, :cond_1

    iget v7, p2, Ljava/lang/String;->count:I

    sub-int/2addr v7, p3

    if-ge v7, p4, :cond_3

    :cond_1
    move v5, v6

    .line 1254
    :cond_2
    :goto_0
    return v5

    .line 1240
    :cond_3
    if-ltz p1, :cond_4

    iget v7, p0, Ljava/lang/String;->count:I

    sub-int/2addr v7, p1

    if-ge v7, p4, :cond_5

    :cond_4
    move v5, v6

    .line 1241
    goto :goto_0

    .line 1243
    :cond_5
    if-lez p4, :cond_2

    .line 1246
    iget v7, p0, Ljava/lang/String;->offset:I

    add-int v1, v7, p1

    .local v1, o1:I
    iget v7, p2, Ljava/lang/String;->offset:I

    add-int v2, v7, p3

    .line 1247
    .local v2, o2:I
    iget-object v3, p0, Ljava/lang/String;->value:[C

    .line 1248
    .local v3, value1:[C
    iget-object v4, p2, Ljava/lang/String;->value:[C

    .line 1249
    .local v4, value2:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p4, :cond_2

    .line 1250
    add-int v7, v1, v0

    aget-char v7, v3, v7

    add-int v8, v2, v0

    aget-char v8, v4, v8

    if-eq v7, v8, :cond_6

    move v5, v6

    .line 1251
    goto :goto_0

    .line 1249
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public regionMatches(ZILjava/lang/String;II)Z
    .locals 9
    .parameter "ignoreCase"
    .parameter "thisStart"
    .parameter "string"
    .parameter "start"
    .parameter "length"

    .prologue
    const/4 v6, 0x0

    .line 1278
    if-nez p1, :cond_1

    .line 1279
    invoke-virtual {p0, p2, p3, p4, p5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    .line 1301
    :cond_0
    :goto_0
    return v6

    .line 1281
    :cond_1
    if-nez p3, :cond_2

    .line 1282
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "string == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1284
    :cond_2
    if-ltz p2, :cond_0

    iget v7, p0, Ljava/lang/String;->count:I

    sub-int/2addr v7, p2

    if-gt p5, v7, :cond_0

    .line 1287
    if-ltz p4, :cond_0

    iget v7, p3, Ljava/lang/String;->count:I

    sub-int/2addr v7, p4

    if-gt p5, v7, :cond_0

    .line 1290
    iget v7, p0, Ljava/lang/String;->offset:I

    add-int/2addr p2, v7

    .line 1291
    iget v7, p3, Ljava/lang/String;->offset:I

    add-int/2addr p4, v7

    .line 1292
    add-int v2, p2, p5

    .line 1293
    .local v2, end:I
    iget-object v4, p3, Ljava/lang/String;->value:[C

    .local v4, target:[C
    move v3, p4

    .end local p4
    .local v3, start:I
    move v5, p2

    .line 1294
    .end local p2
    .local v5, thisStart:I
    :goto_1
    if-ge v5, v2, :cond_4

    .line 1295
    iget-object v7, p0, Ljava/lang/String;->value:[C

    add-int/lit8 p2, v5, 0x1

    .end local v5           #thisStart:I
    .restart local p2
    aget-char v0, v7, v5

    .line 1296
    .local v0, c1:C
    add-int/lit8 p4, v3, 0x1

    .end local v3           #start:I
    .restart local p4
    aget-char v1, v4, v3

    .line 1297
    .local v1, c2:C
    if-eq v0, v1, :cond_3

    invoke-direct {p0, v0}, Ljava/lang/String;->foldCase(C)C

    move-result v7

    invoke-direct {p0, v1}, Ljava/lang/String;->foldCase(C)C

    move-result v8

    if-ne v7, v8, :cond_0

    :cond_3
    move v3, p4

    .end local p4
    .restart local v3       #start:I
    move v5, p2

    .line 1300
    .end local p2
    .restart local v5       #thisStart:I
    goto :goto_1

    .line 1301
    .end local v0           #c1:C
    .end local v1           #c2:C
    :cond_4
    const/4 v6, 0x1

    move p4, v3

    .end local v3           #start:I
    .restart local p4
    move p2, v5

    .end local v5           #thisStart:I
    .restart local p2
    goto :goto_0
.end method

.method public replace(CC)Ljava/lang/String;
    .locals 10
    .parameter "oldChar"
    .parameter "newChar"

    .prologue
    const/4 v9, 0x0

    .line 1315
    iget-object v2, p0, Ljava/lang/String;->value:[C

    .line 1316
    .local v2, buffer:[C
    iget v1, p0, Ljava/lang/String;->offset:I

    .line 1317
    .local v1, _offset:I
    iget v0, p0, Ljava/lang/String;->count:I

    .line 1319
    .local v0, _count:I
    move v4, v1

    .line 1320
    .local v4, idx:I
    add-int v5, v1, v0

    .line 1321
    .local v5, last:I
    const/4 v3, 0x0

    .line 1322
    .local v3, copied:Z
    :goto_0
    if-ge v4, v5, :cond_2

    .line 1323
    aget-char v7, v2, v4

    if-ne v7, p1, :cond_1

    .line 1324
    if-nez v3, :cond_0

    .line 1325
    new-array v6, v0, [C

    .line 1326
    .local v6, newBuffer:[C
    invoke-static {v2, v1, v6, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1327
    move-object v2, v6

    .line 1328
    sub-int/2addr v4, v1

    .line 1329
    sub-int/2addr v5, v1

    .line 1330
    const/4 v3, 0x1

    .line 1332
    .end local v6           #newBuffer:[C
    :cond_0
    aput-char p2, v2, v4

    .line 1334
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1337
    :cond_2
    if-eqz v3, :cond_3

    new-instance v7, Ljava/lang/String;

    iget v8, p0, Ljava/lang/String;->count:I

    invoke-direct {v7, v9, v8, v2}, Ljava/lang/String;-><init>(II[C)V

    move-object p0, v7

    .end local p0
    :cond_3
    return-object p0
.end method

.method public replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 12
    .parameter "target"
    .parameter "replacement"

    .prologue
    const/4 v11, -0x1

    .line 1354
    if-nez p1, :cond_0

    .line 1355
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "target == null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1357
    :cond_0
    if-nez p2, :cond_1

    .line 1358
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "replacement == null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1361
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1362
    .local v7, targetString:Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1363
    .local v1, matchStart:I
    if-ne v1, v11, :cond_2

    .line 1395
    .end local p0
    :goto_0
    return-object p0

    .line 1368
    .restart local p0
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1371
    .local v2, replacementString:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    .line 1372
    .local v6, targetLength:I
    if-nez v6, :cond_4

    .line 1373
    iget v8, p0, Ljava/lang/String;->count:I

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    mul-int v4, v8, v9

    .line 1374
    .local v4, resultLength:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1375
    .local v3, result:Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1376
    iget v0, p0, Ljava/lang/String;->offset:I

    .local v0, i:I
    :goto_1
    iget v8, p0, Ljava/lang/String;->count:I

    if-ge v0, v8, :cond_3

    .line 1377
    iget-object v8, p0, Ljava/lang/String;->value:[C

    aget-char v8, v8, v0

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1378
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1376
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1380
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1383
    .end local v0           #i:I
    .end local v3           #result:Ljava/lang/StringBuilder;
    .end local v4           #resultLength:I
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    iget v8, p0, Ljava/lang/String;->count:I

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1384
    .restart local v3       #result:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 1387
    .local v5, searchStart:I
    :cond_5
    iget-object v8, p0, Ljava/lang/String;->value:[C

    iget v9, p0, Ljava/lang/String;->offset:I

    add-int/2addr v9, v5

    sub-int v10, v1, v5

    invoke-virtual {v3, v8, v9, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1389
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1391
    add-int v5, v1, v6

    .line 1392
    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v11, :cond_5

    .line 1394
    iget-object v8, p0, Ljava/lang/String;->value:[C

    iget v9, p0, Ljava/lang/String;->offset:I

    add-int/2addr v9, v5

    iget v10, p0, Ljava/lang/String;->count:I

    sub-int/2addr v10, v5

    invoke-virtual {v3, v8, v9, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1395
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "regularExpression"
    .parameter "replacement"

    .prologue
    .line 1784
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "regularExpression"
    .parameter "replacement"

    .prologue
    .line 1803
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "regularExpression"

    .prologue
    .line 1823
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public split(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2
    .parameter "regularExpression"
    .parameter "limit"

    .prologue
    .line 1841
    invoke-static {p1, p0, p2}, Ljava/util/regex/Splitter;->fastSplit(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1842
    .local v0, result:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #result:[Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #result:[Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 1
    .parameter "prefix"

    .prologue
    .line 1410
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public startsWith(Ljava/lang/String;I)Z
    .locals 2
    .parameter "prefix"
    .parameter "start"

    .prologue
    .line 1427
    const/4 v0, 0x0

    iget v1, p1, Ljava/lang/String;->count:I

    invoke-virtual {p0, p2, p1, v0, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1861
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(I)Ljava/lang/String;
    .locals 4
    .parameter "start"

    .prologue
    .line 1442
    if-nez p1, :cond_0

    .line 1446
    .end local p0
    :goto_0
    return-object p0

    .line 1445
    .restart local p0
    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Ljava/lang/String;->count:I

    if-gt p1, v0, :cond_1

    .line 1446
    new-instance v0, Ljava/lang/String;

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    iget v2, p0, Ljava/lang/String;->count:I

    sub-int/2addr v2, p1

    iget-object v3, p0, Ljava/lang/String;->value:[C

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>(II[C)V

    move-object p0, v0

    goto :goto_0

    .line 1448
    :cond_1
    invoke-direct {p0, p1}, Ljava/lang/String;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1466
    if-nez p1, :cond_0

    iget v0, p0, Ljava/lang/String;->count:I

    if-ne p2, v0, :cond_0

    .line 1472
    .end local p0
    :goto_0
    return-object p0

    .line 1471
    .restart local p0
    :cond_0
    if-ltz p1, :cond_1

    if-gt p1, p2, :cond_1

    iget v0, p0, Ljava/lang/String;->count:I

    if-gt p2, v0, :cond_1

    .line 1472
    new-instance v0, Ljava/lang/String;

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    iget-object v3, p0, Ljava/lang/String;->value:[C

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>(II[C)V

    move-object p0, v0

    goto :goto_0

    .line 1474
    :cond_1
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method

.method public toCharArray()[C
    .locals 5

    .prologue
    .line 1483
    iget v1, p0, Ljava/lang/String;->count:I

    new-array v0, v1, [C

    .line 1484
    .local v0, buffer:[C
    iget-object v1, p0, Ljava/lang/String;->value:[C

    iget v2, p0, Ljava/lang/String;->offset:I

    const/4 v3, 0x0

    iget v4, p0, Ljava/lang/String;->count:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1485
    return-object v0
.end method

.method public toLowerCase()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1495
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/String;->value:[C

    iget v2, p0, Ljava/lang/String;->offset:I

    iget v3, p0, Ljava/lang/String;->count:I

    invoke-static {v0, p0, v1, v2, v3}, Ljava/lang/CaseMapper;->toLowerCase(Ljava/util/Locale;Ljava/lang/String;[CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .parameter "locale"

    .prologue
    .line 1512
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    iget v2, p0, Ljava/lang/String;->count:I

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/CaseMapper;->toLowerCase(Ljava/util/Locale;Ljava/lang/String;[CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .prologue
    .line 1520
    return-object p0
.end method

.method public toUpperCase()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1530
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/String;->value:[C

    iget v2, p0, Ljava/lang/String;->offset:I

    iget v3, p0, Ljava/lang/String;->count:I

    invoke-static {v0, p0, v1, v2, v3}, Ljava/lang/CaseMapper;->toUpperCase(Ljava/util/Locale;Ljava/lang/String;[CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .parameter "locale"

    .prologue
    .line 1547
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    iget v2, p0, Ljava/lang/String;->count:I

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/CaseMapper;->toUpperCase(Ljava/util/Locale;Ljava/lang/String;[CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trim()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x20

    .line 1558
    iget v2, p0, Ljava/lang/String;->offset:I

    .local v2, start:I
    iget v3, p0, Ljava/lang/String;->offset:I

    iget v4, p0, Ljava/lang/String;->count:I

    add-int/2addr v3, v4

    add-int/lit8 v1, v3, -0x1

    .line 1559
    .local v1, last:I
    move v0, v1

    .line 1560
    .local v0, end:I
    :goto_0
    if-gt v2, v0, :cond_0

    iget-object v3, p0, Ljava/lang/String;->value:[C

    aget-char v3, v3, v2

    if-gt v3, v5, :cond_0

    .line 1561
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1563
    :cond_0
    :goto_1
    if-lt v0, v2, :cond_1

    iget-object v3, p0, Ljava/lang/String;->value:[C

    aget-char v3, v3, v0

    if-gt v3, v5, :cond_1

    .line 1564
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1566
    :cond_1
    iget v3, p0, Ljava/lang/String;->offset:I

    if-ne v2, v3, :cond_2

    if-ne v0, v1, :cond_2

    .line 1569
    .end local p0
    :goto_2
    return-object p0

    .restart local p0
    :cond_2
    new-instance v3, Ljava/lang/String;

    sub-int v4, v0, v2

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Ljava/lang/String;->value:[C

    invoke-direct {v3, v2, v4, v5}, Ljava/lang/String;-><init>(II[C)V

    move-object p0, v3

    goto :goto_2
.end method
