.class public Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;
.super Ljava/lang/Object;
.source "TwAnimatedGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ItemAnimator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAnimations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 437
    const-class v0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;)V
    .locals 1
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public getItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;
    .locals 2
    .parameter "position"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;

    return-object v0
.end method

.method public putItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;)V
    .locals 1
    .parameter "position"
    .parameter "a"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 453
    return-void
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 477
    return-void
.end method

.method public removeItemAnimation(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 470
    return-void
.end method

.method public removeItemAnimation(Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;)V
    .locals 3
    .parameter "a"

    .prologue
    .line 459
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 460
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 461
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 463
    :cond_0
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    .line 488
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 489
    .local v1, curTime:J
    const/4 v0, 0x1

    .line 491
    .local v0, allFinished:Z
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 492
    .local v7, size:I
    add-int/lit8 v4, v7, -0x1

    .local v4, i:I
    :goto_0
    if-ltz v4, :cond_2

    .line 493
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 494
    .local v6, position:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;

    .line 495
    .local v5, ia:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;
    sget-boolean v8, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    if-nez v5, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 496
    :cond_0
    invoke-virtual {v5, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;->computeAnimation(J)V

    .line 497
    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;->isFinished()Z

    move-result v3

    .line 498
    .local v3, finished:Z
    and-int/2addr v0, v3

    .line 499
    if-eqz v3, :cond_1

    .line 500
    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;->getRetainOnFinish()Z

    move-result v8

    if-nez v8, :cond_1

    .line 501
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->removeItemAnimation(I)V

    .line 492
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 505
    .end local v3           #finished:Z
    .end local v5           #ia:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;
    .end local v6           #position:I
    :cond_2
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;

    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    .line 506
    if-nez v0, :cond_3

    .line 507
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;

    invoke-virtual {v8, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 509
    :cond_3
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 484
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->run()V

    .line 485
    return-void
.end method
