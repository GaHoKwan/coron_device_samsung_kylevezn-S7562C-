.class Lcom/sec/android/touchwiz/widget/TwSweepActionListView$2;
.super Ljava/lang/Object;
.source "TwSweepActionListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->onWindowFocusChanged(Z)V
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
    .line 954
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 960
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 962
    return-void
.end method
