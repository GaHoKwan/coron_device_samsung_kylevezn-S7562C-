.class Lcom/sec/android/allshare/NetworkSocketInfo;
.super Ljava/lang/Object;
.source "IAppControlAPI.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/allshare/NetworkSocketInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mDeviceClass:Ljava/lang/String;

.field public mIpAddress:Ljava/lang/String;

.field public mMacAddr:Ljava/lang/String;

.field public mPort:I

.field public mProtocol:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1498
    new-instance v0, Lcom/sec/android/allshare/NetworkSocketInfo$1;

    invoke-direct {v0}, Lcom/sec/android/allshare/NetworkSocketInfo$1;-><init>()V

    sput-object v0, Lcom/sec/android/allshare/NetworkSocketInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1486
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1491
    iget v0, p0, Lcom/sec/android/allshare/NetworkSocketInfo;->mProtocol:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1492
    iget-object v0, p0, Lcom/sec/android/allshare/NetworkSocketInfo;->mIpAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1493
    iget v0, p0, Lcom/sec/android/allshare/NetworkSocketInfo;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1494
    iget-object v0, p0, Lcom/sec/android/allshare/NetworkSocketInfo;->mDeviceClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1495
    iget-object v0, p0, Lcom/sec/android/allshare/NetworkSocketInfo;->mMacAddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1496
    return-void
.end method
