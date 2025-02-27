.class Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "TwOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SplineOverScroller"
.end annotation


# static fields
.field private static final BALLISTIC:I = 0x2

.field private static final CUBIC:I = 0x1

.field private static DECELERATION_RATE:F = 0.0f

.field private static final END_TENSION:F = 1.0f

.field private static final GRAVITY:F = 2000.0f

.field private static final INFLEXION:F = 0.35f

.field private static final NB_SAMPLES:I = 0x64

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static PHYSICAL_COEF:F = 0.0f

.field private static final SPLINE:I = 0x0

.field private static final SPLINE_POSITION:[F = null

.field private static final SPLINE_TIME:[F = null

.field private static final START_TENSION:F = 0.5f


# instance fields
.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDeceleration:F

.field private mDuration:I

.field private mFinal:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mOver:I

.field private mSplineDistance:I

.field private mSplineDuration:I

.field private mStart:I

.field private mStartTime:J

.field private mState:I

.field private mVelocity:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    .line 597
    const-wide v11, 0x3fe8f5c28f5c28f6L

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    const-wide v13, 0x3feccccccccccccdL

    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    div-double/2addr v11, v13

    double-to-float v11, v11

    sput v11, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->DECELERATION_RATE:F

    .line 605
    const/16 v11, 0x65

    new-array v11, v11, [F

    sput-object v11, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 606
    const/16 v11, 0x65

    new-array v11, v11, [F

    sput-object v11, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->SPLINE_TIME:[F

    .line 613
    const/4 v7, 0x0

    .line 614
    .local v7, x_min:F
    const/4 v10, 0x0

    .line 615
    .local v10, y_min:F
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/16 v11, 0x64

    if-ge v3, v11, :cond_4

    .line 616
    int-to-float v11, v3

    const/high16 v12, 0x42c8

    div-float v0, v11, v12

    .line 618
    .local v0, alpha:F
    const/high16 v6, 0x3f80

    .line 621
    .local v6, x_max:F
    :goto_1
    sub-float v11, v6, v7

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    add-float v5, v7, v11

    .line 622
    .local v5, x:F
    const/high16 v11, 0x4040

    mul-float/2addr v11, v5

    const/high16 v12, 0x3f80

    sub-float/2addr v12, v5

    mul-float v1, v11, v12

    .line 623
    .local v1, coef:F
    const/high16 v11, 0x3f80

    sub-float/2addr v11, v5

    const v12, 0x3e333333

    mul-float/2addr v11, v12

    const v12, 0x3eb33334

    mul-float/2addr v12, v5

    add-float/2addr v11, v12

    mul-float/2addr v11, v1

    mul-float v12, v5, v5

    mul-float/2addr v12, v5

    add-float v4, v11, v12

    .line 624
    .local v4, tx:F
    sub-float v11, v4, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v11, v11

    const-wide v13, 0x3ee4f8b588e368f1L

    cmpg-double v11, v11, v13

    if-gez v11, :cond_0

    .line 628
    sget-object v11, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    const/high16 v12, 0x3f80

    sub-float/2addr v12, v5

    const/high16 v13, 0x3f00

    mul-float/2addr v12, v13

    add-float/2addr v12, v5

    mul-float/2addr v12, v1

    mul-float v13, v5, v5

    mul-float/2addr v13, v5

    add-float/2addr v12, v13

    aput v12, v11, v3

    .line 630
    const/high16 v9, 0x3f80

    .line 633
    .local v9, y_max:F
    :goto_2
    sub-float v11, v9, v10

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    add-float v8, v10, v11

    .line 634
    .local v8, y:F
    const/high16 v11, 0x4040

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f80

    sub-float/2addr v12, v8

    mul-float v1, v11, v12

    .line 635
    const/high16 v11, 0x3f80

    sub-float/2addr v11, v8

    const/high16 v12, 0x3f00

    mul-float/2addr v11, v12

    add-float/2addr v11, v8

    mul-float/2addr v11, v1

    mul-float v12, v8, v8

    mul-float/2addr v12, v8

    add-float v2, v11, v12

    .line 636
    .local v2, dy:F
    sub-float v11, v2, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v11, v11

    const-wide v13, 0x3ee4f8b588e368f1L

    cmpg-double v11, v11, v13

    if-gez v11, :cond_2

    .line 640
    sget-object v11, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->SPLINE_TIME:[F

    const/high16 v12, 0x3f80

    sub-float/2addr v12, v8

    const v13, 0x3e333333

    mul-float/2addr v12, v13

    const v13, 0x3eb33334

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    mul-float/2addr v12, v1

    mul-float v13, v8, v8

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    aput v12, v11, v3

    .line 615
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 625
    .end local v2           #dy:F
    .end local v8           #y:F
    .end local v9           #y_max:F
    :cond_0
    cmpl-float v11, v4, v0

    if-lez v11, :cond_1

    move v6, v5

    goto/16 :goto_1

    .line 626
    :cond_1
    move v7, v5

    goto/16 :goto_1

    .line 637
    .restart local v2       #dy:F
    .restart local v8       #y:F
    .restart local v9       #y_max:F
    :cond_2
    cmpl-float v11, v2, v0

    if-lez v11, :cond_3

    move v9, v8

    goto :goto_2

    .line 638
    :cond_3
    move v10, v8

    goto :goto_2

    .line 642
    .end local v0           #alpha:F
    .end local v1           #coef:F
    .end local v2           #dy:F
    .end local v4           #tx:F
    .end local v5           #x:F
    .end local v6           #x_max:F
    .end local v8           #y:F
    .end local v9           #y_max:F
    :cond_4
    sget-object v11, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    const/16 v12, 0x64

    sget-object v13, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->SPLINE_TIME:[F

    const/16 v14, 0x64

    const/high16 v15, 0x3f80

    aput v15, v13, v14

    aput v15, v11, v12

    .line 643
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFlingFriction:F

    .line 589
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mState:I

    .line 658
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinished:Z

    .line 659
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinished:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 548
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinished:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 548
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 548
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mCurrVelocity:F

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 548
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStart:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 548
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinal:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 548
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mDuration:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 548
    iget-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 548
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mState:I

    return v0
.end method

.method private adjustDuration(III)V
    .locals 12
    .parameter "start"
    .parameter "oldFinal"
    .parameter "newFinal"

    .prologue
    const/high16 v11, 0x42c8

    .line 677
    sub-int v2, p2, p1

    .line 678
    .local v2, oldDistance:I
    sub-int v1, p3, p1

    .line 679
    .local v1, newDistance:I
    int-to-float v9, v1

    int-to-float v10, v2

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 680
    .local v6, x:F
    mul-float v9, v11, v6

    float-to-int v0, v9

    .line 681
    .local v0, index:I
    const/16 v9, 0x64

    if-ge v0, v9, :cond_0

    .line 682
    int-to-float v9, v0

    div-float v7, v9, v11

    .line 683
    .local v7, x_inf:F
    add-int/lit8 v9, v0, 0x1

    int-to-float v9, v9

    div-float v8, v9, v11

    .line 684
    .local v8, x_sup:F
    sget-object v9, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aget v3, v9, v0

    .line 685
    .local v3, t_inf:F
    sget-object v9, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->SPLINE_TIME:[F

    add-int/lit8 v10, v0, 0x1

    aget v4, v9, v10

    .line 686
    .local v4, t_sup:F
    sub-float v9, v6, v7

    sub-float v10, v8, v7

    div-float/2addr v9, v10

    sub-float v10, v4, v3

    mul-float/2addr v9, v10

    add-float v5, v3, v9

    .line 687
    .local v5, timeCoef:F
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mDuration:I

    int-to-float v9, v9

    mul-float/2addr v9, v5

    float-to-int v9, v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mDuration:I

    .line 689
    .end local v3           #t_inf:F
    .end local v4           #t_sup:F
    .end local v5           #timeCoef:F
    .end local v7           #x_inf:F
    .end local v8           #x_sup:F
    :cond_0
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .locals 8
    .parameter "start"
    .parameter "end"
    .parameter "velocity"

    .prologue
    .line 812
    neg-int v4, p3

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mDeceleration:F

    div-float v2, v4, v5

    .line 813
    .local v2, durationToApex:F
    mul-int v4, p3, p3

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float v0, v4, v5

    .line 814
    .local v0, distanceToApex:F
    sub-int v4, p2, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v1, v4

    .line 815
    .local v1, distanceToEdge:F
    const-wide/high16 v4, 0x4000

    add-float v6, v0, v1

    float-to-double v6, v6

    mul-double/2addr v4, v6

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 817
    .local v3, totalDuration:F
    iget-wide v4, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStartTime:J

    const/high16 v6, 0x447a

    sub-float v7, v3, v2

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStartTime:J

    .line 818
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStart:I

    .line 819
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mDeceleration:F

    neg-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mVelocity:I

    .line 820
    return-void
.end method

.method private static getDeceleration(I)F
    .locals 1
    .parameter "velocity"

    .prologue
    .line 669
    if-lez p0, :cond_0

    const/high16 v0, -0x3b06

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x44fa

    goto :goto_0
.end method

.method private getSplineDeceleration(I)D
    .locals 3
    .parameter "velocity"

    .prologue
    .line 794
    const v0, 0x3eb33333

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFlingFriction:F

    sget v2, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->PHYSICAL_COEF:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(I)D
    .locals 8
    .parameter "velocity"

    .prologue
    .line 798
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v2

    .line 799
    .local v2, l:D
    sget v4, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0

    sub-double v0, v4, v6

    .line 800
    .local v0, decelMinusOne:D
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFlingFriction:F

    sget v5, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->PHYSICAL_COEF:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v6, v6

    div-double/2addr v6, v0

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method private getSplineFlingDuration(I)I
    .locals 8
    .parameter "velocity"

    .prologue
    .line 805
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v2

    .line 806
    .local v2, l:D
    sget v4, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0

    sub-double v0, v4, v6

    .line 807
    .local v0, decelMinusOne:D
    const-wide v4, 0x408f400000000000L

    div-double v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    return v4
.end method

.method static initFromContext(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 646
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    .line 647
    .local v0, ppi:F
    const v1, 0x43c10b3d

    mul-float/2addr v1, v0

    const v2, 0x3f570a3d

    mul-float/2addr v1, v2

    sput v1, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->PHYSICAL_COEF:F

    .line 651
    return-void
.end method

.method private onEdgeReached()V
    .locals 5

    .prologue
    const/high16 v4, 0x4000

    .line 864
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mVelocity:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mVelocity:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v4

    div-float v0, v2, v3

    .line 865
    .local v0, distance:F
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 867
    .local v1, sign:F
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mOver:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 869
    neg-float v2, v1

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mOver:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mDeceleration:F

    .line 870
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mOver:I

    int-to-float v0, v2

    .line 873
    :cond_0
    float-to-int v2, v0

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mOver:I

    .line 874
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mState:I

    .line 875
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStart:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mVelocity:I

    if-lez v3, :cond_1

    .end local v0           #distance:F
    :goto_0
    float-to-int v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinal:I

    .line 876
    const/high16 v2, 0x447a

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v2, v2

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mDuration:I

    .line 877
    return-void

    .line 875
    .restart local v0       #distance:F
    :cond_1
    neg-float v0, v0

    goto :goto_0
.end method

.method private startAfterEdge(IIII)V
    .locals 13
    .parameter "start"
    .parameter "min"
    .parameter "max"
    .parameter "velocity"

    .prologue
    .line 829
    if-le p1, p2, :cond_0

    move/from16 v0, p3

    if-ge p1, v0, :cond_0

    .line 830
    const-string v1, "OverScroller"

    const-string v2, "startAfterEdge called from a valid position"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinished:Z

    .line 849
    :goto_0
    return-void

    .line 834
    :cond_0
    move/from16 v0, p3

    if-le p1, v0, :cond_1

    const/4 v10, 0x1

    .line 835
    .local v10, positive:Z
    :goto_1
    if-eqz v10, :cond_2

    move/from16 v7, p3

    .line 836
    .local v7, edge:I
    :goto_2
    sub-int v9, p1, v7

    .line 837
    .local v9, overDistance:I
    mul-int v1, v9, p4

    if-ltz v1, :cond_3

    const/4 v8, 0x1

    .line 838
    .local v8, keepIncreasing:Z
    :goto_3
    if-eqz v8, :cond_4

    .line 840
    move/from16 v0, p4

    invoke-direct {p0, p1, v7, v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->startBounceAfterEdge(III)V

    goto :goto_0

    .line 834
    .end local v7           #edge:I
    .end local v8           #keepIncreasing:Z
    .end local v9           #overDistance:I
    .end local v10           #positive:Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .restart local v10       #positive:Z
    :cond_2
    move v7, p2

    .line 835
    goto :goto_2

    .line 837
    .restart local v7       #edge:I
    .restart local v9       #overDistance:I
    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    .line 842
    .restart local v8       #keepIncreasing:Z
    :cond_4
    move/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v11

    .line 843
    .local v11, totalDistance:D
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v1, v1

    cmpl-double v1, v11, v1

    if-lez v1, :cond_7

    .line 844
    if-eqz v10, :cond_5

    move v4, p2

    :goto_4
    if-eqz v10, :cond_6

    move v5, p1

    :goto_5
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mOver:I

    move-object v1, p0

    move v2, p1

    move/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->fling(IIIII)V

    goto :goto_0

    :cond_5
    move v4, p1

    goto :goto_4

    :cond_6
    move/from16 v5, p3

    goto :goto_5

    .line 846
    :cond_7
    move/from16 v0, p4

    invoke-direct {p0, p1, v7, v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0
.end method

.method private startBounceAfterEdge(III)V
    .locals 1
    .parameter "start"
    .parameter "end"
    .parameter "velocity"

    .prologue
    .line 823
    if-nez p3, :cond_0

    sub-int v0, p1, p2

    :goto_0
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mDeceleration:F

    .line 824
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->fitOnBounceCurve(III)V

    .line 825
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->onEdgeReached()V

    .line 826
    return-void

    :cond_0
    move v0, p3

    .line 823
    goto :goto_0
.end method

.method private startSpringback(III)V
    .locals 7
    .parameter "start"
    .parameter "end"
    .parameter "velocity"

    .prologue
    .line 745
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinished:Z

    .line 746
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mState:I

    .line 747
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStart:I

    .line 748
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinal:I

    .line 749
    sub-int v0, p1, p2

    .line 750
    .local v0, delta:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mDeceleration:F

    .line 752
    neg-int v1, v0

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mVelocity:I

    .line 753
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mOver:I

    .line 754
    const-wide v1, 0x408f400000000000L

    const-wide/high16 v3, -0x4000

    int-to-double v5, v0

    mul-double/2addr v3, v5

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mDeceleration:F

    float-to-double v5, v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mDuration:I

    .line 755
    return-void
.end method


# virtual methods
.method continueWhenFinished()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 880
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 904
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->update()Z

    .line 905
    const/4 v0, 0x1

    :cond_0
    :pswitch_0
    return v0

    .line 883
    :pswitch_1
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mDuration:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mSplineDuration:I

    if-ge v1, v2, :cond_0

    .line 885
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStart:I

    .line 887
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mVelocity:I

    .line 888
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mDeceleration:F

    .line 889
    iget-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStartTime:J

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStartTime:J

    .line 890
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->onEdgeReached()V

    goto :goto_0

    .line 897
    :pswitch_2
    iget-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStartTime:J

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mDuration:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStartTime:J

    .line 898
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v1, v2, v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    .line 880
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method extendDuration(I)V
    .locals 5
    .parameter "extend"

    .prologue
    .line 719
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 720
    .local v1, time:J
    iget-wide v3, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStartTime:J

    sub-long v3, v1, v3

    long-to-int v0, v3

    .line 721
    .local v0, elapsedTime:I
    add-int v3, v0, p1

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mDuration:I

    .line 722
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinished:Z

    .line 723
    return-void
.end method

.method finish()V
    .locals 1

    .prologue
    .line 706
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 710
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinished:Z

    .line 711
    return-void
.end method

.method fling(IIIII)V
    .locals 5
    .parameter "start"
    .parameter "velocity"
    .parameter "min"
    .parameter "max"
    .parameter "over"

    .prologue
    const/4 v4, 0x0

    .line 758
    iput p5, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mOver:I

    .line 759
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinished:Z

    .line 760
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v2, p2

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 761
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mSplineDuration:I

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mDuration:I

    .line 762
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStartTime:J

    .line 763
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 765
    if-gt p1, p4, :cond_0

    if-ge p1, p3, :cond_2

    .line 766
    :cond_0
    invoke-direct {p0, p1, p3, p4, p2}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 791
    :cond_1
    :goto_0
    return-void

    .line 770
    :cond_2
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mState:I

    .line 771
    const-wide/16 v0, 0x0

    .line 773
    .local v0, totalDistance:D
    if-eqz p2, :cond_3

    .line 774
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mSplineDuration:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mDuration:I

    .line 775
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v0

    .line 778
    :cond_3
    int-to-float v2, p2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mSplineDistance:I

    .line 779
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mSplineDistance:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinal:I

    .line 782
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinal:I

    if-ge v2, p3, :cond_4

    .line 783
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStart:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinal:I

    invoke-direct {p0, v2, v3, p3}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 784
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinal:I

    .line 787
    :cond_4
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinal:I

    if-le v2, p4, :cond_1

    .line 788
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStart:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinal:I

    invoke-direct {p0, v2, v3, p4}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 789
    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinal:I

    goto :goto_0
.end method

.method notifyEdgeReached(III)V
    .locals 2
    .parameter "start"
    .parameter "end"
    .parameter "over"

    .prologue
    .line 853
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mState:I

    if-nez v0, :cond_0

    .line 854
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mOver:I

    .line 855
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStartTime:J

    .line 858
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    invoke-direct {p0, p1, p2, p2, v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 860
    :cond_0
    return-void
.end method

.method setFinalPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 714
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinal:I

    .line 715
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinished:Z

    .line 716
    return-void
.end method

.method setFriction(F)V
    .locals 0
    .parameter "friction"

    .prologue
    .line 654
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFlingFriction:F

    .line 655
    return-void
.end method

.method springback(III)Z
    .locals 4
    .parameter "start"
    .parameter "min"
    .parameter "max"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 726
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinished:Z

    .line 728
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinal:I

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStart:I

    .line 729
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mVelocity:I

    .line 731
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStartTime:J

    .line 732
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mDuration:I

    .line 734
    if-ge p1, p2, :cond_1

    .line 735
    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->startSpringback(III)V

    .line 740
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinished:Z

    if-nez v2, :cond_2

    :goto_1
    return v0

    .line 736
    :cond_1
    if-le p1, p3, :cond_0

    .line 737
    invoke-direct {p0, p1, p3, v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 740
    goto :goto_1
.end method

.method startScroll(III)V
    .locals 3
    .parameter "start"
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 692
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinished:Z

    .line 694
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStart:I

    .line 695
    add-int v0, p1, p2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinal:I

    .line 697
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStartTime:J

    .line 698
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mDuration:I

    .line 701
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mDeceleration:F

    .line 702
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mVelocity:I

    .line 703
    return-void
.end method

.method update()Z
    .locals 21

    .prologue
    .line 914
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v15

    .line 915
    .local v15, time:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStartTime:J

    move-wide/from16 v18, v0

    sub-long v2, v15, v18

    .line 917
    .local v2, currentTime:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mDuration:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v18, v2, v18

    if-lez v18, :cond_0

    .line 918
    const/16 v18, 0x0

    .line 961
    :goto_0
    return v18

    .line 921
    :cond_0
    const-wide/16 v6, 0x0

    .line 922
    .local v6, distance:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mState:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 959
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStart:I

    move/from16 v18, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 961
    const/16 v18, 0x1

    goto :goto_0

    .line 924
    :pswitch_0
    long-to-float v0, v2

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mSplineDuration:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v11, v18, v19

    .line 925
    .local v11, t:F
    const/high16 v18, 0x42c8

    mul-float v18, v18, v11

    move/from16 v0, v18

    float-to-int v9, v0

    .line 926
    .local v9, index:I
    const/high16 v8, 0x3f80

    .line 927
    .local v8, distanceCoef:F
    const/16 v17, 0x0

    .line 928
    .local v17, velocityCoef:F
    const/16 v18, 0x64

    move/from16 v0, v18

    if-ge v9, v0, :cond_1

    .line 929
    int-to-float v0, v9

    move/from16 v18, v0

    const/high16 v19, 0x42c8

    div-float v13, v18, v19

    .line 930
    .local v13, t_inf:F
    add-int/lit8 v18, v9, 0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x42c8

    div-float v14, v18, v19

    .line 931
    .local v14, t_sup:F
    sget-object v18, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v4, v18, v9

    .line 932
    .local v4, d_inf:F
    sget-object v18, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    add-int/lit8 v19, v9, 0x1

    aget v5, v18, v19

    .line 933
    .local v5, d_sup:F
    sub-float v18, v5, v4

    sub-float v19, v14, v13

    div-float v17, v18, v19

    .line 934
    sub-float v18, v11, v13

    mul-float v18, v18, v17

    add-float v8, v4, v18

    .line 937
    .end local v4           #d_inf:F
    .end local v5           #d_sup:F
    .end local v13           #t_inf:F
    .end local v14           #t_sup:F
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mSplineDistance:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v8

    move/from16 v0, v18

    float-to-double v6, v0

    .line 938
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mSplineDistance:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mSplineDuration:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x447a

    mul-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mCurrVelocity:F

    goto/16 :goto_1

    .line 943
    .end local v8           #distanceCoef:F
    .end local v9           #index:I
    .end local v11           #t:F
    .end local v17           #velocityCoef:F
    :pswitch_1
    long-to-float v0, v2

    move/from16 v18, v0

    const/high16 v19, 0x447a

    div-float v11, v18, v19

    .line 944
    .restart local v11       #t:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mDeceleration:F

    move/from16 v19, v0

    mul-float v19, v19, v11

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 945
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mDeceleration:F

    move/from16 v19, v0

    mul-float v19, v19, v11

    mul-float v19, v19, v11

    const/high16 v20, 0x4000

    div-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v6, v0

    .line 946
    goto/16 :goto_1

    .line 950
    .end local v11           #t:F
    :pswitch_2
    long-to-float v0, v2

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mDuration:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v11, v18, v19

    .line 951
    .restart local v11       #t:F
    mul-float v12, v11, v11

    .line 952
    .local v12, t2:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->signum(F)F

    move-result v10

    .line 953
    .local v10, sign:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mOver:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v10

    const/high16 v19, 0x4040

    mul-float v19, v19, v12

    const/high16 v20, 0x4000

    mul-float v20, v20, v11

    mul-float v20, v20, v12

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v6, v0

    .line 954
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mOver:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v10

    const/high16 v19, 0x40c0

    mul-float v18, v18, v19

    neg-float v0, v11

    move/from16 v19, v0

    add-float v19, v19, v12

    mul-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mCurrVelocity:F

    goto/16 :goto_1

    .line 922
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method updateScroll(F)V
    .locals 3
    .parameter "q"

    .prologue
    .line 662
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStart:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 663
    return-void
.end method
