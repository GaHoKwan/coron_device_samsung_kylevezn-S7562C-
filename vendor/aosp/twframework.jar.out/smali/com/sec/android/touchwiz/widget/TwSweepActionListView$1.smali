.class Lcom/sec/android/touchwiz/widget/TwSweepActionListView$1;
.super Ljava/lang/Object;
.source "TwSweepActionListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemsUnclickableForShortDuration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V
    .locals 0
    .parameter

    .prologue
    .line 510
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$202(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Z)Z

    .line 517
    return-void
.end method
