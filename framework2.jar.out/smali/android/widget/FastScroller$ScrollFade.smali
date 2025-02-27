.class public Landroid/widget/FastScroller$ScrollFade;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScrollFade"
.end annotation


# static fields
.field static final ALPHA_MAX:I = 0xff

.field static final FADE_DURATION:J = 0xc8L


# instance fields
.field mFadeDuration:J

.field mStartTime:J

.field final synthetic this$0:Landroid/widget/FastScroller;


# direct methods
.method public constructor <init>(Landroid/widget/FastScroller;)V
    .locals 0
    .parameter

    .prologue
    .line 836
    iput-object p1, p0, Landroid/widget/FastScroller$ScrollFade;->this$0:Landroid/widget/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getAlpha()I
    .locals 9

    .prologue
    const-wide/16 v7, 0xff

    .line 850
    iget-object v3, p0, Landroid/widget/FastScroller$ScrollFade;->this$0:Landroid/widget/FastScroller;

    invoke-virtual {v3}, Landroid/widget/FastScroller;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 851
    const/16 v0, 0xff

    .line 860
    :goto_0
    return v0

    .line 854
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 855
    .local v1, now:J
    iget-wide v3, p0, Landroid/widget/FastScroller$ScrollFade;->mStartTime:J

    iget-wide v5, p0, Landroid/widget/FastScroller$ScrollFade;->mFadeDuration:J

    add-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 856
    const/4 v0, 0x0

    .local v0, alpha:I
    goto :goto_0

    .line 858
    .end local v0           #alpha:I
    :cond_1
    iget-wide v3, p0, Landroid/widget/FastScroller$ScrollFade;->mStartTime:J

    sub-long v3, v1, v3

    mul-long/2addr v3, v7

    iget-wide v5, p0, Landroid/widget/FastScroller$ScrollFade;->mFadeDuration:J

    div-long/2addr v3, v5

    sub-long v3, v7, v3

    long-to-int v0, v3

    .restart local v0       #alpha:I
    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 864
    iget-object v0, p0, Landroid/widget/FastScroller$ScrollFade;->this$0:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 865
    invoke-virtual {p0}, Landroid/widget/FastScroller$ScrollFade;->startFade()V

    .line 874
    :goto_0
    return-void

    .line 869
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FastScroller$ScrollFade;->getAlpha()I

    move-result v0

    if-lez v0, :cond_1

    .line 870
    iget-object v0, p0, Landroid/widget/FastScroller$ScrollFade;->this$0:Landroid/widget/FastScroller;

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 872
    :cond_1
    iget-object v0, p0, Landroid/widget/FastScroller$ScrollFade;->this$0:Landroid/widget/FastScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setState(I)V

    goto :goto_0
.end method

.method startFade()V
    .locals 2

    .prologue
    .line 844
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Landroid/widget/FastScroller$ScrollFade;->mFadeDuration:J

    .line 845
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/FastScroller$ScrollFade;->mStartTime:J

    .line 846
    iget-object v0, p0, Landroid/widget/FastScroller$ScrollFade;->this$0:Landroid/widget/FastScroller;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setState(I)V

    .line 847
    return-void
.end method
