.class final Landroid/view/WindowManager$LayoutParams$1;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManager$LayoutParams;
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
        "Landroid/view/WindowManager$LayoutParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .parameter "in"

    .prologue
    .line 1362
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, p1}, Landroid/view/WindowManager$LayoutParams;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1360
    invoke-virtual {p0, p1}, Landroid/view/WindowManager$LayoutParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .parameter "size"

    .prologue
    .line 1366
    new-array v0, p1, [Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1360
    invoke-virtual {p0, p1}, Landroid/view/WindowManager$LayoutParams$1;->newArray(I)[Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method
