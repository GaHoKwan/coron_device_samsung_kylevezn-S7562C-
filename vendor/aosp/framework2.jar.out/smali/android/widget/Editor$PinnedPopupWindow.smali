.class abstract Landroid/widget/Editor$PinnedPopupWindow;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PinnedPopupWindow"
.end annotation


# instance fields
.field protected mContentView:Landroid/view/ViewGroup;

.field protected mPopupWindow:Landroid/widget/PopupWindow;

.field mPositionX:I

.field mPositionY:I

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x2

    .line 2498
    iput-object p1, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2499
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->createPopupWindow()V

    .line 2501
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 2502
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 2503
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 2505
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->initContentView()V

    .line 2507
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2509
    .local v0, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2511
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 2512
    return-void
.end method

.method private computeLocalPosition()V
    .locals 6

    .prologue
    .line 2537
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->measureContent()V

    .line 2538
    iget-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 2539
    .local v2, width:I
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->getTextOffset()I

    move-result v1

    .line 2540
    .local v1, offset:I
    iget-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    int-to-float v4, v2

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionX:I

    .line 2541
    iget v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionX:I

    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionX:I

    .line 2543
    iget-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 2544
    .local v0, line:I
    invoke-virtual {p0, v0}, Landroid/widget/Editor$PinnedPopupWindow;->getVerticalLocalPosition(I)I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    .line 2545
    iget v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    .line 2546
    return-void
.end method

.method private updatePosition(II)V
    .locals 7
    .parameter "parentPositionX"
    .parameter "parentPositionY"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 2549
    iget v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionX:I

    add-int v1, p1, v4

    .line 2550
    .local v1, positionX:I
    iget v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    add-int v2, p2, v4

    .line 2552
    .local v2, positionY:I
    invoke-virtual {p0, v2}, Landroid/widget/Editor$PinnedPopupWindow;->clipVertically(I)I

    move-result v2

    .line 2555
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2556
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 2557
    .local v3, width:I
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v4, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2558
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2560
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2561
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v1, v2, v5, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 2566
    :goto_0
    return-void

    .line 2563
    :cond_0
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v4, v5, v6, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract clipVertically(I)I
.end method

.method protected abstract createPopupWindow()V
.end method

.method protected abstract getTextOffset()I
.end method

.method protected abstract getVerticalLocalPosition(I)I
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 2569
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2570
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 2571
    return-void
.end method

.method protected abstract initContentView()V
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 2586
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected measureContent()V
    .locals 5

    .prologue
    const/high16 v4, -0x8000

    .line 2524
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2525
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 2530
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 2515
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 2517
    invoke-direct {p0}, Landroid/widget/Editor$PinnedPopupWindow;->computeLocalPosition()V

    .line 2519
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    .line 2520
    .local v0, positionListener:Landroid/widget/Editor$PositionListener;
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/Editor$PinnedPopupWindow;->updatePosition(II)V

    .line 2521
    return-void
.end method

.method public updatePosition(IIZZ)V
    .locals 2
    .parameter "parentPositionX"
    .parameter "parentPositionY"
    .parameter "parentPositionChanged"
    .parameter "parentScrolled"

    .prologue
    .line 2577
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->getTextOffset()I

    move-result v1

    #calls: Landroid/widget/Editor;->isOffsetVisible(I)Z
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$1100(Landroid/widget/Editor;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2578
    if-eqz p4, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor$PinnedPopupWindow;->computeLocalPosition()V

    .line 2579
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$PinnedPopupWindow;->updatePosition(II)V

    .line 2583
    :goto_0
    return-void

    .line 2581
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->hide()V

    goto :goto_0
.end method
