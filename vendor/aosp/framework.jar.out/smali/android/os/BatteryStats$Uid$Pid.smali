.class public Landroid/os/BatteryStats$Uid$Pid;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats$Uid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Pid"
.end annotation


# instance fields
.field public mAcquireWake:J

.field public mReleaseWake:J

.field public mWakeStart:J

.field public mWakeSum:J

.field public mWakelockNesting:I

.field final synthetic this$0:Landroid/os/BatteryStats$Uid;


# direct methods
.method public constructor <init>(Landroid/os/BatteryStats$Uid;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Landroid/os/BatteryStats$Uid$Pid;->this$0:Landroid/os/BatteryStats$Uid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
