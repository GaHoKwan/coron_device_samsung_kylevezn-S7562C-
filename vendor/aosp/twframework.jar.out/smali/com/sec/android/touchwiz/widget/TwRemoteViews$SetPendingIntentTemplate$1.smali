.class Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetPendingIntentTemplate$1;
.super Ljava/lang/Object;
.source "TwRemoteViews.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetPendingIntentTemplate;->apply(Landroid/view/View;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetPendingIntentTemplate;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetPendingIntentTemplate;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetPendingIntentTemplate$1;->this$1:Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetPendingIntentTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .locals 12
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p1, parent:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    instance-of v9, p2, Landroid/view/ViewGroup;

    if-eqz v9, :cond_1

    move-object v8, p2

    .line 317
    check-cast v8, Landroid/view/ViewGroup;

    .line 321
    .local v8, vg:Landroid/view/ViewGroup;
    instance-of v9, p1, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;

    if-eqz v9, :cond_0

    .line 322
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #vg:Landroid/view/ViewGroup;
    check-cast v8, Landroid/view/ViewGroup;

    .line 324
    .restart local v8       #vg:Landroid/view/ViewGroup;
    :cond_0
    if-nez v8, :cond_2

    .line 352
    .end local v8           #vg:Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    return-void

    .line 326
    .restart local v8       #vg:Landroid/view/ViewGroup;
    :cond_2
    const/4 v2, 0x0

    .line 327
    .local v2, fillInIntent:Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 328
    .local v1, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 329
    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x102025a

    invoke-virtual {v9, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    .line 330
    .local v7, tag:Ljava/lang/Object;
    instance-of v9, v7, Landroid/content/Intent;

    if-eqz v9, :cond_4

    move-object v2, v7

    .line 331
    check-cast v2, Landroid/content/Intent;

    .line 335
    .end local v7           #tag:Ljava/lang/Object;
    :cond_3
    if-eqz v2, :cond_1

    .line 337
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v9

    iget v0, v9, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 339
    .local v0, appScale:F
    const/4 v9, 0x2

    new-array v5, v9, [I

    .line 340
    .local v5, pos:[I
    invoke-virtual {p2, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 342
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 343
    .local v6, rect:Landroid/graphics/Rect;
    const/4 v9, 0x0

    aget v9, v5, v9

    int-to-float v9, v9

    mul-float/2addr v9, v0

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v6, Landroid/graphics/Rect;->left:I

    .line 344
    const/4 v9, 0x1

    aget v9, v5, v9

    int-to-float v9, v9

    mul-float/2addr v9, v0

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v6, Landroid/graphics/Rect;->top:I

    .line 345
    const/4 v9, 0x0

    aget v9, v5, v9

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v0

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v6, Landroid/graphics/Rect;->right:I

    .line 346
    const/4 v9, 0x1

    aget v9, v5, v9

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v0

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v6, Landroid/graphics/Rect;->bottom:I

    .line 348
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 349
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 350
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetPendingIntentTemplate$1;->this$1:Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetPendingIntentTemplate;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetPendingIntentTemplate$1;->this$1:Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetPendingIntentTemplate;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetPendingIntentTemplate;->pendingIntentTemplate:Landroid/app/PendingIntent;

    invoke-virtual {v9, v10, v11, v2}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;->startIntentSafely(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 328
    .end local v0           #appScale:F
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #pos:[I
    .end local v6           #rect:Landroid/graphics/Rect;
    .restart local v7       #tag:Ljava/lang/Object;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
