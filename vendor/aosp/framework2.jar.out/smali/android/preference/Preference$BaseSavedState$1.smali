.class final Landroid/preference/Preference$BaseSavedState$1;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/Preference$BaseSavedState;
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
        "Landroid/preference/Preference$BaseSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/preference/Preference$BaseSavedState;
    .locals 1
    .parameter "in"

    .prologue
    .line 1806
    new-instance v0, Landroid/preference/Preference$BaseSavedState;

    invoke-direct {v0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1804
    invoke-virtual {p0, p1}, Landroid/preference/Preference$BaseSavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/preference/Preference$BaseSavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/preference/Preference$BaseSavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 1810
    new-array v0, p1, [Landroid/preference/Preference$BaseSavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1804
    invoke-virtual {p0, p1}, Landroid/preference/Preference$BaseSavedState$1;->newArray(I)[Landroid/preference/Preference$BaseSavedState;

    move-result-object v0

    return-object v0
.end method
