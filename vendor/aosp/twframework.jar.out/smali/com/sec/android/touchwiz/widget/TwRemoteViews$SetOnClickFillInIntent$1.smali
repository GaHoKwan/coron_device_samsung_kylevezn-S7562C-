.class Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickFillInIntent$1;
.super Ljava/lang/Object;
.source "TwRemoteViews.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickFillInIntent;->apply(Landroid/view/View;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickFillInIntent;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickFillInIntent;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickFillInIntent$1;->this$1:Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickFillInIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f00

    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 240
    .local v1, parent:Landroid/view/View;
    :goto_0
    instance-of v5, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;

    if-nez v5, :cond_0

    instance-of v5, v1, Landroid/appwidget/AppWidgetHostView;

    if-nez v5, :cond_0

    .line 241
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .end local v1           #parent:Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .restart local v1       #parent:Landroid/view/View;
    goto :goto_0

    .line 244
    :cond_0
    instance-of v5, v1, Landroid/appwidget/AppWidgetHostView;

    if-eqz v5, :cond_1

    .line 247
    const-string v5, "RemoteViews"

    const-string v6, "Collection item doesn\'t have AdapterView parent"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_1
    return-void

    .line 252
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Landroid/app/PendingIntent;

    if-nez v5, :cond_2

    .line 253
    const-string v5, "RemoteViews"

    const-string v6, "Attempting setOnClickFillInIntent without calling setPendingIntentTemplate on parent."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 258
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 260
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v5

    iget v0, v5, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 262
    .local v0, appScale:F
    const/4 v5, 0x2

    new-array v3, v5, [I

    .line 263
    .local v3, pos:[I
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 265
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 266
    .local v4, rect:Landroid/graphics/Rect;
    aget v5, v3, v6

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 267
    aget v5, v3, v8

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 268
    aget v5, v3, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 269
    aget v5, v3, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 271
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickFillInIntent$1;->this$1:Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickFillInIntent;

    iget-object v5, v5, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 272
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickFillInIntent$1;->this$1:Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickFillInIntent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickFillInIntent$1;->this$1:Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickFillInIntent;

    iget-object v7, v7, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    invoke-virtual {v5, v6, v2, v7}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;->startIntentSafely(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    goto :goto_1
.end method
