.class final Landroid/view/inputmethod/InputMethodSubtype$1;
.super Ljava/lang/Object;
.source "InputMethodSubtype.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodSubtype;
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
        "Landroid/view/inputmethod/InputMethodSubtype;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 1
    .parameter "source"

    .prologue
    .line 332
    new-instance v0, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-direct {v0, p1}, Landroid/view/inputmethod/InputMethodSubtype;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodSubtype$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/view/inputmethod/InputMethodSubtype;
    .locals 1
    .parameter "size"

    .prologue
    .line 337
    new-array v0, p1, [Landroid/view/inputmethod/InputMethodSubtype;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodSubtype$1;->newArray(I)[Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    return-object v0
.end method
