.class final Landroid/app/enterprise/EnterpriseDeviceAdminInfo$1;
.super Ljava/lang/Object;
.source "EnterpriseDeviceAdminInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/app/enterprise/EnterpriseDeviceAdminInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .locals 1
    .parameter "source"

    .prologue
    .line 1011
    new-instance v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-direct {v0, p1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1009
    invoke-virtual {p0, p1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 1015
    new-array v0, p1, [Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1009
    invoke-virtual {p0, p1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$1;->newArray(I)[Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    return-object v0
.end method
