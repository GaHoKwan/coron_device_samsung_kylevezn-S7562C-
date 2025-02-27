.class public Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;
.super Lcom/sec/android/glview/TwGLAniViewGroup;
.source "TwGLPostViewBlink.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "TwGLPostViewBlink"


# instance fields
.field private final ANIMATION_DURATION:I

.field private final LINE_ALPHA:I

.field private final LINE_THICK:I

.field mRect:Lcom/sec/android/glview/TwGLViewGroup;

.field mRectangleBottom:Lcom/sec/android/glview/TwGLFillRectangle;

.field mRectangleLeft:Lcom/sec/android/glview/TwGLFillRectangle;

.field mRectangleRight:Lcom/sec/android/glview/TwGLFillRectangle;

.field mRectangleTop:Lcom/sec/android/glview/TwGLFillRectangle;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFFF)V
    .locals 15
    .parameter "activityContext"
    .parameter "previewLeft"
    .parameter "previewTop"
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLAniViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 35
    const v5, 0x7f080013

    invoke-static {v5}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->LINE_THICK:I

    .line 36
    const/16 v5, 0xff

    iput v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->LINE_ALPHA:I

    .line 37
    const v5, 0x7f080014

    invoke-static {v5}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->ANIMATION_DURATION:I

    .line 49
    move/from16 v0, p4

    float-to-int v14, v0

    .line 50
    .local v14, width:I
    move/from16 v0, p5

    float-to-int v13, v0

    .line 52
    .local v13, height:I
    new-instance v1, Lcom/sec/android/glview/TwGLFillRectangle;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->LINE_THICK:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->LINE_THICK:I

    sub-int v6, v13, v6

    int-to-float v6, v6

    const/16 v7, 0xff

    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v10, 0xff

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLFillRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleLeft:Lcom/sec/android/glview/TwGLFillRectangle;

    .line 53
    new-instance v1, Lcom/sec/android/glview/TwGLFillRectangle;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->LINE_THICK:I

    int-to-float v3, v5

    const/4 v4, 0x0

    int-to-float v5, v14

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->LINE_THICK:I

    int-to-float v6, v6

    const/16 v7, 0xff

    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v10, 0xff

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLFillRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleTop:Lcom/sec/android/glview/TwGLFillRectangle;

    .line 54
    new-instance v1, Lcom/sec/android/glview/TwGLFillRectangle;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->LINE_THICK:I

    sub-int v5, v14, v5

    int-to-float v3, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->LINE_THICK:I

    int-to-float v4, v5

    int-to-float v5, v14

    int-to-float v6, v13

    const/16 v7, 0xff

    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v10, 0xff

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLFillRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleRight:Lcom/sec/android/glview/TwGLFillRectangle;

    .line 55
    new-instance v1, Lcom/sec/android/glview/TwGLFillRectangle;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->LINE_THICK:I

    sub-int v5, v13, v5

    int-to-float v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->LINE_THICK:I

    sub-int v5, v14, v5

    int-to-float v5, v5

    int-to-float v6, v13

    const/16 v7, 0xff

    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v10, 0xff

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLFillRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleBottom:Lcom/sec/android/glview/TwGLFillRectangle;

    .line 57
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRect:Lcom/sec/android/glview/TwGLViewGroup;

    .line 58
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRect:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleLeft:Lcom/sec/android/glview/TwGLFillRectangle;

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 59
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRect:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleTop:Lcom/sec/android/glview/TwGLFillRectangle;

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 60
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRect:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleRight:Lcom/sec/android/glview/TwGLFillRectangle;

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 61
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRect:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleBottom:Lcom/sec/android/glview/TwGLFillRectangle;

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 62
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRect:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    .line 64
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f80

    const/high16 v3, 0x4000

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v8, 0x0

    move/from16 v7, p2

    move/from16 v9, p3

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 65
    .local v1, Left:Landroid/view/animation/ScaleAnimation;
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x4000

    const/4 v7, 0x0

    const/4 v9, 0x0

    move/from16 v8, p2

    move/from16 v10, p3

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 66
    .local v2, Top:Landroid/view/animation/ScaleAnimation;
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x4000

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    add-float v9, p2, p4

    const/4 v10, 0x0

    move/from16 v11, p3

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 67
    .local v3, Right:Landroid/view/animation/ScaleAnimation;
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const/high16 v8, 0x4000

    const/4 v9, 0x0

    const/4 v11, 0x0

    add-float v12, p5, p3

    move/from16 v10, p2

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 69
    .local v4, Bottom:Landroid/view/animation/ScaleAnimation;
    move/from16 v0, p4

    float-to-int v5, v0

    move/from16 v0, p5

    float-to-int v6, v0

    invoke-virtual {v1, v5, v6, v14, v13}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    .line 70
    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->ANIMATION_DURATION:I

    int-to-long v5, v5

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 71
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 72
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 74
    move/from16 v0, p4

    float-to-int v5, v0

    move/from16 v0, p5

    float-to-int v6, v0

    invoke-virtual {v2, v5, v6, v14, v13}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    .line 75
    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->ANIMATION_DURATION:I

    int-to-long v5, v5

    invoke-virtual {v2, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 76
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 77
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 79
    move/from16 v0, p4

    float-to-int v5, v0

    move/from16 v0, p5

    float-to-int v6, v0

    invoke-virtual {v3, v5, v6, v14, v13}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    .line 80
    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->ANIMATION_DURATION:I

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 81
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 82
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 84
    move/from16 v0, p4

    float-to-int v5, v0

    move/from16 v0, p5

    float-to-int v6, v0

    invoke-virtual {v4, v5, v6, v14, v13}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    .line 85
    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->ANIMATION_DURATION:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 86
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 87
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 89
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleLeft:Lcom/sec/android/glview/TwGLFillRectangle;

    invoke-virtual {v5, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 90
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleTop:Lcom/sec/android/glview/TwGLFillRectangle;

    invoke-virtual {v5, v2}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 91
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleRight:Lcom/sec/android/glview/TwGLFillRectangle;

    invoke-virtual {v5, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 92
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleBottom:Lcom/sec/android/glview/TwGLFillRectangle;

    invoke-virtual {v5, v4}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 94
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRect:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 95
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRect:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v5}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLAniViewGroup;->playAnimation(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLAniViewGroup;->playAnimation(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLAniViewGroup;->playAnimation(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLAniViewGroup;->playAnimation(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-object v0
.end method


# virtual methods
.method protected setAnimationStep(I)V
    .locals 3
    .parameter "step"

    .prologue
    const/4 v2, 0x2

    .line 100
    packed-switch p1, :pswitch_data_0

    .line 179
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 106
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleLeft:Lcom/sec/android/glview/TwGLFillRectangle;

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleLeft:Lcom/sec/android/glview/TwGLFillRectangle;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 119
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    invoke-interface {v0, v2}, Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;->onProgress(I)V

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleLeft:Lcom/sec/android/glview/TwGLFillRectangle;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleTop:Lcom/sec/android/glview/TwGLFillRectangle;

    if-eqz v0, :cond_4

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleTop:Lcom/sec/android/glview/TwGLFillRectangle;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 136
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    if-eqz v0, :cond_3

    .line 137
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    invoke-interface {v0, v2}, Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;->onProgress(I)V

    .line 138
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleTop:Lcom/sec/android/glview/TwGLFillRectangle;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 141
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleRight:Lcom/sec/android/glview/TwGLFillRectangle;

    if-eqz v0, :cond_6

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleRight:Lcom/sec/android/glview/TwGLFillRectangle;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink$3;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 154
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    if-eqz v0, :cond_5

    .line 155
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    invoke-interface {v0, v2}, Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;->onProgress(I)V

    .line 156
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleRight:Lcom/sec/android/glview/TwGLFillRectangle;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 159
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleBottom:Lcom/sec/android/glview/TwGLFillRectangle;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleBottom:Lcom/sec/android/glview/TwGLFillRectangle;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink$4;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    if-eqz v0, :cond_7

    .line 172
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    invoke-interface {v0, v2}, Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;->onProgress(I)V

    .line 173
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->mRectangleBottom:Lcom/sec/android/glview/TwGLFillRectangle;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
