.class public Landroid/app/enterprise/ApnSettings;
.super Ljava/lang/Object;
.source "ApnSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/enterprise/ApnSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public apn:Ljava/lang/String;

.field public authType:I

.field public id:J

.field public mcc:Ljava/lang/String;

.field public mmsPort:Ljava/lang/String;

.field public mmsProxy:Ljava/lang/String;

.field public mmsc:Ljava/lang/String;

.field public mnc:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public port:I

.field public proxy:Ljava/lang/String;

.field public server:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Landroid/app/enterprise/ApnSettings$1;

    invoke-direct {v0}, Landroid/app/enterprise/ApnSettings$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/ApnSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/enterprise/ApnSettings;->id:J

    .line 13
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->name:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->apn:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mcc:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mnc:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->user:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->server:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->password:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->proxy:Ljava/lang/String;

    .line 29
    iput v2, p0, Landroid/app/enterprise/ApnSettings;->port:I

    .line 31
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsProxy:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsPort:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsc:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->type:Ljava/lang/String;

    .line 39
    iput v2, p0, Landroid/app/enterprise/ApnSettings;->authType:I

    .line 97
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, -0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/enterprise/ApnSettings;->id:J

    .line 13
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->name:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->apn:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mcc:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mnc:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->user:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->server:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->password:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->proxy:Ljava/lang/String;

    .line 29
    iput v2, p0, Landroid/app/enterprise/ApnSettings;->port:I

    .line 31
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsProxy:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsPort:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsc:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->type:Ljava/lang/String;

    .line 39
    iput v2, p0, Landroid/app/enterprise/ApnSettings;->authType:I

    .line 57
    invoke-virtual {p0, p1}, Landroid/app/enterprise/ApnSettings;->readFromParcel(Landroid/os/Parcel;)V

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/enterprise/ApnSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Landroid/app/enterprise/ApnSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public getApn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->apn:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthType()I
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Landroid/app/enterprise/ApnSettings;->authType:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Landroid/app/enterprise/ApnSettings;->id:J

    return-wide v0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->mcc:Ljava/lang/String;

    return-object v0
.end method

.method public getMmsPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsPort:Ljava/lang/String;

    return-object v0
.end method

.method public getMmsProxy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsProxy:Ljava/lang/String;

    return-object v0
.end method

.method public getMmsc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsc:Ljava/lang/String;

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->mnc:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Landroid/app/enterprise/ApnSettings;->port:I

    return v0
.end method

.method public getProxy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->proxy:Ljava/lang/String;

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->server:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->user:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/enterprise/ApnSettings;->id:J

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->name:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->apn:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mcc:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mnc:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->user:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->server:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->password:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->proxy:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/ApnSettings;->port:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsProxy:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsPort:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsc:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->type:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/ApnSettings;->authType:I

    .line 94
    return-void
.end method

.method public setApn(Ljava/lang/String;)V
    .locals 0
    .parameter "apn"

    .prologue
    .line 149
    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->apn:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setAuthType(I)V
    .locals 0
    .parameter "authType"

    .prologue
    .line 404
    iput p1, p0, Landroid/app/enterprise/ApnSettings;->authType:I

    .line 405
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 107
    iput-wide p1, p0, Landroid/app/enterprise/ApnSettings;->id:J

    .line 108
    return-void
.end method

.method public setMcc(Ljava/lang/String;)V
    .locals 0
    .parameter "mcc"

    .prologue
    .line 171
    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->mcc:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setMmsPort(Ljava/lang/String;)V
    .locals 0
    .parameter "mmsPort"

    .prologue
    .line 340
    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->mmsPort:Ljava/lang/String;

    .line 341
    return-void
.end method

.method public setMmsProxy(Ljava/lang/String;)V
    .locals 0
    .parameter "mmsProxy"

    .prologue
    .line 319
    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->mmsProxy:Ljava/lang/String;

    .line 320
    return-void
.end method

.method public setMmsc(Ljava/lang/String;)V
    .locals 0
    .parameter "mmsc"

    .prologue
    .line 360
    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->mmsc:Ljava/lang/String;

    .line 362
    return-void
.end method

.method public setMnc(Ljava/lang/String;)V
    .locals 0
    .parameter "mnc"

    .prologue
    .line 192
    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->mnc:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 128
    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->name:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 255
    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->password:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .parameter "port"

    .prologue
    .line 297
    iput p1, p0, Landroid/app/enterprise/ApnSettings;->port:I

    .line 298
    return-void
.end method

.method public setProxy(Ljava/lang/String;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 276
    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->proxy:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 0
    .parameter "server"

    .prologue
    .line 234
    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->server:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 383
    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->type:Ljava/lang/String;

    .line 384
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 213
    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->user:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flag"

    .prologue
    .line 61
    iget-wide v0, p0, Landroid/app/enterprise/ApnSettings;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 62
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->apn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->mcc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->mnc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->user:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->server:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->proxy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget v0, p0, Landroid/app/enterprise/ApnSettings;->port:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsProxy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsPort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget v0, p0, Landroid/app/enterprise/ApnSettings;->authType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    return-void
.end method
