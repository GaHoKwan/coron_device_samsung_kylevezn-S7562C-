.class Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;
.super Landroid/widget/LinearLayout;
.source "TwDndLinearScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomAnimatedLayout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;
    }
.end annotation


# static fields
.field public static final DEFAULT_ANIMATION_DURATION:I = 0x12c


# instance fields
.field private mCurChildRect:[Landroid/graphics/Rect;

.field private mDndAnimator:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:I

.field private mPrevChildRect:[Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;-><init>(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 195
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->this$0:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;

    .line 198
    invoke-direct {p0, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mDndAnimator:Ljava/util/HashMap;

    .line 200
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mDuration:I

    .line 201
    return-void
.end method


# virtual methods
.method public getAnimationDuration()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mDuration:I

    return v0
.end method

.method public getChildRect(I)Landroid/graphics/Rect;
    .locals 1
    .parameter "index"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mCurChildRect:[Landroid/graphics/Rect;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected onDrawChildren(II)V
    .locals 11
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 208
    .local v1, count:I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mPrevChildRect:[Landroid/graphics/Rect;

    .line 209
    .local v6, prevChildRect:[Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mCurChildRect:[Landroid/graphics/Rect;

    .line 210
    .local v5, newChildRect:[Landroid/graphics/Rect;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 211
    aget-object v7, v6, v4

    aget-object v8, v6, v4

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, p1

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 212
    aget-object v7, v6, v4

    aget-object v8, v6, v4

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, p1

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 213
    aget-object v7, v6, v4

    aget-object v8, v6, v4

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, p2

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 214
    aget-object v7, v6, v4

    aget-object v8, v6, v4

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, p2

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 210
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 217
    :cond_0
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mDndAnimator:Ljava/util/HashMap;

    .line 218
    .local v3, dndAnimators:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;>;"
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_3

    .line 219
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 220
    .local v0, child:Landroid/view/View;
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;

    .line 221
    .local v2, dndAnimator:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;
    if-nez v2, :cond_2

    .line 222
    new-instance v7, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;

    invoke-direct {v7, p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;-><init>(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;)V

    invoke-virtual {v3, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 225
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 218
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 230
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    aget-object v7, v6, v4

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    aget-object v7, v6, v4

    aget-object v8, v5, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 234
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 235
    aget-object v7, v6, v4

    iget v7, v7, Landroid/graphics/Rect;->left:I

    aget-object v8, v6, v4

    iget v8, v8, Landroid/graphics/Rect;->top:I

    aget-object v9, v6, v4

    iget v9, v9, Landroid/graphics/Rect;->right:I

    aget-object v10, v6, v4

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 237
    aget-object v7, v5, v4

    iget v7, v7, Landroid/graphics/Rect;->left:I

    aget-object v8, v5, v4

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mDuration:I

    invoke-virtual {v2, v0, v7, v8, v9}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;->start(Landroid/view/View;III)V

    goto :goto_2

    .line 240
    .end local v0           #child:Landroid/view/View;
    .end local v2           #dndAnimator:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;
    :cond_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 243
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 244
    .local v1, count:I
    if-gtz v1, :cond_1

    .line 245
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mDndAnimator:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 246
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 265
    :cond_0
    return-void

    .line 249
    :cond_1
    new-array v4, v1, [Landroid/graphics/Rect;

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mPrevChildRect:[Landroid/graphics/Rect;

    .line 250
    .local v4, prevChildRect:[Landroid/graphics/Rect;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 251
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    aput-object v5, v4, v2

    .line 252
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 253
    .local v0, child:Landroid/view/View;
    aget-object v5, v4, v2

    invoke-virtual {v0, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 250
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    .end local v0           #child:Landroid/view/View;
    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 258
    new-array v5, v1, [Landroid/graphics/Rect;

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mCurChildRect:[Landroid/graphics/Rect;

    .line 259
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mCurChildRect:[Landroid/graphics/Rect;

    .line 260
    .local v3, newChildRect:[Landroid/graphics/Rect;
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    .line 261
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    aput-object v5, v3, v2

    .line 262
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 263
    .restart local v0       #child:Landroid/view/View;
    aget-object v5, v3, v2

    invoke-virtual {v0, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mDndAnimator:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 304
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 305
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mDndAnimator:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 309
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 310
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mDndAnimator:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 270
    return-void
.end method

.method public removeViewAt(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mDndAnimator:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 290
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mDndAnimator:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 275
    return-void
.end method

.method public removeViews(II)V
    .locals 4
    .parameter "start"
    .parameter "count"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mDndAnimator:Ljava/util/HashMap;

    .line 294
    .local v0, childAnimators:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int v2, p1, v3

    .line 295
    .local v2, lastIndex:I
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 296
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 300
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 4
    .parameter "start"
    .parameter "count"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mDndAnimator:Ljava/util/HashMap;

    .line 279
    .local v0, childAnimators:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int v2, p1, v3

    .line 280
    .local v2, lastIndex:I
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 281
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    .line 285
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 317
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mDuration:I

    .line 318
    return-void
.end method
