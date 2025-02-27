.class public Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;
.super Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
.source "TwGLEditableShortcutMenuDragDropBox.java"


# instance fields
.field private mEditMenu:Lcom/sec/android/glview/TwGLView;

.field private mNext:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

.field private mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

.field private mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

.field private mRelocating:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;FFLcom/sec/android/glview/TwGLView;Lcom/sec/android/glview/TwGLView$OnTouchListener;)V
    .locals 1
    .parameter "glContext"
    .parameter "previous"
    .parameter "left"
    .parameter "top"
    .parameter "editMenu"
    .parameter "onTouchListener"

    .prologue
    .line 39
    invoke-direct {p0, p1, p3, p4}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->mRelocating:Z

    .line 41
    iput-object p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 42
    iput-object p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    .line 43
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->setNext(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;)V

    .line 46
    :cond_0
    iput-object p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->mEditMenu:Lcom/sec/android/glview/TwGLView;

    .line 47
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->mRelocating:Z

    return p1
.end method

.method private relocateItem(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;Lcom/sec/android/glview/TwGLView;)V
    .locals 8
    .parameter "fromDragDropBox"
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 112
    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    if-nez v3, :cond_0

    .line 113
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 114
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setDroppability(Z)V

    .line 151
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->getLayoutX()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->getLayoutX()F

    move-result v4

    sub-float v1, v3, v4

    .line 119
    .local v1, fromX:F
    invoke-virtual {p1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->getLayoutY()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->getLayoutY()F

    move-result v4

    sub-float v2, v3, v4

    .line 120
    .local v2, fromY:F
    invoke-virtual {p2}, Lcom/sec/android/glview/TwGLView;->isAnimationFinished()Z

    move-result v3

    if-nez v3, :cond_1

    .line 121
    invoke-virtual {p1, v7}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setDroppability(Z)V

    .line 123
    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v5, v2, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 124
    .local v0, anim:Landroid/view/animation/Animation;
    invoke-virtual {p2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 125
    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 126
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 127
    invoke-virtual {p2, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 128
    invoke-virtual {p2}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 129
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 131
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->mEditMenu:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/sec/android/glview/TwGLView;->setClipRect(Landroid/graphics/Rect;)V

    .line 132
    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->mRelocating:Z

    .line 133
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setDroppability(Z)V

    .line 135
    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;)V

    invoke-virtual {p2, v3}, Lcom/sec/android/glview/TwGLView;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    goto :goto_0
.end method

.method private setNext(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;)V
    .locals 0
    .parameter "next"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    .line 85
    return-void
.end method


# virtual methods
.method public addToFirst(Lcom/sec/android/glview/TwGLView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->addToFirst(Lcom/sec/android/glview/TwGLView;)V

    .line 69
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->shiftRight()Z

    .line 67
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0
.end method

.method public addToLast(Lcom/sec/android/glview/TwGLView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 60
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->addToLast(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->shiftLeft()Z

    .line 57
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0
.end method

.method public addView(Lcom/sec/android/glview/TwGLView;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 240
    instance-of v0, p1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 241
    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setContentType(I)V

    move-object v0, p1

    .line 242
    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setZOrder(I)V

    .line 243
    invoke-virtual {p1, p0}, Lcom/sec/android/glview/TwGLView;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 245
    const/high16 v0, 0x3f80

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    move-object v0, p1

    .line 246
    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_2

    .line 247
    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLView;->setDraggable(Z)V

    .line 252
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 253
    invoke-virtual {p1, v2}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 254
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->resetSize()V

    .line 255
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    instance-of v0, v0, Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    check-cast v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->resetSize()V

    .line 258
    :cond_1
    return-void

    .line 249
    :cond_2
    invoke-virtual {p0, v3}, Lcom/sec/android/glview/TwGLView;->setDraggable(Z)V

    goto :goto_0
.end method

.method protected cancelDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 201
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->addToLast(Lcom/sec/android/glview/TwGLView;)V

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    .line 205
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    .line 214
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setDroppability(Z)V

    .line 215
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    .line 212
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    goto :goto_0
.end method

.method public getLayoutX()F
    .locals 2

    .prologue
    .line 191
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->getLayoutX()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getLayoutX()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getLayoutY()F
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->getLayoutY()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getLayoutY()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getNext()Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    return-object v0
.end method

.method public getPrevious()Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    return-object v0
.end method

.method public moveEmptyToLast()V
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->shiftLeft()Z

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->moveEmptyToLast()V

    .line 81
    :cond_1
    return-void
.end method

.method protected onDrop(Lcom/sec/android/glview/TwGLView;Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;)V
    .locals 2
    .parameter "view"
    .parameter "fromDropBox"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->onDrop(Lcom/sec/android/glview/TwGLView;Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;)V

    .line 109
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 102
    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_1

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setDraggable(Z)V

    .line 108
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->onDrop(Lcom/sec/android/glview/TwGLView;Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;)V

    goto :goto_0

    .line 105
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setDraggable(Z)V

    goto :goto_1
.end method

.method public onTouchOver(Lcom/sec/android/glview/TwGLView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 219
    if-nez p1, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->mRelocating:Z

    if-nez v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->shiftLeft()Z

    move-result v0

    if-nez v0, :cond_2

    .line 232
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->shiftRight()Z

    .line 235
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setEmpty()V

    goto :goto_0
.end method

.method public shiftLeft()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 154
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 168
    :goto_0
    return v0

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->shiftLeft()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 163
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->relocateItem(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;Lcom/sec/android/glview/TwGLView;)V

    .line 164
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setEmpty()V

    goto :goto_0

    .line 168
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shiftRight()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 172
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 186
    :goto_0
    return v0

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->shiftRight()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 181
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->relocateItem(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;Lcom/sec/android/glview/TwGLView;)V

    .line 182
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setEmpty()V

    goto :goto_0

    .line 186
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
