.class Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAlphaAnimation;
.super Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;
.source "TwExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListView;->handleCollapseAllAnimation()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OffsetableAlphaAnimation"
.end annotation


# instance fields
.field fromAlpha:F

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

.field toAlpha:F


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;FFJJLandroid/view/animation/Interpolator;ZZZ)V
    .locals 10
    .parameter
    .parameter "_fromAlpha"
    .parameter "_toAlpha"
    .parameter "_startOffset"
    .parameter "_duration"
    .parameter "_i"
    .parameter "_fillBefore"
    .parameter "_fillEnabled"
    .parameter "_fillAfter"

    .prologue
    .line 1989
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAlphaAnimation;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p4

    move-wide/from16 v4, p6

    move-object/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    .line 1991
    invoke-direct/range {v0 .. v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;JJLandroid/view/animation/Interpolator;ZZZ)V

    .line 1992
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAlphaAnimation;->fromAlpha:F

    .line 1993
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAlphaAnimation;->toAlpha:F

    .line 1994
    return-void
.end method

.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAlphaAnimation;J)V
    .locals 1
    .parameter
    .parameter "other"
    .parameter "offset"

    .prologue
    .line 1996
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAlphaAnimation;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .line 1997
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;J)V

    .line 1998
    iget v0, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAlphaAnimation;->fromAlpha:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAlphaAnimation;->fromAlpha:F

    .line 1999
    iget v0, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAlphaAnimation;->toAlpha:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAlphaAnimation;->toAlpha:F

    .line 2000
    return-void
.end method


# virtual methods
.method makeAlphaAnimation()Landroid/view/animation/AlphaAnimation;
    .locals 3

    .prologue
    .line 2003
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAlphaAnimation;->fromAlpha:F

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAlphaAnimation;->toAlpha:F

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2004
    .local v0, ret:Landroid/view/animation/AlphaAnimation;
    iget-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->startOffset:J

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2005
    iget-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->duration:J

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2006
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->i:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2007
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->fillBefore:Z

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 2008
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->fillEnabled:Z

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 2009
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->fillAfter:Z

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2010
    return-object v0
.end method
