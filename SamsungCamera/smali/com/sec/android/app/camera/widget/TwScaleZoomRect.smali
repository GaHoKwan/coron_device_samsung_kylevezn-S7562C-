.class public Lcom/sec/android/app/camera/widget/TwScaleZoomRect;
.super Landroid/view/View;
.source "TwScaleZoomRect.java"


# static fields
.field public static final MAX_ZOOM_LEVEL:I

.field public static final MAX_ZOOM_RATIO:I

.field public static final MIN_ZOOM_RATIO:I

.field private static final ZOOM_RECT_POS_X_DELTA:I

.field public static final ZOOM_STEP:F


# instance fields
.field protected mGLContext:Lcom/sec/android/glview/TwGLContext;

.field private mLastOrientation:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mRect:Landroid/graphics/RectF;

.field private zoomValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const v0, 0x7f07026c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MAX_ZOOM_RATIO:I

    .line 38
    const v0, 0x7f07026d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MIN_ZOOM_RATIO:I

    .line 39
    const v0, 0x7f07026e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MAX_ZOOM_LEVEL:I

    .line 40
    sget v0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MAX_ZOOM_RATIO:I

    sget v1, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MIN_ZOOM_RATIO:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MAX_ZOOM_LEVEL:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->ZOOM_STEP:F

    .line 41
    const v0, 0x7f0700bf

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->ZOOM_RECT_POS_X_DELTA:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLastOrientation:I

    .line 50
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->init()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/glview/TwGLContext;)V
    .locals 1
    .parameter "context"
    .parameter "glcontext"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLastOrientation:I

    .line 55
    iput-object p2, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    .line 56
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->init()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/TwScaleZoomRect;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->roundOrientation(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/TwScaleZoomRect;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLastOrientation:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/widget/TwScaleZoomRect;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLastOrientation:I

    return p1
.end method

.method private roundOrientation(I)I
    .locals 3
    .parameter "orientationInput"

    .prologue
    .line 166
    move v0, p1

    .line 167
    .local v0, orientation:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 170
    :cond_0
    rem-int/lit16 v0, v0, 0x168

    .line 172
    const/16 v2, 0x2d

    if-ge v0, v2, :cond_1

    .line 173
    const/4 v1, 0x0

    .line 183
    .local v1, retVal:I
    :goto_0
    return v1

    .line 174
    .end local v1           #retVal:I
    :cond_1
    const/16 v2, 0x87

    if-ge v0, v2, :cond_2

    .line 175
    const/16 v1, 0x5a

    .restart local v1       #retVal:I
    goto :goto_0

    .line 176
    .end local v1           #retVal:I
    :cond_2
    const/16 v2, 0xe1

    if-ge v0, v2, :cond_3

    .line 177
    const/16 v1, 0xb4

    .restart local v1       #retVal:I
    goto :goto_0

    .line 178
    .end local v1           #retVal:I
    :cond_3
    const/16 v2, 0x13b

    if-ge v0, v2, :cond_4

    .line 179
    const/16 v1, 0x10e

    .restart local v1       #retVal:I
    goto :goto_0

    .line 181
    .end local v1           #retVal:I
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #retVal:I
    goto :goto_0
.end method

.method private setOrientationListener()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect$1;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect$1;-><init>(Lcom/sec/android/app/camera/widget/TwScaleZoomRect;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 163
    return-void
.end method


# virtual methods
.method init()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    const v1, 0x7f070268

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    const v1, 0x7f070269

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 66
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setOrientationListener()V

    .line 67
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/high16 v12, 0x4000

    const/high16 v13, 0x3f80

    .line 78
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 80
    const/4 v5, 0x0

    .line 81
    .local v5, tempWidth:F
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v1, v9

    .line 82
    .local v1, hcenter:F
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v8, v9

    .line 88
    .local v8, wcenter:F
    const v9, 0x7f070268

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    div-int/lit8 v3, v9, 0x2

    .line 89
    .local v3, offset:I
    const v9, 0x7f07026f

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    .line 90
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v9, :cond_0

    .line 91
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLContext;->getScreenWScale()F

    move-result v9

    mul-float/2addr v5, v9

    .line 94
    :cond_0
    const v9, 0x7f07026a

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    .line 96
    .local v6, textUpperMargin:F
    iget v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v9, v10

    add-float/2addr v9, v13

    mul-float/2addr v9, v5

    sub-float v2, v8, v9

    .line 97
    .local v2, left:F
    iget v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v9, v10

    add-float/2addr v9, v13

    mul-float/2addr v9, v5

    sub-float v7, v1, v9

    .line 98
    .local v7, top:F
    iget v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v9, v10

    add-float/2addr v9, v13

    mul-float/2addr v9, v5

    add-float v4, v8, v9

    .line 99
    .local v4, right:F
    iget v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v9, v10

    add-float/2addr v9, v13

    mul-float/2addr v9, v5

    add-float v0, v1, v9

    .line 101
    .local v0, bottom:F
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v2, v7, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mRect:Landroid/graphics/RectF;

    .line 103
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mRect:Landroid/graphics/RectF;

    int-to-float v10, v3

    int-to-float v11, v3

    invoke-virtual {v9, v10, v11}, Landroid/graphics/RectF;->inset(FF)V

    .line 105
    iget v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLastOrientation:I

    rsub-int v9, v9, 0x168

    int-to-float v9, v9

    add-float v10, v2, v4

    div-float/2addr v10, v12

    add-float v11, v7, v0

    div-float/2addr v11, v12

    invoke-virtual {p1, v9, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 107
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 109
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mRect:Landroid/graphics/RectF;

    iget-object v10, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 114
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 118
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    int-to-float v10, v10

    sget v11, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v10, v11

    add-float/2addr v10, v13

    invoke-static {v10}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    add-float v10, v1, v6

    iget v11, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    int-to-float v11, v11

    sget v12, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v11, v12

    add-float/2addr v11, v13

    mul-float/2addr v11, v5

    add-float/2addr v10, v11

    iget-object v11, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v4, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 121
    return-void
.end method

.method public setLastOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->roundOrientation(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5a

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLastOrientation:I

    .line 75
    return-void
.end method

.method public setZoomValue(I)V
    .locals 0
    .parameter "currentzoomValue"

    .prologue
    .line 124
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    .line 125
    return-void
.end method
