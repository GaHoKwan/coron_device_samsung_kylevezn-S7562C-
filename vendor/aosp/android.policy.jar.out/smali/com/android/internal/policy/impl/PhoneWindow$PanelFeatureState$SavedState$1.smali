.class final Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState$1;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;
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
        "Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 4055
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;
    .locals 1
    .parameter "in"

    .prologue
    .line 4057
    #calls: Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->readFromParcel(Landroid/os/Parcel;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;
    invoke-static {p1}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->access$4100(Landroid/os/Parcel;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4055
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 4061
    new-array v0, p1, [Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4055
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState$1;->newArray(I)[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;

    move-result-object v0

    return-object v0
.end method
