.class final Landroid/app/enterprise/WifiAdminProfile$1;
.super Ljava/lang/Object;
.source "WifiAdminProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/WifiAdminProfile;
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
        "Landroid/app/enterprise/WifiAdminProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/WifiAdminProfile;
    .locals 2
    .parameter "in"

    .prologue
    .line 205
    new-instance v0, Landroid/app/enterprise/WifiAdminProfile;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/enterprise/WifiAdminProfile;-><init>(Landroid/os/Parcel;Landroid/app/enterprise/WifiAdminProfile$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Landroid/app/enterprise/WifiAdminProfile$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/WifiAdminProfile;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/enterprise/WifiAdminProfile;
    .locals 1
    .parameter "size"

    .prologue
    .line 209
    new-array v0, p1, [Landroid/app/enterprise/WifiAdminProfile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Landroid/app/enterprise/WifiAdminProfile$1;->newArray(I)[Landroid/app/enterprise/WifiAdminProfile;

    move-result-object v0

    return-object v0
.end method
