.class Landroid/widget/RemoteViews$SetOnClickFillInIntent;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetOnClickFillInIntent"
.end annotation


# static fields
.field public static final TAG:I = 0x9


# instance fields
.field fillInIntent:Landroid/content/Intent;

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field viewId:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter "id"
    .parameter "fillInIntent"

    .prologue
    .line 311
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 312
    iput p2, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->viewId:I

    .line 313
    iput-object p3, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    .line 314
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .parameter
    .parameter "parcel"

    .prologue
    .line 316
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->viewId:I

    .line 318
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    .line 319
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 4
    .parameter "root"
    .parameter "rootParent"
    .parameter "handler"

    .prologue
    .line 329
    iget v2, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->viewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 330
    .local v1, target:Landroid/view/View;
    if-nez v1, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->this$0:Landroid/widget/RemoteViews;

    #getter for: Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z
    invoke-static {v2}, Landroid/widget/RemoteViews;->access$100(Landroid/widget/RemoteViews;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 333
    const-string v2, "RemoteViews"

    const-string v3, "The method setOnClickFillInIntent is available only from RemoteViewsFactory (ie. on collection items)."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 337
    :cond_2
    if-ne v1, p1, :cond_3

    .line 338
    const v2, 0x102025a

    iget-object v3, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    goto :goto_0

    .line 339
    :cond_3
    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 340
    new-instance v0, Landroid/widget/RemoteViews$SetOnClickFillInIntent$1;

    invoke-direct {v0, p0, p3}, Landroid/widget/RemoteViews$SetOnClickFillInIntent$1;-><init>(Landroid/widget/RemoteViews$SetOnClickFillInIntent;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 382
    .local v0, listener:Landroid/view/View$OnClickListener;
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 322
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget v0, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 325
    return-void
.end method
