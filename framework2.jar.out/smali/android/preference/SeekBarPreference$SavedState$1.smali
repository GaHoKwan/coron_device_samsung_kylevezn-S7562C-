.class final Landroid/preference/SeekBarPreference$SavedState$1;
.super Ljava/lang/Object;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SeekBarPreference$SavedState;
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
        "Landroid/preference/SeekBarPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/preference/SeekBarPreference$SavedState;
    .locals 1
    .parameter "in"

    .prologue
    .line 269
    new-instance v0, Landroid/preference/SeekBarPreference$SavedState;

    invoke-direct {v0, p1}, Landroid/preference/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Landroid/preference/SeekBarPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/preference/SeekBarPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/preference/SeekBarPreference$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 273
    new-array v0, p1, [Landroid/preference/SeekBarPreference$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Landroid/preference/SeekBarPreference$SavedState$1;->newArray(I)[Landroid/preference/SeekBarPreference$SavedState;

    move-result-object v0

    return-object v0
.end method
