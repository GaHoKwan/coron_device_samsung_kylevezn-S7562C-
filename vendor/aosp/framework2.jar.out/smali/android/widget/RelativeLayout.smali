.class public Landroid/widget/RelativeLayout;
.super Landroid/view/ViewGroup;
.source "RelativeLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RelativeLayout$1;,
        Landroid/widget/RelativeLayout$DependencyGraph;,
        Landroid/widget/RelativeLayout$LayoutParams;,
        Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;
    }
.end annotation


# static fields
.field public static final ABOVE:I = 0x2

.field public static final ALIGN_BASELINE:I = 0x4

.field public static final ALIGN_BOTTOM:I = 0x8

.field public static final ALIGN_LEFT:I = 0x5

.field public static final ALIGN_PARENT_BOTTOM:I = 0xc

.field public static final ALIGN_PARENT_LEFT:I = 0x9

.field public static final ALIGN_PARENT_RIGHT:I = 0xb

.field public static final ALIGN_PARENT_TOP:I = 0xa

.field public static final ALIGN_RIGHT:I = 0x7

.field public static final ALIGN_TOP:I = 0x6

.field public static final BELOW:I = 0x3

.field public static final CENTER_HORIZONTAL:I = 0xe

.field public static final CENTER_IN_PARENT:I = 0xd

.field public static final CENTER_VERTICAL:I = 0xf

.field private static final DEBUG_GRAPH:Z = false

.field public static final LEFT_OF:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "RelativeLayout"

.field public static final RIGHT_OF:I = 0x1

.field private static final RULES_HORIZONTAL:[I = null

.field private static final RULES_VERTICAL:[I = null

.field public static final TRUE:I = -0x1

.field private static final VERB_COUNT:I = 0x10


# instance fields
.field private mBaselineView:Landroid/view/View;

.field private final mContentBounds:Landroid/graphics/Rect;

.field private mDirtyHierarchy:Z

.field private final mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

.field private mGravity:I

.field private mHasBaselineAlignedChild:Z

.field private mIgnoreGravity:I

.field private final mSelfBounds:Landroid/graphics/Rect;

.field private mSortedHorizontalChildren:[Landroid/view/View;

.field private mSortedVerticalChildren:[Landroid/view/View;

.field private mTopToBottomLeftToRightSet:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/RelativeLayout;->RULES_VERTICAL:[I

    .line 160
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/widget/RelativeLayout;->RULES_HORIZONTAL:[I

    return-void

    .line 156
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 160
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 180
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 164
    iput-object v1, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    .line 167
    const/16 v0, 0x33

    iput v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 168
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    .line 169
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 172
    iput-object v1, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 175
    new-array v0, v2, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    .line 176
    new-array v0, v2, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    .line 177
    new-instance v0, Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$DependencyGraph;-><init>(Landroid/widget/RelativeLayout$1;)V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 184
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 164
    iput-object v1, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    .line 167
    const/16 v0, 0x33

    iput v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 168
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    .line 169
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 172
    iput-object v1, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 175
    new-array v0, v2, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    .line 176
    new-array v0, v2, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    .line 177
    new-instance v0, Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$DependencyGraph;-><init>(Landroid/widget/RelativeLayout$1;)V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    .line 185
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 189
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 164
    iput-object v1, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    .line 167
    const/16 v0, 0x33

    iput v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 168
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    .line 169
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 172
    iput-object v1, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 175
    new-array v0, v2, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    .line 176
    new-array v0, v2, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    .line 177
    new-instance v0, Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$DependencyGraph;-><init>(Landroid/widget/RelativeLayout$1;)V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    .line 190
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 191
    return-void
.end method

.method private alignBaseline(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 9
    .parameter "child"
    .parameter "params"

    .prologue
    const/4 v7, 0x4

    const/4 v8, -0x1

    .line 554
    invoke-virtual {p2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v6

    .line 555
    .local v6, rules:[I
    invoke-direct {p0, v6, v7}, Landroid/widget/RelativeLayout;->getRelatedViewBaseline([II)I

    move-result v0

    .line 557
    .local v0, anchorBaseline:I
    if-eq v0, v8, :cond_1

    .line 558
    invoke-direct {p0, v6, v7}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 559
    .local v1, anchorParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v1, :cond_1

    .line 560
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    add-int v5, v7, v0

    .line 561
    .local v5, offset:I
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v2

    .line 562
    .local v2, baseline:I
    if-eq v2, v8, :cond_0

    .line 563
    sub-int/2addr v5, v2

    .line 565
    :cond_0
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v8

    sub-int v3, v7, v8

    .line 566
    .local v3, height:I
    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 567
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    add-int/2addr v7, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 571
    .end local v1           #anchorParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #baseline:I
    .end local v3           #height:I
    .end local v5           #offset:I
    :cond_1
    iget-object v7, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    if-nez v7, :cond_3

    .line 572
    iput-object p1, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    .line 579
    :cond_2
    :goto_0
    return-void

    .line 574
    :cond_3
    iget-object v7, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 575
    .local v4, lp:Landroid/widget/RelativeLayout$LayoutParams;
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v8

    if-lt v7, v8, :cond_4

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v8

    if-ne v7, v8, :cond_2

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 576
    :cond_4
    iput-object p1, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    goto :goto_0
.end method

.method private applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 8
    .parameter "childParams"
    .parameter "myWidth"

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 758
    invoke-virtual {p1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    .line 765
    .local v1, rules:[I
    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 766
    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 768
    invoke-direct {p0, v1, v3}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 769
    .local v0, anchorParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_6

    .line 770
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 780
    :cond_0
    :goto_0
    invoke-direct {p0, v1, v5}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 781
    if-eqz v0, :cond_7

    .line 782
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 788
    :cond_1
    :goto_1
    invoke-direct {p0, v1, v6}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 789
    if-eqz v0, :cond_8

    .line 790
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 795
    :cond_2
    :goto_2
    invoke-direct {p0, v1, v7}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 796
    if-eqz v0, :cond_9

    .line 797
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 806
    :cond_3
    :goto_3
    const/16 v2, 0x9

    aget v2, v1, v2

    if-eqz v2, :cond_4

    .line 807
    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 810
    :cond_4
    const/16 v2, 0xb

    aget v2, v1, v2

    if-eqz v2, :cond_5

    .line 811
    if-ltz p2, :cond_5

    .line 812
    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v2, p2, v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 817
    :cond_5
    return-void

    .line 772
    :cond_6
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_0

    aget v2, v1, v3

    if-eqz v2, :cond_0

    .line 773
    if-ltz p2, :cond_0

    .line 774
    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v2, p2, v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_0

    .line 784
    :cond_7
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_1

    aget v2, v1, v5

    if-eqz v2, :cond_1

    .line 785
    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_1

    .line 791
    :cond_8
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_2

    aget v2, v1, v6

    if-eqz v2, :cond_2

    .line 792
    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_2

    .line 798
    :cond_9
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_3

    aget v2, v1, v7

    if-eqz v2, :cond_3

    .line 799
    if-ltz p2, :cond_3

    .line 800
    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v2, p2, v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_3
.end method

.method private applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 8
    .parameter "childParams"
    .parameter "myHeight"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x6

    const/4 v5, 0x3

    const/4 v3, 0x2

    const/4 v2, -0x1

    .line 820
    invoke-virtual {p1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    .line 823
    .local v1, rules:[I
    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 824
    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 826
    invoke-direct {p0, v1, v3}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 827
    .local v0, anchorParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_7

    .line 828
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 838
    :cond_0
    :goto_0
    invoke-direct {p0, v1, v5}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 839
    if-eqz v0, :cond_8

    .line 840
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 846
    :cond_1
    :goto_1
    invoke-direct {p0, v1, v6}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 847
    if-eqz v0, :cond_9

    .line 848
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 853
    :cond_2
    :goto_2
    invoke-direct {p0, v1, v7}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 854
    if-eqz v0, :cond_a

    .line 855
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 864
    :cond_3
    :goto_3
    const/16 v2, 0xa

    aget v2, v1, v2

    if-eqz v2, :cond_4

    .line 865
    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 868
    :cond_4
    const/16 v2, 0xc

    aget v2, v1, v2

    if-eqz v2, :cond_5

    .line 869
    if-ltz p2, :cond_5

    .line 870
    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v2, p2, v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 876
    :cond_5
    const/4 v2, 0x4

    aget v2, v1, v2

    if-eqz v2, :cond_6

    .line 877
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/RelativeLayout;->mHasBaselineAlignedChild:Z

    .line 879
    :cond_6
    return-void

    .line 830
    :cond_7
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_0

    aget v2, v1, v3

    if-eqz v2, :cond_0

    .line 831
    if-ltz p2, :cond_0

    .line 832
    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v2, p2, v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_0

    .line 842
    :cond_8
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_1

    aget v2, v1, v5

    if-eqz v2, :cond_1

    .line 843
    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_1

    .line 849
    :cond_9
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_2

    aget v2, v1, v6

    if-eqz v2, :cond_2

    .line 850
    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_2

    .line 856
    :cond_a
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_3

    aget v2, v1, v7

    if-eqz v2, :cond_3

    .line 857
    if-ltz p2, :cond_3

    .line 858
    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v2, p2, v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_3
.end method

.method private centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 3
    .parameter "child"
    .parameter "params"
    .parameter "myWidth"

    .prologue
    .line 922
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 923
    .local v0, childWidth:I
    sub-int v2, p3, v0

    div-int/lit8 v1, v2, 0x2

    .line 925
    .local v1, left:I
    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 926
    add-int v2, v1, v0

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 927
    return-void
.end method

.method private centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 3
    .parameter "child"
    .parameter "params"
    .parameter "myHeight"

    .prologue
    .line 930
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 931
    .local v0, childHeight:I
    sub-int v2, p3, v0

    div-int/lit8 v1, v2, 0x2

    .line 933
    .local v1, top:I
    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 934
    add-int v2, v1, v0

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 935
    return-void
.end method

.method private getChildMeasureSpec(IIIIIIII)I
    .locals 6
    .parameter "childStart"
    .parameter "childEnd"
    .parameter "childSize"
    .parameter "startMargin"
    .parameter "endMargin"
    .parameter "startPadding"
    .parameter "endPadding"
    .parameter "mySize"

    .prologue
    .line 639
    const/4 v0, 0x0

    .line 640
    .local v0, childSpecMode:I
    const/4 v1, 0x0

    .line 643
    .local v1, childSpecSize:I
    move v4, p1

    .line 644
    .local v4, tempStart:I
    move v3, p2

    .line 648
    .local v3, tempEnd:I
    if-gez v4, :cond_0

    .line 649
    add-int v4, p6, p4

    .line 651
    :cond_0
    if-gez v3, :cond_1

    .line 652
    sub-int v5, p8, p7

    sub-int v3, v5, p5

    .line 656
    :cond_1
    sub-int v2, v3, v4

    .line 658
    .local v2, maxAvailable:I
    if-ltz p1, :cond_3

    if-ltz p2, :cond_3

    .line 660
    const/high16 v0, 0x4000

    .line 661
    move v1, v2

    .line 696
    :cond_2
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    return v5

    .line 663
    :cond_3
    if-ltz p3, :cond_5

    .line 665
    const/high16 v0, 0x4000

    .line 667
    if-ltz v2, :cond_4

    .line 669
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 672
    :cond_4
    move v1, p3

    goto :goto_0

    .line 674
    :cond_5
    const/4 v5, -0x1

    if-ne p3, v5, :cond_6

    .line 677
    const/high16 v0, 0x4000

    .line 678
    move v1, v2

    goto :goto_0

    .line 679
    :cond_6
    const/4 v5, -0x2

    if-ne p3, v5, :cond_2

    .line 683
    if-ltz v2, :cond_7

    .line 685
    const/high16 v0, -0x8000

    .line 686
    move v1, v2

    goto :goto_0

    .line 690
    :cond_7
    const/4 v0, 0x0

    .line 691
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getRelatedView([II)Landroid/view/View;
    .locals 6
    .parameter "rules"
    .parameter "relation"

    .prologue
    const/4 v4, 0x0

    .line 882
    aget v0, p1, p2

    .line 883
    .local v0, id:I
    if-eqz v0, :cond_3

    .line 884
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    #getter for: Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/widget/RelativeLayout$DependencyGraph;->access$500(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 885
    .local v1, node:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    if-nez v1, :cond_1

    move-object v2, v4

    .line 899
    .end local v1           #node:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_0
    :goto_0
    return-object v2

    .line 886
    .restart local v1       #node:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_1
    iget-object v2, v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    .line 889
    .local v2, v:Landroid/view/View;
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_0

    .line 890
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object p1

    .line 891
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    #getter for: Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/widget/RelativeLayout$DependencyGraph;->access$500(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    move-result-object v3

    aget v5, p1, p2

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #node:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    check-cast v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 892
    .restart local v1       #node:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    if-nez v1, :cond_2

    move-object v2, v4

    goto :goto_0

    .line 893
    :cond_2
    iget-object v2, v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    goto :goto_1

    .end local v1           #node:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    .end local v2           #v:Landroid/view/View;
    :cond_3
    move-object v2, v4

    .line 899
    goto :goto_0
.end method

.method private getRelatedViewBaseline([II)I
    .locals 2
    .parameter "rules"
    .parameter "relation"

    .prologue
    .line 914
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;->getRelatedView([II)Landroid/view/View;

    move-result-object v0

    .line 915
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 916
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 918
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3
    .parameter "rules"
    .parameter "relation"

    .prologue
    .line 903
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;->getRelatedView([II)Landroid/view/View;

    move-result-object v1

    .line 904
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 905
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 906
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 907
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 910
    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 194
    sget-object v1, Lcom/android/internal/R$styleable;->RelativeLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 195
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    .line 196
    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/RelativeLayout;->mGravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 197
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 198
    return-void
.end method

.method private measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .locals 11
    .parameter "child"
    .parameter "params"
    .parameter "myWidth"
    .parameter "myHeight"

    .prologue
    .line 592
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    move-object v0, p0

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result v10

    .line 597
    .local v10, childWidthMeasureSpec:I
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    iget v7, p0, Landroid/view/View;->mPaddingBottom:I

    move-object v0, p0

    move v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result v9

    .line 602
    .local v9, childHeightMeasureSpec:I
    invoke-virtual {p1, v10, v9}, Landroid/view/View;->measure(II)V

    .line 603
    return-void
.end method

.method private measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .locals 11
    .parameter "child"
    .parameter "params"
    .parameter "myWidth"
    .parameter "myHeight"

    .prologue
    .line 606
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    move-object v0, p0

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result v10

    .line 612
    .local v10, childWidthMeasureSpec:I
    iget v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 613
    const/high16 v0, 0x4000

    invoke-static {p4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 617
    .local v9, childHeightMeasureSpec:I
    :goto_0
    invoke-virtual {p1, v10, v9}, Landroid/view/View;->measure(II)V

    .line 618
    return-void

    .line 615
    .end local v9           #childHeightMeasureSpec:I
    :cond_0
    const/high16 v0, -0x8000

    invoke-static {p4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .restart local v9       #childHeightMeasureSpec:I
    goto :goto_0
.end method

.method private positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .locals 4
    .parameter "child"
    .parameter "params"
    .parameter "myWidth"
    .parameter "wrapContent"

    .prologue
    const/4 v1, 0x1

    .line 702
    invoke-virtual {p2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    .line 704
    .local v0, rules:[I
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-gez v2, :cond_1

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 706
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 725
    :cond_0
    :goto_0
    const/16 v2, 0xb

    aget v2, v0, v2

    if-eqz v2, :cond_6

    :goto_1
    return v1

    .line 707
    :cond_1
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-ltz v2, :cond_2

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-gez v2, :cond_2

    .line 709
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_0

    .line 710
    :cond_2
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-gez v2, :cond_0

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-gez v2, :cond_0

    .line 712
    const/16 v2, 0xd

    aget v2, v0, v2

    if-nez v2, :cond_3

    const/16 v2, 0xe

    aget v2, v0, v2

    if-eqz v2, :cond_5

    .line 713
    :cond_3
    if-nez p4, :cond_4

    .line 714
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_1

    .line 716
    :cond_4
    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    iget v3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 717
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_1

    .line 721
    :cond_5
    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    iget v3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 722
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_0

    .line 725
    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .locals 4
    .parameter "child"
    .parameter "params"
    .parameter "myHeight"
    .parameter "wrapContent"

    .prologue
    const/4 v1, 0x1

    .line 731
    invoke-virtual {p2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    .line 733
    .local v0, rules:[I
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-gez v2, :cond_1

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 735
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 754
    :cond_0
    :goto_0
    const/16 v2, 0xc

    aget v2, v0, v2

    if-eqz v2, :cond_6

    :goto_1
    return v1

    .line 736
    :cond_1
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-ltz v2, :cond_2

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-gez v2, :cond_2

    .line 738
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_0

    .line 739
    :cond_2
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-gez v2, :cond_0

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-gez v2, :cond_0

    .line 741
    const/16 v2, 0xd

    aget v2, v0, v2

    if-nez v2, :cond_3

    const/16 v2, 0xf

    aget v2, v0, v2

    if-eqz v2, :cond_5

    .line 742
    :cond_3
    if-nez p4, :cond_4

    .line 743
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_1

    .line 745
    :cond_4
    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    iget v3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 746
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_1

    .line 750
    :cond_5
    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    iget v3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 751
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_0

    .line 754
    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private sortChildren()V
    .locals 6

    .prologue
    .line 297
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 298
    .local v1, count:I
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    array-length v4, v4

    if-eq v4, v1, :cond_0

    new-array v4, v1, [Landroid/view/View;

    iput-object v4, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    .line 299
    :cond_0
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    array-length v4, v4

    if-eq v4, v1, :cond_1

    new-array v4, v1, [Landroid/view/View;

    iput-object v4, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    .line 301
    :cond_1
    iget-object v2, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    .line 302
    .local v2, graph:Landroid/widget/RelativeLayout$DependencyGraph;
    invoke-virtual {v2}, Landroid/widget/RelativeLayout$DependencyGraph;->clear()V

    .line 304
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 305
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 306
    .local v0, child:Landroid/view/View;
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$DependencyGraph;->add(Landroid/view/View;)V

    .line 304
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 316
    .end local v0           #child:Landroid/view/View;
    :cond_2
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    sget-object v5, Landroid/widget/RelativeLayout;->RULES_VERTICAL:[I

    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    .line 317
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    sget-object v5, Landroid/widget/RelativeLayout;->RULES_HORIZONTAL:[I

    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    .line 329
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 972
    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    .line 982
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    if-nez v4, :cond_0

    .line 983
    new-instance v4, Ljava/util/TreeSet;

    new-instance v5, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$1;)V

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 987
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 988
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 987
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 991
    :cond_1
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 992
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 994
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->clear()V

    .line 995
    const/4 v4, 0x1

    .line 1000
    .end local v3           #view:Landroid/view/View;
    :goto_1
    return v4

    .line 999
    :cond_3
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->clear()V

    .line 1000
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 966
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 977
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 956
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result v0

    goto :goto_0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 1005
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1006
    const-class v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 1007
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1011
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1012
    const-class v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1013
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 941
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 943
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 944
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 945
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 946
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 948
    .local v3, st:Landroid/widget/RelativeLayout$LayoutParams;
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v5

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v6

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 943
    .end local v3           #st:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 952
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 41
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 335
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    if-eqz v4, :cond_0

    .line 336
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    .line 337
    invoke-direct/range {p0 .. p0}, Landroid/widget/RelativeLayout;->sortChildren()V

    .line 340
    :cond_0
    const/16 v27, -0x1

    .line 341
    .local v27, myWidth:I
    const/16 v26, -0x1

    .line 343
    .local v26, myHeight:I
    const/16 v37, 0x0

    .line 344
    .local v37, width:I
    const/16 v16, 0x0

    .line 346
    .local v16, height:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v38

    .line 347
    .local v38, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 348
    .local v17, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v39

    .line 349
    .local v39, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 352
    .local v18, heightSize:I
    if-eqz v38, :cond_1

    .line 353
    move/from16 v27, v39

    .line 356
    :cond_1
    if-eqz v17, :cond_2

    .line 357
    move/from16 v26, v18

    .line 360
    :cond_2
    const/high16 v4, 0x4000

    move/from16 v0, v38

    if-ne v0, v4, :cond_3

    .line 361
    move/from16 v37, v27

    .line 364
    :cond_3
    const/high16 v4, 0x4000

    move/from16 v0, v17

    if-ne v0, v4, :cond_4

    .line 365
    move/from16 v16, v26

    .line 368
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/RelativeLayout;->mHasBaselineAlignedChild:Z

    .line 370
    const/16 v22, 0x0

    .line 371
    .local v22, ignore:Landroid/view/View;
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mGravity:I

    const v5, 0x800007

    and-int v15, v4, v5

    .line 372
    .local v15, gravity:I
    const/4 v4, 0x3

    if-eq v15, v4, :cond_8

    if-eqz v15, :cond_8

    const/16 v19, 0x1

    .line 373
    .local v19, horizontalGravity:Z
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v15, v4, 0x70

    .line 374
    const/16 v4, 0x30

    if-eq v15, v4, :cond_9

    if-eqz v15, :cond_9

    const/16 v34, 0x1

    .line 376
    .local v34, verticalGravity:Z
    :goto_1
    const v25, 0x7fffffff

    .line 377
    .local v25, left:I
    const v33, 0x7fffffff

    .line 378
    .local v33, top:I
    const/high16 v31, -0x8000

    .line 379
    .local v31, right:I
    const/high16 v10, -0x8000

    .line 381
    .local v10, bottom:I
    const/16 v28, 0x0

    .line 382
    .local v28, offsetHorizontalAxis:Z
    const/16 v29, 0x0

    .line 384
    .local v29, offsetVerticalAxis:Z
    if-nez v19, :cond_5

    if-eqz v34, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    .line 385
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 388
    :cond_6
    const/high16 v4, 0x4000

    move/from16 v0, v38

    if-eq v0, v4, :cond_a

    const/16 v24, 0x1

    .line 389
    .local v24, isWrapContentWidth:Z
    :goto_2
    const/high16 v4, 0x4000

    move/from16 v0, v17

    if-eq v0, v4, :cond_b

    const/16 v23, 0x1

    .line 391
    .local v23, isWrapContentHeight:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    move-object/from16 v36, v0

    .line 392
    .local v36, views:[Landroid/view/View;
    move-object/from16 v0, v36

    array-length v14, v0

    .line 393
    .local v14, count:I
    const/16 v21, 0x0

    .local v21, i:I
    :goto_4
    move/from16 v0, v21

    if-ge v0, v14, :cond_c

    .line 394
    aget-object v11, v36, v21

    .line 395
    .local v11, child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_7

    .line 396
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Landroid/widget/RelativeLayout$LayoutParams;

    .line 398
    .local v30, params:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout;->applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 399
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v27

    move/from16 v3, v26

    invoke-direct {v0, v11, v1, v2, v3}, Landroid/widget/RelativeLayout;->measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 400
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v27

    move/from16 v3, v24

    invoke-direct {v0, v11, v1, v2, v3}, Landroid/widget/RelativeLayout;->positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 401
    const/16 v28, 0x1

    .line 393
    .end local v30           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 372
    .end local v10           #bottom:I
    .end local v11           #child:Landroid/view/View;
    .end local v14           #count:I
    .end local v19           #horizontalGravity:Z
    .end local v21           #i:I
    .end local v23           #isWrapContentHeight:Z
    .end local v24           #isWrapContentWidth:Z
    .end local v25           #left:I
    .end local v28           #offsetHorizontalAxis:Z
    .end local v29           #offsetVerticalAxis:Z
    .end local v31           #right:I
    .end local v33           #top:I
    .end local v34           #verticalGravity:Z
    .end local v36           #views:[Landroid/view/View;
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 374
    .restart local v19       #horizontalGravity:Z
    :cond_9
    const/16 v34, 0x0

    goto :goto_1

    .line 388
    .restart local v10       #bottom:I
    .restart local v25       #left:I
    .restart local v28       #offsetHorizontalAxis:Z
    .restart local v29       #offsetVerticalAxis:Z
    .restart local v31       #right:I
    .restart local v33       #top:I
    .restart local v34       #verticalGravity:Z
    :cond_a
    const/16 v24, 0x0

    goto :goto_2

    .line 389
    .restart local v24       #isWrapContentWidth:Z
    :cond_b
    const/16 v23, 0x0

    goto :goto_3

    .line 406
    .restart local v14       #count:I
    .restart local v21       #i:I
    .restart local v23       #isWrapContentHeight:Z
    .restart local v36       #views:[Landroid/view/View;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    move-object/from16 v36, v0

    .line 407
    move-object/from16 v0, v36

    array-length v14, v0

    .line 409
    const/16 v21, 0x0

    :goto_5
    move/from16 v0, v21

    if-ge v0, v14, :cond_14

    .line 410
    aget-object v11, v36, v21

    .line 411
    .restart local v11       #child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_13

    .line 412
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Landroid/widget/RelativeLayout$LayoutParams;

    .line 414
    .restart local v30       #params:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout;->applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 415
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v27

    move/from16 v3, v26

    invoke-direct {v0, v11, v1, v2, v3}, Landroid/widget/RelativeLayout;->measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 416
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v26

    move/from16 v3, v23

    invoke-direct {v0, v11, v1, v2, v3}, Landroid/widget/RelativeLayout;->positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 417
    const/16 v29, 0x1

    .line 420
    :cond_d
    if-eqz v24, :cond_e

    .line 421
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static/range {v30 .. v30}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move/from16 v0, v37

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v37

    .line 424
    :cond_e
    if-eqz v23, :cond_f

    .line 425
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static/range {v30 .. v30}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move/from16 v0, v16

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 428
    :cond_f
    move-object/from16 v0, v22

    if-ne v11, v0, :cond_10

    if-eqz v34, :cond_11

    .line 429
    :cond_10
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static/range {v30 .. v30}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v30

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    move/from16 v0, v25

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v25

    .line 430
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static/range {v30 .. v30}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v30

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    move/from16 v0, v33

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v33

    .line 433
    :cond_11
    move-object/from16 v0, v22

    if-ne v11, v0, :cond_12

    if-eqz v19, :cond_13

    .line 434
    :cond_12
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static/range {v30 .. v30}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v30

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    move/from16 v0, v31

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v31

    .line 435
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static/range {v30 .. v30}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v30

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 409
    .end local v30           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_13
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_5

    .line 440
    .end local v11           #child:Landroid/view/View;
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/RelativeLayout;->mHasBaselineAlignedChild:Z

    if-eqz v4, :cond_19

    .line 441
    const/16 v21, 0x0

    :goto_6
    move/from16 v0, v21

    if-ge v0, v14, :cond_19

    .line 442
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 443
    .restart local v11       #child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_18

    .line 444
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Landroid/widget/RelativeLayout$LayoutParams;

    .line 445
    .restart local v30       #params:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v11, v1}, Landroid/widget/RelativeLayout;->alignBaseline(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 447
    move-object/from16 v0, v22

    if-ne v11, v0, :cond_15

    if-eqz v34, :cond_16

    .line 448
    :cond_15
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static/range {v30 .. v30}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v30

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    move/from16 v0, v25

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v25

    .line 449
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static/range {v30 .. v30}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v30

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    move/from16 v0, v33

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v33

    .line 452
    :cond_16
    move-object/from16 v0, v22

    if-ne v11, v0, :cond_17

    if-eqz v19, :cond_18

    .line 453
    :cond_17
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static/range {v30 .. v30}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v30

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    move/from16 v0, v31

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v31

    .line 454
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static/range {v30 .. v30}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v30

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 441
    .end local v30           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_18
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 460
    .end local v11           #child:Landroid/view/View;
    :cond_19
    if-eqz v24, :cond_1e

    .line 463
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPaddingRight:I

    add-int v37, v37, v4

    .line 465
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v4, :cond_1a

    .line 466
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v0, v37

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v37

    .line 469
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v4

    move/from16 v0, v37

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v37

    .line 470
    move/from16 v0, v37

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/widget/RelativeLayout;->resolveSize(II)I

    move-result v37

    .line 472
    if-eqz v28, :cond_1e

    .line 473
    const/16 v21, 0x0

    :goto_7
    move/from16 v0, v21

    if-ge v0, v14, :cond_1e

    .line 474
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 475
    .restart local v11       #child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1c

    .line 476
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Landroid/widget/RelativeLayout$LayoutParams;

    .line 477
    .restart local v30       #params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual/range {v30 .. v30}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v32

    .line 478
    .local v32, rules:[I
    const/16 v4, 0xd

    aget v4, v32, v4

    if-nez v4, :cond_1b

    const/16 v4, 0xe

    aget v4, v32, v4

    if-eqz v4, :cond_1d

    .line 479
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v37

    invoke-direct {v0, v11, v1, v2}, Landroid/widget/RelativeLayout;->centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 473
    .end local v30           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v32           #rules:[I
    :cond_1c
    :goto_8
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 480
    .restart local v30       #params:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v32       #rules:[I
    :cond_1d
    const/16 v4, 0xb

    aget v4, v32, v4

    if-eqz v4, :cond_1c

    .line 481
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 482
    .local v13, childWidth:I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPaddingRight:I

    sub-int v4, v37, v4

    sub-int/2addr v4, v13

    move-object/from16 v0, v30

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 483
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static/range {v30 .. v30}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int/2addr v4, v13

    move-object/from16 v0, v30

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_8

    .line 490
    .end local v11           #child:Landroid/view/View;
    .end local v13           #childWidth:I
    .end local v30           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v32           #rules:[I
    :cond_1e
    if-eqz v23, :cond_23

    .line 493
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPaddingBottom:I

    add-int v16, v16, v4

    .line 495
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v4, :cond_1f

    .line 496
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v0, v16

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 499
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v4

    move/from16 v0, v16

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 500
    move/from16 v0, v16

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/widget/RelativeLayout;->resolveSize(II)I

    move-result v16

    .line 502
    if-eqz v29, :cond_23

    .line 503
    const/16 v21, 0x0

    :goto_9
    move/from16 v0, v21

    if-ge v0, v14, :cond_23

    .line 504
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 505
    .restart local v11       #child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_21

    .line 506
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Landroid/widget/RelativeLayout$LayoutParams;

    .line 507
    .restart local v30       #params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual/range {v30 .. v30}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v32

    .line 508
    .restart local v32       #rules:[I
    const/16 v4, 0xd

    aget v4, v32, v4

    if-nez v4, :cond_20

    const/16 v4, 0xf

    aget v4, v32, v4

    if-eqz v4, :cond_22

    .line 509
    :cond_20
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v16

    invoke-direct {v0, v11, v1, v2}, Landroid/widget/RelativeLayout;->centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 503
    .end local v30           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v32           #rules:[I
    :cond_21
    :goto_a
    add-int/lit8 v21, v21, 0x1

    goto :goto_9

    .line 510
    .restart local v30       #params:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v32       #rules:[I
    :cond_22
    const/16 v4, 0xc

    aget v4, v32, v4

    if-eqz v4, :cond_21

    .line 511
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 512
    .local v12, childHeight:I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPaddingBottom:I

    sub-int v4, v16, v4

    sub-int/2addr v4, v12

    move-object/from16 v0, v30

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 513
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static/range {v30 .. v30}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int/2addr v4, v12

    move-object/from16 v0, v30

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_a

    .line 520
    .end local v11           #child:Landroid/view/View;
    .end local v12           #childHeight:I
    .end local v30           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v32           #rules:[I
    :cond_23
    if-nez v19, :cond_24

    if-eqz v34, :cond_28

    .line 521
    :cond_24
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 522
    .local v7, selfBounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mPaddingRight:I

    sub-int v6, v37, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v40, v0

    sub-int v40, v16, v40

    move/from16 v0, v40

    invoke-virtual {v7, v4, v5, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 525
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    .line 526
    .local v8, contentBounds:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResolvedLayoutDirection()I

    move-result v9

    .line 527
    .local v9, layoutDirection:I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mGravity:I

    sub-int v5, v31, v25

    sub-int v6, v10, v33

    invoke-static/range {v4 .. v9}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 530
    iget v4, v8, Landroid/graphics/Rect;->left:I

    sub-int v20, v4, v25

    .line 531
    .local v20, horizontalOffset:I
    iget v4, v8, Landroid/graphics/Rect;->top:I

    sub-int v35, v4, v33

    .line 532
    .local v35, verticalOffset:I
    if-nez v20, :cond_25

    if-eqz v35, :cond_28

    .line 533
    :cond_25
    const/16 v21, 0x0

    :goto_b
    move/from16 v0, v21

    if-ge v0, v14, :cond_28

    .line 534
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 535
    .restart local v11       #child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_27

    move-object/from16 v0, v22

    if-eq v11, v0, :cond_27

    .line 536
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Landroid/widget/RelativeLayout$LayoutParams;

    .line 537
    .restart local v30       #params:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v19, :cond_26

    .line 538
    move-object/from16 v0, v30

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$312(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 539
    move-object/from16 v0, v30

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$112(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 541
    :cond_26
    if-eqz v34, :cond_27

    .line 542
    move-object/from16 v0, v30

    move/from16 v1, v35

    invoke-static {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$412(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 543
    move-object/from16 v0, v30

    move/from16 v1, v35

    invoke-static {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$212(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 533
    .end local v30           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_27
    add-int/lit8 v21, v21, 0x1

    goto :goto_b

    .line 550
    .end local v7           #selfBounds:Landroid/graphics/Rect;
    .end local v8           #contentBounds:Landroid/graphics/Rect;
    .end local v9           #layoutDirection:I
    .end local v11           #child:Landroid/view/View;
    .end local v20           #horizontalOffset:I
    .end local v35           #verticalOffset:I
    :cond_28
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 551
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 292
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    .line 294
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 253
    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    if-eq v0, p1, :cond_2

    .line 254
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 255
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 258
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 259
    or-int/lit8 p1, p1, 0x30

    .line 262
    :cond_1
    iput p1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 263
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 265
    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 3
    .parameter "horizontalGravity"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const v2, 0x800007

    .line 269
    and-int v0, p1, v2

    .line 270
    .local v0, gravity:I
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/2addr v1, v2

    if-eq v1, v0, :cond_0

    .line 271
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    const v2, -0x800008

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 272
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 274
    :cond_0
    return-void
.end method

.method public setIgnoreGravity(I)V
    .locals 0
    .parameter "viewId"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 218
    iput p1, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    .line 219
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2
    .parameter "verticalGravity"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 278
    and-int/lit8 v0, p1, 0x70

    .line 279
    .local v0, gravity:I
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_0

    .line 280
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 281
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 283
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method
