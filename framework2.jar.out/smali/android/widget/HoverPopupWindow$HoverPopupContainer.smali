.class public Landroid/widget/HoverPopupWindow$HoverPopupContainer;
.super Landroid/widget/FrameLayout;
.source "HoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/HoverPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HoverPopupContainer"
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final TAG:Ljava/lang/String; = "HoverPopupContainer"


# instance fields
.field private mChildImageFadeHeight:I

.field private mIsRingEnabled:Z

.field private mLineEndX:I

.field private mLineEndY:I

.field private mLineOverlappedHeight:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineStartX:I

.field private mLineStartY:I

.field private mLineThickness:I

.field private mOldLineEndX:I

.field private mOldLineEndY:I

.field private mRingDrawable:Landroid/graphics/drawable/Drawable;

.field private mRingHeight:I

.field private mRingWidth:I

.field final synthetic this$0:Landroid/widget/HoverPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 1513
    iput-object p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    .line 1514
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1495
    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOldLineEndX:I

    .line 1497
    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOldLineEndY:I

    .line 1501
    iput v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineOverlappedHeight:I

    .line 1503
    iput v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineThickness:I

    .line 1505
    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsRingEnabled:Z

    .line 1515
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 1568
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1576
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1602
    :cond_0
    :goto_0
    return-void

    .line 1580
    :cond_1
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 1581
    const v0, 0x10802c9

    const v1, -0x866e57

    invoke-virtual {p0, v0, v1}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(II)V

    .line 1585
    :cond_2
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsRingEnabled:Z

    if-eqz v0, :cond_4

    .line 1586
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1587
    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndX:I

    iget v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    iget v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1588
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1589
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1591
    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartY:I

    iget v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    if-ge v0, v1, :cond_3

    .line 1592
    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartX:I

    int-to-float v1, v0

    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartY:I

    iget v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineOverlappedHeight:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndX:I

    int-to-float v3, v0

    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    iget v4, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    iget v4, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineOverlappedHeight:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1594
    :cond_3
    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartY:I

    iget v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    if-le v0, v1, :cond_0

    .line 1595
    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartX:I

    int-to-float v1, v0

    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartY:I

    iget v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineOverlappedHeight:I

    add-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndX:I

    int-to-float v3, v0

    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    iget v4, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    iget v4, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineOverlappedHeight:I

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1600
    :cond_4
    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartX:I

    int-to-float v1, v0

    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartY:I

    int-to-float v2, v0

    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndX:I

    int-to-float v3, v0

    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    int-to-float v4, v0

    iget-object v5, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected pointInValidPaddingArea(II)Z
    .locals 3
    .parameter "localX"
    .parameter "localY"

    .prologue
    .line 1605
    const/4 v0, 0x0

    .line 1607
    .local v0, ret:Z
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 1608
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    if-gt p2, v1, :cond_0

    .line 1609
    const/4 v0, 0x1

    .line 1619
    :cond_0
    :goto_0
    return v0

    .line 1611
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1612
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt p2, v1, :cond_0

    .line 1613
    const/4 v0, 0x1

    goto :goto_0

    .line 1616
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChildImageFadeHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 1563
    iput p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mChildImageFadeHeight:I

    .line 1564
    return-void
.end method

.method public setGuideLine(II)V
    .locals 4
    .parameter "drawableId"
    .parameter "lineColor"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1520
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineOverlappedHeight:I

    .line 1521
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    const/high16 v1, 0x3fc0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineThickness:I

    .line 1523
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 1524
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingWidth:I

    .line 1525
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingHeight:I

    .line 1526
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingWidth:I

    iget v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1528
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    .line 1529
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineThickness:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1530
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1531
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1532
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1533
    return-void
.end method

.method public setGuideLine(IIIIZ)V
    .locals 0
    .parameter "startX"
    .parameter "startY"
    .parameter "endX"
    .parameter "endY"
    .parameter "ringEnabled"

    .prologue
    .line 1550
    iput p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartX:I

    .line 1551
    iput p2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartY:I

    .line 1552
    iput p3, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndX:I

    .line 1553
    iput p4, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    .line 1554
    iput-boolean p5, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsRingEnabled:Z

    .line 1555
    return-void
.end method

.method public setGuideLineEndPoint(II)V
    .locals 0
    .parameter "pointX"
    .parameter "pointY"

    .prologue
    .line 1558
    iput p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndX:I

    .line 1559
    iput p2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    .line 1560
    return-void
.end method

.method public updateDecoration()V
    .locals 0

    .prologue
    .line 1538
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1546
    return-void
.end method
