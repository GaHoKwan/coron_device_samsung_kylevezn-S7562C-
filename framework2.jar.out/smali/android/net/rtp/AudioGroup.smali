.class public Landroid/net/rtp/AudioGroup;
.super Ljava/lang/Object;
.source "AudioGroup.java"


# static fields
.field public static final MODE_ECHO_SUPPRESSION:I = 0x3

.field private static final MODE_LAST:I = 0x3

.field public static final MODE_MUTED:I = 0x1

.field public static final MODE_NORMAL:I = 0x2

.field public static final MODE_ON_HOLD:I


# instance fields
.field private mMode:I

.field private mNative:I

.field private final mStreams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/rtp/AudioStream;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const-string v0, "rtp_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/rtp/AudioGroup;->mMode:I

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/rtp/AudioGroup;->mStreams:Ljava/util/Map;

    .line 106
    return-void
.end method

.method private native nativeAdd(IILjava/lang/String;ILjava/lang/String;I)I
.end method

.method private native nativeRemove(I)V
.end method

.method private native nativeSendDtmf(I)V
.end method

.method private native nativeSetMode(I)V
.end method


# virtual methods
.method declared-synchronized add(Landroid/net/rtp/AudioStream;)V
    .locals 10
    .parameter "stream"

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/rtp/AudioGroup;->mStreams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 148
    :try_start_1
    invoke-virtual {p1}, Landroid/net/rtp/AudioStream;->getCodec()Landroid/net/rtp/AudioCodec;

    move-result-object v7

    .line 149
    .local v7, codec:Landroid/net/rtp/AudioCodec;
    const-string v0, "%d %s %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, v7, Landroid/net/rtp/AudioCodec;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, v7, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, v7, Landroid/net/rtp/AudioCodec;->fmtp:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, codecSpec:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/rtp/RtpStream;->getMode()I

    move-result v1

    invoke-virtual {p1}, Landroid/net/rtp/RtpStream;->getSocket()I

    move-result v2

    invoke-virtual {p1}, Landroid/net/rtp/RtpStream;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/rtp/RtpStream;->getRemotePort()I

    move-result v4

    invoke-virtual {p1}, Landroid/net/rtp/AudioStream;->getDtmfType()I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/net/rtp/AudioGroup;->nativeAdd(IILjava/lang/String;ILjava/lang/String;I)I

    move-result v9

    .line 154
    .local v9, id:I
    iget-object v0, p0, Landroid/net/rtp/AudioGroup;->mStreams:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 159
    .end local v5           #codecSpec:Ljava/lang/String;
    .end local v7           #codec:Landroid/net/rtp/AudioCodec;
    .end local v9           #id:I
    :cond_0
    monitor-exit p0

    return-void

    .line 155
    :catch_0
    move-exception v8

    .line 156
    .local v8, e:Ljava/lang/NullPointerException;
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    .end local v8           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clear()V
    .locals 5

    .prologue
    .line 195
    invoke-virtual {p0}, Landroid/net/rtp/AudioGroup;->getStreams()[Landroid/net/rtp/AudioStream;

    move-result-object v0

    .local v0, arr$:[Landroid/net/rtp/AudioStream;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 196
    .local v3, stream:Landroid/net/rtp/AudioStream;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/rtp/AudioStream;->join(Landroid/net/rtp/AudioGroup;)V

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    .end local v3           #stream:Landroid/net/rtp/AudioStream;
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/rtp/AudioGroup;->nativeRemove(I)V

    .line 203
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 204
    return-void
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Landroid/net/rtp/AudioGroup;->mMode:I

    return v0
.end method

.method public getStreams()[Landroid/net/rtp/AudioStream;
    .locals 2

    .prologue
    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Landroid/net/rtp/AudioGroup;->mStreams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Landroid/net/rtp/AudioGroup;->mStreams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/rtp/AudioStream;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/rtp/AudioStream;

    monitor-exit p0

    return-object v0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized remove(Landroid/net/rtp/AudioStream;)V
    .locals 2
    .parameter "stream"

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/net/rtp/AudioGroup;->mStreams:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 167
    .local v0, id:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/net/rtp/AudioGroup;->nativeRemove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_0
    monitor-exit p0

    return-void

    .line 166
    .end local v0           #id:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public sendDtmf(I)V
    .locals 2
    .parameter "event"

    .prologue
    .line 181
    if-ltz p1, :cond_0

    const/16 v0, 0xf

    if-le p1, v0, :cond_1

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid event"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_1
    monitor-enter p0

    .line 185
    :try_start_0
    invoke-direct {p0, p1}, Landroid/net/rtp/AudioGroup;->nativeSendDtmf(I)V

    .line 186
    monitor-exit p0

    .line 187
    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 133
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1
    monitor-enter p0

    .line 137
    :try_start_0
    invoke-direct {p0, p1}, Landroid/net/rtp/AudioGroup;->nativeSetMode(I)V

    .line 138
    iput p1, p0, Landroid/net/rtp/AudioGroup;->mMode:I

    .line 139
    monitor-exit p0

    .line 140
    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
