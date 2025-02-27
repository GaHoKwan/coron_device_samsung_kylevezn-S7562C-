.class public Ljava/nio/charset/CoderResult;
.super Ljava/lang/Object;
.source "CoderResult.java"


# static fields
.field public static final OVERFLOW:Ljava/nio/charset/CoderResult; = null

.field private static final TYPE_MALFORMED_INPUT:I = 0x3

.field private static final TYPE_OVERFLOW:I = 0x2

.field private static final TYPE_UNDERFLOW:I = 0x1

.field private static final TYPE_UNMAPPABLE_CHAR:I = 0x4

.field public static final UNDERFLOW:Ljava/nio/charset/CoderResult;

.field private static _malformedErrors:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/nio/charset/CoderResult;",
            ">;"
        }
    .end annotation
.end field

.field private static _unmappableErrors:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/nio/charset/CoderResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final length:I

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    new-instance v0, Ljava/nio/charset/CoderResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/nio/charset/CoderResult;-><init>(II)V

    sput-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 67
    new-instance v0, Ljava/nio/charset/CoderResult;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2}, Ljava/nio/charset/CoderResult;-><init>(II)V

    sput-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    .line 73
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Ljava/nio/charset/CoderResult;->_malformedErrors:Ljava/util/WeakHashMap;

    .line 79
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Ljava/nio/charset/CoderResult;->_unmappableErrors:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0
    .parameter "type"
    .parameter "length"

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput p1, p0, Ljava/nio/charset/CoderResult;->type:I

    .line 97
    iput p2, p0, Ljava/nio/charset/CoderResult;->length:I

    .line 98
    return-void
.end method

.method public static declared-synchronized malformedForLength(I)Ljava/nio/charset/CoderResult;
    .locals 6
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 113
    const-class v3, Ljava/nio/charset/CoderResult;

    monitor-enter v3

    if-lez p0, :cond_1

    .line 114
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 115
    .local v0, key:Ljava/lang/Integer;
    sget-object v4, Ljava/nio/charset/CoderResult;->_malformedErrors:Ljava/util/WeakHashMap;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 116
    :try_start_1
    sget-object v2, Ljava/nio/charset/CoderResult;->_malformedErrors:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/charset/CoderResult;

    .line 117
    .local v1, r:Ljava/nio/charset/CoderResult;
    if-nez v1, :cond_0

    .line 118
    new-instance v1, Ljava/nio/charset/CoderResult;

    .end local v1           #r:Ljava/nio/charset/CoderResult;
    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Ljava/nio/charset/CoderResult;-><init>(II)V

    .line 119
    .restart local v1       #r:Ljava/nio/charset/CoderResult;
    sget-object v2, Ljava/nio/charset/CoderResult;->_malformedErrors:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-object v1

    .line 122
    .end local v1           #r:Ljava/nio/charset/CoderResult;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 113
    .end local v0           #key:Ljava/lang/Integer;
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 124
    :cond_1
    :try_start_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Length must be greater than 0; was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
.end method

.method public static declared-synchronized unmappableForLength(I)Ljava/nio/charset/CoderResult;
    .locals 6
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 141
    const-class v3, Ljava/nio/charset/CoderResult;

    monitor-enter v3

    if-lez p0, :cond_1

    .line 142
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 143
    .local v0, key:Ljava/lang/Integer;
    sget-object v4, Ljava/nio/charset/CoderResult;->_unmappableErrors:Ljava/util/WeakHashMap;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 144
    :try_start_1
    sget-object v2, Ljava/nio/charset/CoderResult;->_unmappableErrors:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/charset/CoderResult;

    .line 145
    .local v1, r:Ljava/nio/charset/CoderResult;
    if-nez v1, :cond_0

    .line 146
    new-instance v1, Ljava/nio/charset/CoderResult;

    .end local v1           #r:Ljava/nio/charset/CoderResult;
    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, Ljava/nio/charset/CoderResult;-><init>(II)V

    .line 147
    .restart local v1       #r:Ljava/nio/charset/CoderResult;
    sget-object v2, Ljava/nio/charset/CoderResult;->_unmappableErrors:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-object v1

    .line 150
    .end local v1           #r:Ljava/nio/charset/CoderResult;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 141
    .end local v0           #key:Ljava/lang/Integer;
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 152
    :cond_1
    :try_start_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Length must be greater than 0; was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
.end method


# virtual methods
.method public isError()Z
    .locals 2

    .prologue
    .line 172
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMalformed()Z
    .locals 2

    .prologue
    .line 182
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflow()Z
    .locals 2

    .prologue
    .line 191
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnderflow()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 161
    iget v1, p0, Ljava/nio/charset/CoderResult;->type:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnmappable()Z
    .locals 2

    .prologue
    .line 200
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 212
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 213
    :cond_0
    iget v0, p0, Ljava/nio/charset/CoderResult;->length:I

    return v0

    .line 215
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length meaningless for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public throwException()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Ljava/nio/BufferOverflowException;,
            Ljava/nio/charset/UnmappableCharacterException;,
            Ljava/nio/charset/MalformedInputException;,
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 235
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    packed-switch v0, :pswitch_data_0

    .line 245
    new-instance v0, Ljava/nio/charset/CharacterCodingException;

    invoke-direct {v0}, Ljava/nio/charset/CharacterCodingException;-><init>()V

    throw v0

    .line 237
    :pswitch_0
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 239
    :pswitch_1
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 241
    :pswitch_2
    new-instance v0, Ljava/nio/charset/UnmappableCharacterException;

    iget v1, p0, Ljava/nio/charset/CoderResult;->length:I

    invoke-direct {v0, v1}, Ljava/nio/charset/UnmappableCharacterException;-><init>(I)V

    throw v0

    .line 243
    :pswitch_3
    new-instance v0, Ljava/nio/charset/MalformedInputException;

    iget v1, p0, Ljava/nio/charset/CoderResult;->length:I

    invoke-direct {v0, v1}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    throw v0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, dsc:Ljava/lang/String;
    iget v1, p0, Ljava/nio/charset/CoderResult;->type:I

    packed-switch v1, :pswitch_data_0

    .line 273
    const-string v0, ""

    .line 276
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 259
    :pswitch_0
    const-string v0, "UNDERFLOW error"

    .line 260
    goto :goto_0

    .line 262
    :pswitch_1
    const-string v0, "OVERFLOW error"

    .line 263
    goto :goto_0

    .line 265
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmappable-character error with erroneous input length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/nio/charset/CoderResult;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    goto :goto_0

    .line 269
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed-input error with erroneous input length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/nio/charset/CoderResult;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    goto :goto_0

    .line 257
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
