.class Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;
.super Ljava/lang/Object;
.source "TwExpandableListView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RotateAnimationListener"
.end annotation


# instance fields
.field animType:I

.field isGroupExpanding:Z

.field isLastAnimatingItem:Z

.field isListGroupItem:Z

.field mChildPos:I

.field mGroupPos:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;ZZZI)V
    .locals 1
    .parameter
    .parameter "thisView"
    .parameter "expanding"
    .parameter "isLastItem"
    .parameter "isGroupItem"
    .parameter "animationType"

    .prologue
    const/4 v0, 0x0

    .line 3316
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3307
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->isGroupExpanding:Z

    .line 3309
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->isLastAnimatingItem:Z

    .line 3311
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->isListGroupItem:Z

    .line 3313
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->animType:I

    .line 3318
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->view:Landroid/view/View;

    .line 3319
    iput-boolean p3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->isGroupExpanding:Z

    .line 3320
    iput-boolean p4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->isLastAnimatingItem:Z

    .line 3321
    iput-boolean p5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->isListGroupItem:Z

    .line 3322
    iput p6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->animType:I

    .line 3323
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x1

    .line 3336
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->isListGroupItem:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->animType:I

    if-ne v0, v1, :cond_0

    .line 3337
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isTranslationOver:Z

    .line 3339
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->isGroupExpanding:Z

    if-eqz v0, :cond_3

    .line 3340
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->isLastAnimatingItem:Z

    if-eqz v0, :cond_2

    .line 3341
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->isListGroupItem:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->animType:I

    if-nez v0, :cond_1

    .line 3344
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isItemAnimationOver:Z

    .line 3346
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setFinishedExpansionAnimationItemIndex()V

    .line 3362
    :cond_2
    :goto_0
    return-void

    .line 3351
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->isLastAnimatingItem:Z

    if-eqz v0, :cond_5

    .line 3352
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->isListGroupItem:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->animType:I

    if-nez v0, :cond_4

    .line 3355
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isItemAnimationOver:Z

    .line 3357
    :cond_4
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setFinishedCollapseAnimationItemIndex()V

    .line 3359
    :cond_5
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->isListGroupItem:Z

    if-nez v0, :cond_2

    .line 3360
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->view:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 3365
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$300(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3366
    const-string v0, "AnimationListener"

    const-string v1, "onAnimationRepeat ....."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3367
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 3326
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->animType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3327
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isTranslationOver:Z

    .line 3331
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->isGroupExpanding:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->isListGroupItem:Z

    if-nez v0, :cond_1

    .line 3332
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3333
    :cond_1
    return-void

    .line 3328
    :cond_2
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->animType:I

    if-nez v0, :cond_0

    .line 3329
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isItemAnimationOver:Z

    goto :goto_0
.end method
