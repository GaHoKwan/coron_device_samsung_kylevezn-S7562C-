.class final Landroid/app/enterprise/geofencing/LatLongPoint$1;
.super Ljava/lang/Object;
.source "LatLongPoint.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/geofencing/LatLongPoint;
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
        "Landroid/app/enterprise/geofencing/LatLongPoint;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/geofencing/LatLongPoint;
    .locals 2
    .parameter "in"

    .prologue
    .line 87
    new-instance v0, Landroid/app/enterprise/geofencing/LatLongPoint;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(Landroid/os/Parcel;Landroid/app/enterprise/geofencing/LatLongPoint$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/app/enterprise/geofencing/LatLongPoint$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/geofencing/LatLongPoint;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/enterprise/geofencing/LatLongPoint;
    .locals 1
    .parameter "size"

    .prologue
    .line 91
    new-array v0, p1, [Landroid/app/enterprise/geofencing/LatLongPoint;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/app/enterprise/geofencing/LatLongPoint$1;->newArray(I)[Landroid/app/enterprise/geofencing/LatLongPoint;

    move-result-object v0

    return-object v0
.end method
