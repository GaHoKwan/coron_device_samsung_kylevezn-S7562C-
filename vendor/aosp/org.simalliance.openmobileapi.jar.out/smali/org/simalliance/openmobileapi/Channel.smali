.class public Lorg/simalliance/openmobileapi/Channel;
.super Ljava/lang/Object;
.source "Channel.java"


# instance fields
.field private mHChannel:J

.field private mIsClosed:Z

.field private mIsLogicalChannel:Z

.field private mSession:Lorg/simalliance/openmobileapi/Session;


# direct methods
.method constructor <init>(Lorg/simalliance/openmobileapi/Session;JZ)V
    .locals 1
    .parameter "session"
    .parameter "hChannel"
    .parameter "isLogicalChannel"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/simalliance/openmobileapi/Channel;->mSession:Lorg/simalliance/openmobileapi/Session;

    .line 45
    iput-wide p2, p0, Lorg/simalliance/openmobileapi/Channel;->mHChannel:J

    .line 46
    iput-boolean p4, p0, Lorg/simalliance/openmobileapi/Channel;->mIsLogicalChannel:Z

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/simalliance/openmobileapi/Channel;->mIsClosed:Z

    .line 48
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/Channel;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mSession:Lorg/simalliance/openmobileapi/Session;

    invoke-virtual {v0, p0}, Lorg/simalliance/openmobileapi/Session;->closeChannel(Lorg/simalliance/openmobileapi/Channel;)V

    goto :goto_0
.end method

.method getHandle()J
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lorg/simalliance/openmobileapi/Channel;->mHChannel:J

    return-wide v0
.end method

.method public getSelectResponse()[B
    .locals 2

    .prologue
    .line 140
    iget-object v1, p0, Lorg/simalliance/openmobileapi/Channel;->mSession:Lorg/simalliance/openmobileapi/Session;

    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/Session;->getReader()Lorg/simalliance/openmobileapi/Reader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/Reader;->getSEService()Lorg/simalliance/openmobileapi/SEService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/simalliance/openmobileapi/SEService;->getSelectResponse(Lorg/simalliance/openmobileapi/Channel;)[B

    move-result-object v0

    .line 141
    .local v0, response:[B
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 143
    :cond_0
    return-object v0
.end method

.method public getSession()Lorg/simalliance/openmobileapi/Session;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mSession:Lorg/simalliance/openmobileapi/Session;

    return-object v0
.end method

.method public isBasicChannel()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/simalliance/openmobileapi/Channel;->mIsLogicalChannel:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lorg/simalliance/openmobileapi/Channel;->mIsClosed:Z

    return v0
.end method

.method setClosed()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/simalliance/openmobileapi/Channel;->mIsClosed:Z

    .line 156
    return-void
.end method

.method public transmit([B)[B
    .locals 2
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/Channel;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "channel is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mSession:Lorg/simalliance/openmobileapi/Session;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Session;->getReader()Lorg/simalliance/openmobileapi/Reader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Reader;->getSEService()Lorg/simalliance/openmobileapi/SEService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/simalliance/openmobileapi/SEService;->transmit(Lorg/simalliance/openmobileapi/Channel;[B)[B

    move-result-object v0

    return-object v0
.end method
