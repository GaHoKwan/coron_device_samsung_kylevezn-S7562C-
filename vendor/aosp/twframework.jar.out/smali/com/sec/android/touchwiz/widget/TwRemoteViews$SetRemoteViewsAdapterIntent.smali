.class Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetRemoteViewsAdapterIntent;
.super Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;
.source "TwRemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetRemoteViewsAdapterIntent"
.end annotation


# static fields
.field public static final TAG:I = 0xa


# instance fields
.field intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

.field viewId:I


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;ILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter "id"
    .parameter "intent"

    .prologue
    .line 370
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetRemoteViewsAdapterIntent;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews$1;)V

    .line 371
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetRemoteViewsAdapterIntent;->viewId:I

    .line 372
    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetRemoteViewsAdapterIntent;->intent:Landroid/content/Intent;

    .line 373
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .parameter
    .parameter "parcel"

    .prologue
    .line 375
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetRemoteViewsAdapterIntent;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews$1;)V

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetRemoteViewsAdapterIntent;->viewId:I

    .line 377
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetRemoteViewsAdapterIntent;->intent:Landroid/content/Intent;

    .line 378
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 6
    .parameter "root"
    .parameter "rootParent"

    .prologue
    .line 388
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetRemoteViewsAdapterIntent;->viewId:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 389
    .local v1, target:Landroid/view/View;
    if-nez v1, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    instance-of v3, p2, Landroid/appwidget/AppWidgetHostView;

    if-nez v3, :cond_2

    .line 393
    const-string v3, "RemoteViews"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetRemoteViewsAdapterIntent action can only be used for AppWidgets (root id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetRemoteViewsAdapterIntent;->viewId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 398
    :cond_2
    instance-of v3, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;

    if-nez v3, :cond_3

    instance-of v3, v1, Landroid/widget/AdapterViewAnimator;

    if-nez v3, :cond_3

    .line 399
    const-string v3, "RemoteViews"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot setRemoteViewsAdapter on a view which is not an AbsListView or AdapterViewAnimator (id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetRemoteViewsAdapterIntent;->viewId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move-object v0, p2

    .line 406
    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 407
    .local v0, host:Landroid/appwidget/AppWidgetHostView;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetRemoteViewsAdapterIntent;->intent:Landroid/content/Intent;

    const-string v4, "remoteAdapterAppWidgetId"

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 408
    instance-of v3, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;

    if-eqz v3, :cond_4

    move-object v2, v1

    .line 409
    check-cast v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .line 410
    .local v2, v:Lcom/sec/android/touchwiz/widget/TwAbsListView;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetRemoteViewsAdapterIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    goto :goto_0

    .line 411
    .end local v2           #v:Lcom/sec/android/touchwiz/widget/TwAbsListView;
    :cond_4
    instance-of v3, v1, Landroid/widget/AdapterViewAnimator;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 412
    check-cast v2, Landroid/widget/AdapterViewAnimator;

    .line 413
    .local v2, v:Landroid/widget/AdapterViewAnimator;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetRemoteViewsAdapterIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/widget/AdapterViewAnimator;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 381
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetRemoteViewsAdapterIntent;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetRemoteViewsAdapterIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 384
    return-void
.end method
