.class public Lorg/kxml2/io/KXmlSerializer;
.super Ljava/lang/Object;
.source "KXmlSerializer.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# static fields
.field private static final WRITE_BUFFER_SIZE:I = 0x1f4


# instance fields
.field private auto:I

.field private depth:I

.field private elementStack:[Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private indent:[Z

.field private nspCounts:[I

.field private nspStack:[Ljava/lang/String;

.field private pending:Z

.field private unicode:Z

.field private writer:Ljava/io/BufferedWriter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    .line 48
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    .line 49
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    .line 51
    new-array v0, v1, [Z

    iput-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    return-void
.end method

.method private final check(Z)V
    .locals 8
    .parameter "close"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x22

    const/4 v6, 0x0

    .line 56
    iget-boolean v2, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    if-nez v2, :cond_0

    .line 93
    :goto_0
    return-void

    .line 59
    :cond_0
    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    .line 60
    iput-boolean v6, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    .line 62
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    array-length v2, v2

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    if-gt v2, v3, :cond_1

    .line 63
    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v2, v2, 0x4

    new-array v0, v2, [Z

    .line 64
    .local v0, hlp:[Z
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    invoke-static {v2, v6, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iput-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    .line 67
    .end local v0           #hlp:[Z
    :cond_1
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    iget v5, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v5, v5, -0x1

    aget-boolean v4, v4, v5

    aput-boolean v4, v2, v3

    .line 69
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v3, v3, -0x1

    aget v1, v2, v3

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    aget v2, v2, v3

    if-ge v1, v2, :cond_4

    .line 70
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 71
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v3, "xmlns"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 72
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v3, v1, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 73
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 74
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v4, v1, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 78
    :cond_2
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v3, "=\""

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-direct {p0, v2, v7}, Lorg/kxml2/io/KXmlSerializer;->writeEscaped(Ljava/lang/String;I)V

    .line 80
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v7}, Ljava/io/BufferedWriter;->write(I)V

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 76
    :cond_3
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlSerializer;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 77
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot set default namespace for elements in no namespace"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_4
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    array-length v2, v2

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v3, v3, 0x1

    if-gt v2, v3, :cond_5

    .line 84
    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v2, v2, 0x8

    new-array v0, v2, [I

    .line 85
    .local v0, hlp:[I
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v6, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    iput-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    .line 89
    .end local v0           #hlp:[I
    :cond_5
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v5, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    aget v4, v4, v5

    aput v4, v2, v3

    .line 92
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    if-eqz p1, :cond_6

    const-string v2, " />"

    :goto_2
    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v2, ">"

    goto :goto_2
.end method

.method private final getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 8
    .parameter "namespace"
    .parameter "includeDefault"
    .parameter "create"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v1, v5, -0x2

    .line 201
    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_4

    .line 203
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    add-int/lit8 v6, v1, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez p2, :cond_0

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 205
    :cond_0
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    aget-object v0, v5, v1

    .line 206
    .local v0, cand:Ljava/lang/String;
    add-int/lit8 v2, v1, 0x2

    .line 207
    .local v2, j:I
    :goto_1
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    mul-int/lit8 v5, v5, 0x2

    if-ge v2, v5, :cond_1

    .line 209
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 210
    const/4 v0, 0x0

    .line 214
    :cond_1
    if-eqz v0, :cond_3

    .line 245
    .end local v0           #cand:Ljava/lang/String;
    .end local v2           #j:I
    :goto_2
    return-object v0

    .line 208
    .restart local v0       #cand:Ljava/lang/String;
    .restart local v2       #j:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 202
    .end local v0           #cand:Ljava/lang/String;
    .end local v2           #j:I
    :cond_3
    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    .line 219
    :cond_4
    if-nez p3, :cond_5

    .line 220
    const/4 v0, 0x0

    goto :goto_2

    .line 224
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 225
    const-string v4, ""

    .line 241
    .local v4, prefix:Ljava/lang/String;
    :goto_3
    iget-boolean v3, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    .line 242
    .local v3, p:Z
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    .line 243
    invoke-virtual {p0, v4, p1}, Lorg/kxml2/io/KXmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iput-boolean v3, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    move-object v0, v4

    .line 245
    goto :goto_2

    .line 228
    .end local v3           #p:Z
    .end local v4           #prefix:Ljava/lang/String;
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->auto:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/kxml2/io/KXmlSerializer;->auto:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 229
    .restart local v4       #prefix:Ljava/lang/String;
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v1, v5, -0x2

    .line 230
    :goto_4
    if-ltz v1, :cond_7

    .line 232
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 233
    const/4 v4, 0x0

    .line 238
    :cond_7
    if-eqz v4, :cond_6

    goto :goto_3

    .line 231
    :cond_8
    add-int/lit8 v1, v1, -0x2

    goto :goto_4
.end method

.method private static reportInvalidCharacter(C)V
    .locals 3
    .parameter "ch"

    .prologue
    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final writeEscaped(Ljava/lang/String;I)V
    .locals 6
    .parameter "s"
    .parameter "quot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 97
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 98
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 117
    if-ne v0, p2, :cond_2

    .line 118
    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const/16 v3, 0x22

    if-ne v0, v3, :cond_1

    const-string v3, "&quot;"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 96
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :sswitch_0
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 103
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(I)V

    goto :goto_2

    .line 105
    :cond_0
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 108
    :sswitch_1
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v4, "&amp;"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 111
    :sswitch_2
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v4, "&gt;"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 114
    :sswitch_3
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v4, "&lt;"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 118
    :cond_1
    const-string v3, "&apos;"

    goto :goto_1

    .line 128
    :cond_2
    const/16 v3, 0x20

    if-lt v0, v3, :cond_3

    const v3, 0xd7ff

    if-le v0, v3, :cond_4

    :cond_3
    const v3, 0xe000

    if-lt v0, v3, :cond_7

    const v3, 0xfffd

    if-gt v0, v3, :cond_7

    :cond_4
    const/4 v2, 0x1

    .line 129
    .local v2, valid:Z
    :goto_3
    if-nez v2, :cond_5

    .line 130
    invoke-static {v0}, Lorg/kxml2/io/KXmlSerializer;->reportInvalidCharacter(C)V

    .line 132
    :cond_5
    iget-boolean v3, p0, Lorg/kxml2/io/KXmlSerializer;->unicode:Z

    if-nez v3, :cond_6

    const/16 v3, 0x7f

    if-ge v0, v3, :cond_8

    .line 133
    :cond_6
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(I)V

    goto :goto_2

    .line 128
    .end local v2           #valid:Z
    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 135
    .restart local v2       #valid:Z
    :cond_8
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 140
    .end local v0           #c:C
    .end local v2           #valid:Z
    :cond_9
    return-void

    .line 98
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x26 -> :sswitch_1
        0x3c -> :sswitch_3
        0x3e -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 4
    .parameter "namespace"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x22

    .line 424
    iget-boolean v2, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    if-nez v2, :cond_0

    .line 425
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "illegal position for attribute"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 429
    :cond_0
    if-nez p1, :cond_1

    .line 430
    const-string p1, ""

    .line 435
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, ""

    .line 456
    .local v0, prefix:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 457
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 458
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 459
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 461
    :cond_2
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 462
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 463
    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 464
    .local v1, q:C
    :goto_1
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(I)V

    .line 465
    invoke-direct {p0, p3, v1}, Lorg/kxml2/io/KXmlSerializer;->writeEscaped(Ljava/lang/String;I)V

    .line 466
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(I)V

    .line 468
    return-object p0

    .line 435
    .end local v0           #prefix:Ljava/lang/String;
    .end local v1           #q:C
    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lorg/kxml2/io/KXmlSerializer;->getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 463
    .restart local v0       #prefix:Ljava/lang/String;
    :cond_4
    const/16 v1, 0x27

    goto :goto_1
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 9
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 547
    invoke-direct {p0, v6}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    .line 550
    const-string v7, "]]>"

    const-string v8, "]]]]><![CDATA[>"

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 551
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 553
    .local v2, chars:[C
    move-object v0, v2

    .local v0, arr$:[C
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_4

    aget-char v1, v0, v3

    .line 554
    .local v1, ch:C
    const/16 v7, 0x20

    if-lt v1, v7, :cond_0

    const v7, 0xd7ff

    if-le v1, v7, :cond_1

    :cond_0
    const/16 v7, 0x9

    if-eq v1, v7, :cond_1

    const/16 v7, 0xa

    if-eq v1, v7, :cond_1

    const/16 v7, 0xd

    if-eq v1, v7, :cond_1

    const v7, 0xe000

    if-lt v1, v7, :cond_3

    const v7, 0xfffd

    if-gt v1, v7, :cond_3

    :cond_1
    const/4 v5, 0x1

    .line 557
    .local v5, valid:Z
    :goto_1
    if-nez v5, :cond_2

    .line 558
    invoke-static {v1}, Lorg/kxml2/io/KXmlSerializer;->reportInvalidCharacter(C)V

    .line 553
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v5           #valid:Z
    :cond_3
    move v5, v6

    .line 554
    goto :goto_1

    .line 561
    .end local v1           #ch:C
    :cond_4
    iget-object v7, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v8, "<![CDATA["

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 562
    iget-object v7, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    array-length v8, v2

    invoke-virtual {v7, v2, v6, v8}, Ljava/io/BufferedWriter;->write([CII)V

    .line 563
    iget-object v6, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v7, "]]>"

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 565
    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .locals 2
    .parameter "comment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 568
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    .line 569
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v1, "<!--"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 572
    return-void
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 2
    .parameter "dd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v1, "<!DOCTYPE"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public endDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    :goto_0
    iget v0, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    if-lez v0, :cond_0

    .line 163
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/kxml2/io/KXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlSerializer;->flush()V

    .line 166
    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 6
    .parameter "namespace"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    iget-boolean v2, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    if-nez v2, :cond_0

    .line 485
    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    .line 489
    :cond_0
    if-nez p1, :cond_1

    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v3, v3, 0x3

    aget-object v2, v2, v3

    if-nez v2, :cond_3

    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v3, v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 494
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "</{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> does not match start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 496
    :cond_4
    iget-boolean v2, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    if-eqz v2, :cond_5

    .line 497
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    .line 498
    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    .line 517
    :goto_0
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v5, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    aget v4, v4, v5

    aput v4, v2, v3

    .line 518
    return-object p0

    .line 501
    :cond_5
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v3, v3, 0x1

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_6

    .line 502
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 503
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    if-ge v0, v2, :cond_6

    .line 504
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 503
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 507
    .end local v0           #i:I
    :cond_6
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v3, "</"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 508
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x1

    aget-object v1, v2, v3

    .line 509
    .local v1, prefix:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 510
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 511
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 513
    :cond_7
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 514
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(I)V

    goto :goto_0
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    .line 170
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(I)V

    .line 171
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(I)V

    .line 173
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    .line 473
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 474
    return-void
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 530
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    goto :goto_0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 177
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    aget-boolean v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 526
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlSerializer;->getDepth()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlSerializer;->getDepth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 2

    .prologue
    .line 522
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlSerializer;->getDepth()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlSerializer;->getDepth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x3

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "namespace"
    .parameter "create"

    .prologue
    .line 187
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1, p2}, Lorg/kxml2/io/KXmlSerializer;->getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "name"

    .prologue
    .line 249
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported property"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 0
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-virtual {p0, p1}, Lorg/kxml2/io/KXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 255
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 2
    .parameter "pi"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 576
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    .line 577
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v1, "<?"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v1, "?>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 580
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 258
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    aput-boolean p2, v0, v1

    .line 264
    return-void

    .line 263
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported Feature"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .parameter "os"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    if-nez p1, :cond_0

    .line 330
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 331
    :cond_0
    if-nez p2, :cond_2

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    :goto_0
    invoke-virtual {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 335
    iput-object p2, p0, Lorg/kxml2/io/KXmlSerializer;->encoding:Ljava/lang/String;

    .line 336
    if-eqz p2, :cond_1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/kxml2/io/KXmlSerializer;->unicode:Z

    .line 339
    :cond_1
    return-void

    .line 331
    :cond_2
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 5
    .parameter "writer"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 302
    instance-of v0, p1, Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    .line 303
    check-cast p1, Ljava/io/BufferedWriter;

    .end local p1
    iput-object p1, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    .line 314
    :goto_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    aput v2, v0, v3

    .line 315
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    aput v2, v0, v4

    .line 316
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    .line 317
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    .line 318
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    const-string v1, "xml"

    aput-object v1, v0, v2

    .line 319
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    aput-object v2, v0, v1

    .line 320
    iput-boolean v3, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    .line 321
    iput v3, p0, Lorg/kxml2/io/KXmlSerializer;->auto:I

    .line 322
    iput v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    .line 324
    iput-boolean v3, p0, Lorg/kxml2/io/KXmlSerializer;->unicode:Z

    .line 325
    return-void

    .line 305
    .restart local p1
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    const/16 v1, 0x1f4

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    goto :goto_0
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "prefix"
    .parameter "namespace"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 274
    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    .line 275
    if-nez p1, :cond_0

    .line 276
    const-string p1, ""

    .line 277
    :cond_0
    if-nez p2, :cond_1

    .line 278
    const-string p2, ""

    .line 280
    :cond_1
    const/4 v4, 0x1

    invoke-direct {p0, p2, v4, v8}, Lorg/kxml2/io/KXmlSerializer;->getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, defined:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 297
    :goto_0
    return-void

    .line 287
    :cond_2
    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v5, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v5, v5, 0x1

    aget v6, v4, v5

    add-int/lit8 v7, v6, 0x1

    aput v7, v4, v5

    shl-int/lit8 v2, v6, 0x1

    .line 289
    .local v2, pos:I
    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v5, v2, 0x1

    if-ge v4, v5, :cond_3

    .line 290
    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x10

    new-array v1, v4, [Ljava/lang/String;

    .line 291
    .local v1, hlp:[Ljava/lang/String;
    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    invoke-static {v4, v8, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    iput-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    .line 295
    .end local v1           #hlp:[Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    .end local v2           #pos:I
    .local v3, pos:I
    aput-object p1, v4, v2

    .line 296
    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    aput-object p2, v4, v3

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 267
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Property:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .parameter "encoding"
    .parameter "standalone"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v1, "<?xml version=\'1.0\' "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 344
    if-eqz p1, :cond_0

    .line 345
    iput-object p1, p0, Lorg/kxml2/io/KXmlSerializer;->encoding:Ljava/lang/String;

    .line 346
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/kxml2/io/KXmlSerializer;->unicode:Z

    .line 351
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->encoding:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v1, "encoding=\'"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    iget-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 357
    :cond_1
    if-eqz p2, :cond_2

    .line 358
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v1, "standalone=\'"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "yes"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 363
    :cond_2
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v1, "?>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 364
    return-void

    .line 359
    :cond_3
    const-string v0, "no"

    goto :goto_0
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 9
    .parameter "namespace"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 368
    invoke-direct {p0, v7}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    .line 373
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_0

    .line 374
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 375
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v5, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    if-ge v3, v5, :cond_0

    .line 376
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 375
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 379
    .end local v3           #i:I
    :cond_0
    iget v5, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v0, v5, 0x3

    .line 381
    .local v0, esp:I
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v6, v0, 0x3

    if-ge v5, v6, :cond_1

    .line 382
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, 0xc

    new-array v2, v5, [Ljava/lang/String;

    .line 383
    .local v2, hlp:[Ljava/lang/String;
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    invoke-static {v5, v7, v2, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    iput-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    .line 387
    .end local v2           #hlp:[Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_2

    const-string v4, ""

    .line 392
    .local v4, prefix:Ljava/lang/String;
    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 393
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    aget v3, v5, v6

    .line 394
    .restart local v3       #i:I
    :goto_2
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    if-ge v3, v5, :cond_4

    .line 396
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v6, v3, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v6, v3, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 397
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Cannot set default namespace for elements in no namespace"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 387
    .end local v3           #i:I
    .end local v4           #prefix:Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1, v8, v8}, Lorg/kxml2/io/KXmlSerializer;->getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 395
    .restart local v3       #i:I
    .restart local v4       #prefix:Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 402
    .end local v3           #i:I
    :cond_4
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #esp:I
    .local v1, esp:I
    aput-object p1, v5, v0

    .line 403
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #esp:I
    .restart local v0       #esp:I
    aput-object v4, v5, v1

    .line 404
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    aput-object p2, v5, v0

    .line 406
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const/16 v6, 0x3c

    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(I)V

    .line 407
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 408
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v5, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 409
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(I)V

    .line 412
    :cond_5
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v5, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 414
    iput-boolean v8, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    .line 416
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 3
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 534
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    .line 535
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    aput-boolean v2, v0, v1

    .line 536
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/kxml2/io/KXmlSerializer;->writeEscaped(Ljava/lang/String;I)V

    .line 537
    return-object p0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .parameter "text"
    .parameter "start"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 542
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 543
    return-object p0
.end method
