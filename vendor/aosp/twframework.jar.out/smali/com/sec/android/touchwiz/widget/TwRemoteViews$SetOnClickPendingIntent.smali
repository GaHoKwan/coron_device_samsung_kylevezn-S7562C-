.class Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickPendingIntent;
.super Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;
.source "TwRemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetOnClickPendingIntent"
.end annotation


# static fields
.field public static final TAG:I = 0x1


# instance fields
.field pendingIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

.field viewId:I


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;ILandroid/app/PendingIntent;)V
    .locals 1
    .parameter
    .parameter "id"
    .parameter "pendingIntent"

    .prologue
    .line 429
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickPendingIntent;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews$1;)V

    .line 430
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickPendingIntent;->viewId:I

    .line 431
    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    .line 432
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .parameter
    .parameter "parcel"

    .prologue
    .line 434
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickPendingIntent;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews$1;)V

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickPendingIntent;->viewId:I

    .line 436
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    .line 437
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 5
    .parameter "root"
    .parameter "rootParent"

    .prologue
    .line 447
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickPendingIntent;->viewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 448
    .local v1, target:Landroid/view/View;
    if-nez v1, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickPendingIntent;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    #getter for: Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mIsWidgetCollectionChild:Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->access$100(Lcom/sec/android/touchwiz/widget/TwRemoteViews;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 453
    const-string v2, "RemoteViews"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot setOnClickPendingIntent for collection item (id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickPendingIntent;->viewId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_2
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 459
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickPendingIntent$1;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickPendingIntent$1;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickPendingIntent;)V

    .line 479
    .local v0, listener:Landroid/view/View$OnClickListener;
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 440
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickPendingIntent;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 443
    return-void
.end method
