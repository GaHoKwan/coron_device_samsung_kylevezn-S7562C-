.class final Landroid/hardware/contextaware/CAGestureApproachContext$1;
.super Ljava/lang/Object;
.source "CAGestureApproachContext.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/CAGestureApproachContext;
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
        "Landroid/hardware/contextaware/CAGestureApproachContext;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/contextaware/CAGestureApproachContext;
    .locals 1
    .parameter "source"

    .prologue
    .line 99
    new-instance v0, Landroid/hardware/contextaware/CAGestureApproachContext;

    invoke-direct {v0, p1}, Landroid/hardware/contextaware/CAGestureApproachContext;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/CAGestureApproachContext$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/contextaware/CAGestureApproachContext;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/contextaware/CAGestureApproachContext;
    .locals 1
    .parameter "size"

    .prologue
    .line 104
    new-array v0, p1, [Landroid/hardware/contextaware/CAGestureApproachContext;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/CAGestureApproachContext$1;->newArray(I)[Landroid/hardware/contextaware/CAGestureApproachContext;

    move-result-object v0

    return-object v0
.end method
