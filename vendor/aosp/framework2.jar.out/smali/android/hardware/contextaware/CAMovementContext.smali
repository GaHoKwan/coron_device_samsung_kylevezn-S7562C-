.class public Landroid/hardware/contextaware/CAMovementContext;
.super Ljava/lang/Object;
.source "CAMovementContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/contextaware/CAMovementContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private action:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Landroid/hardware/contextaware/CAMovementContext$1;

    invoke-direct {v0}, Landroid/hardware/contextaware/CAMovementContext$1;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/CAMovementContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/CAMovementContext;->action:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "input"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/CAMovementContext;->readFromParcel(Landroid/os/Parcel;)V

    .line 43
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/contextaware/CAMovementContext;->action:I

    .line 92
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Landroid/hardware/contextaware/CAMovementContext;->action:I

    return v0
.end method

.method public setAction(I)V
    .locals 0
    .parameter "action"

    .prologue
    .line 61
    iput p1, p0, Landroid/hardware/contextaware/CAMovementContext;->action:I

    .line 62
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 81
    iget v0, p0, Landroid/hardware/contextaware/CAMovementContext;->action:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    return-void
.end method
