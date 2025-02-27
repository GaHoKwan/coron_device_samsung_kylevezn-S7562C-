.class Landroid/widget/DatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/DatePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDay:I

.field private final mMonth:I

.field private final mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 967
    new-instance v0, Landroid/widget/DatePicker$SavedState$1;

    invoke-direct {v0}, Landroid/widget/DatePicker$SavedState$1;-><init>()V

    sput-object v0, Landroid/widget/DatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 951
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 952
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/DatePicker$SavedState;->mYear:I

    .line 953
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/DatePicker$SavedState;->mMonth:I

    .line 954
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/DatePicker$SavedState;->mDay:I

    .line 955
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/DatePicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 929
    invoke-direct {p0, p1}, Landroid/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;III)V
    .locals 0
    .parameter "superState"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 941
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 942
    iput p2, p0, Landroid/widget/DatePicker$SavedState;->mYear:I

    .line 943
    iput p3, p0, Landroid/widget/DatePicker$SavedState;->mMonth:I

    .line 944
    iput p4, p0, Landroid/widget/DatePicker$SavedState;->mDay:I

    .line 945
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIILandroid/widget/DatePicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 929
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;III)V

    return-void
.end method

.method static synthetic access$1300(Landroid/widget/DatePicker$SavedState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 929
    iget v0, p0, Landroid/widget/DatePicker$SavedState;->mYear:I

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/DatePicker$SavedState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 929
    iget v0, p0, Landroid/widget/DatePicker$SavedState;->mMonth:I

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/DatePicker$SavedState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 929
    iget v0, p0, Landroid/widget/DatePicker$SavedState;->mDay:I

    return v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 959
    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 960
    iget v0, p0, Landroid/widget/DatePicker$SavedState;->mYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 961
    iget v0, p0, Landroid/widget/DatePicker$SavedState;->mMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 962
    iget v0, p0, Landroid/widget/DatePicker$SavedState;->mDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 963
    return-void
.end method
