.class public abstract Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;
.super Lcom/sec/android/touchwiz/widget/TwGridView;
.source "TwAnimatedGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimationListener;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;
    }
.end annotation


# instance fields
.field private mCurIds:[J

.field protected mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

.field private mPrevIds:[J

.field private mTransformation:Landroid/view/animation/Transformation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mPrevIds:[J

    .line 35
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mCurIds:[J

    .line 40
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;-><init>(Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    .line 42
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mTransformation:Landroid/view/animation/Transformation;

    .line 54
    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 6
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 60
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 61
    .local v1, index:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v5

    add-int v2, v1, v5

    .line 63
    .local v2, pos:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    invoke-virtual {v5, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;

    move-result-object v0

    .line 64
    .local v0, ia:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;
    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;->getType()I

    move-result v5

    if-nez v5, :cond_0

    .line 67
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;->getTransformation(Landroid/view/animation/Transformation;)V

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 69
    .local v4, save:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    .line 71
    .local v3, retVal:Z
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->onDrawChildForHandle(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 72
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 82
    .end local v3           #retVal:Z
    .end local v4           #save:I
    :goto_0
    return v3

    .line 75
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 76
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->onDrawChildForHandle(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 77
    const/4 v3, 0x0

    goto :goto_0

    .line 80
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    .line 81
    .restart local v3       #retVal:Z
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->onDrawChildForHandle(Landroid/graphics/Canvas;Landroid/view/View;J)V

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 22

    .prologue
    .line 90
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 91
    .local v8, dataChanged:Z
    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->layoutChildren()V

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mCurIds:[J

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mPrevIds:[J

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 97
    if-nez v8, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mCurIds:[J

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 98
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    .line 99
    .local v9, dataCount:I
    new-array v0, v9, [J

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mCurIds:[J

    .line 101
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v9, :cond_1

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mCurIds:[J

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v18

    aput-wide v18, v17, v12

    .line 101
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 106
    .end local v9           #dataCount:I
    .end local v12           #i:I
    :cond_1
    if-eqz v8, :cond_7

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mPrevIds:[J

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 109
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 110
    .local v6, HORIZONTAL_TRANSLATE_DISTANCE:I
    const/4 v4, 0x5

    .line 112
    .local v4, FIND_WINDOW_MARGIN:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFirstVisiblePosition()I

    move-result v10

    .line 113
    .local v10, first:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 114
    .local v7, childCount:I
    move v12, v10

    .restart local v12       #i:I
    :goto_1
    add-int v17, v10, v7

    move/from16 v0, v17

    if-ge v12, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mCurIds:[J

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v12, v0, :cond_6

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v17

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 114
    :cond_2
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 118
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mCurIds:[J

    move-object/from16 v17, v0

    aget-wide v15, v17, v12

    .line 119
    .local v15, targetId:J
    const/4 v11, 0x0

    .line 120
    .local v11, found:Z
    const/16 v17, 0x0

    add-int/lit8 v18, v10, -0x5

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 122
    .local v13, j:I
    :goto_3
    add-int v17, v10, v7

    add-int/lit8 v17, v17, 0x5

    move/from16 v0, v17

    if-ge v13, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mPrevIds:[J

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v13, v0, :cond_4

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mPrevIds:[J

    move-object/from16 v17, v0

    aget-wide v17, v17, v13

    cmp-long v17, v17, v15

    if-nez v17, :cond_5

    .line 124
    const/4 v11, 0x1

    .line 125
    if-eq v13, v12, :cond_4

    .line 127
    sub-int v17, v12, v10

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 128
    .local v5, HEIGHT:I
    new-instance v14, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-direct {v14, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;-><init>(Z)V

    .line 129
    .local v14, ta:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;
    const/16 v17, 0x0

    const/16 v18, 0x0

    sub-int v19, v13, v12

    mul-int v19, v19, v5

    neg-int v0, v5

    move/from16 v20, v0

    sub-int v21, v13, v12

    mul-int v20, v20, v21

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->translate(IIII)V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v14}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;)V

    .line 135
    .end local v5           #HEIGHT:I
    .end local v14           #ta:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;
    :cond_4
    if-nez v11, :cond_2

    .line 137
    new-instance v14, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-direct {v14, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;-><init>(Z)V

    .line 138
    .restart local v14       #ta:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;
    neg-int v0, v6

    move/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v14, v6, v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->translate(IIII)V

    .line 140
    const/16 v17, 0xc8

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->delay(I)V

    .line 141
    const/high16 v17, 0x40c0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->setXSpeedFactor(F)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v14}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;)V

    goto/16 :goto_2

    .line 122
    .end local v14           #ta:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 145
    .end local v11           #found:Z
    .end local v13           #j:I
    .end local v15           #targetId:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->start()V

    .line 157
    .end local v4           #FIND_WINDOW_MARGIN:I
    .end local v6           #HORIZONTAL_TRANSLATE_DISTANCE:I
    .end local v7           #childCount:I
    .end local v10           #first:I
    .end local v12           #i:I
    :cond_7
    :goto_4
    return-void

    .line 150
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mPrevIds:[J

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 151
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mPrevIds:[J

    .line 153
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mCurIds:[J

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 154
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mCurIds:[J

    goto :goto_4
.end method

.method protected onDrawChildForHandle(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .locals 0
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 87
    return-void
.end method
