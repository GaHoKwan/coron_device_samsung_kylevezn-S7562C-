.class Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic$InvokeListBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyArrayListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/webkit/WebViewClassic$InvokeListBox$Container;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebViewClassic$InvokeListBox;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewClassic$InvokeListBox;)V
    .locals 3
    .parameter

    .prologue
    .line 12627
    iput-object p1, p0, Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;->this$1:Landroid/webkit/WebViewClassic$InvokeListBox;

    .line 12628
    iget-object v0, p1, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v1

    #getter for: Landroid/webkit/WebViewClassic$InvokeListBox;->mMultiple:Z
    invoke-static {p1}, Landroid/webkit/WebViewClassic$InvokeListBox;->access$11700(Landroid/webkit/WebViewClassic$InvokeListBox;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x109015e

    :goto_0
    #getter for: Landroid/webkit/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkit/WebViewClassic$InvokeListBox$Container;
    invoke-static {p1}, Landroid/webkit/WebViewClassic$InvokeListBox;->access$11800(Landroid/webkit/WebViewClassic$InvokeListBox;)[Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 12632
    return-void

    .line 12628
    :cond_0
    const v0, 0x109015f

    goto :goto_0
.end method

.method private item(I)Landroid/webkit/WebViewClassic$InvokeListBox$Container;
    .locals 1
    .parameter "position"

    .prologue
    .line 12690
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 12691
    :cond_0
    const/4 v0, 0x0

    .line 12693
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 12707
    const/4 v0, 0x0

    return v0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 12698
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;->item(I)Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    move-result-object v0

    .line 12699
    .local v0, item:Landroid/webkit/WebViewClassic$InvokeListBox$Container;
    if-nez v0, :cond_0

    .line 12700
    const-wide/16 v1, -0x1

    .line 12702
    :goto_0
    return-wide v1

    :cond_0
    iget v1, v0, Landroid/webkit/WebViewClassic$InvokeListBox$Container;->mId:I

    int-to-long v1, v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    const v6, 0x1080012

    const/4 v5, 0x1

    .line 12642
    invoke-super {p0, p1, v7, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 12643
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;->item(I)Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    move-result-object v0

    .line 12644
    .local v0, c:Landroid/webkit/WebViewClassic$InvokeListBox$Container;
    if-eqz v0, :cond_3

    iget v4, v0, Landroid/webkit/WebViewClassic$InvokeListBox$Container;->mEnabled:I

    if-eq v5, v4, :cond_3

    .line 12647
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;->this$1:Landroid/webkit/WebViewClassic$InvokeListBox;

    iget-object v4, v4, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 12648
    .local v3, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 12649
    if-lez p1, :cond_0

    .line 12650
    new-instance v2, Landroid/view/View;

    iget-object v4, p0, Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;->this$1:Landroid/webkit/WebViewClassic$InvokeListBox;

    iget-object v4, v4, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 12651
    .local v2, dividerTop:Landroid/view/View;
    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 12653
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 12656
    .end local v2           #dividerTop:Landroid/view/View;
    :cond_0
    const/4 v4, -0x1

    iget v5, v0, Landroid/webkit/WebViewClassic$InvokeListBox$Container;->mEnabled:I

    if-ne v4, v5, :cond_2

    .line 12660
    instance-of v4, p2, Landroid/widget/CheckedTextView;

    invoke-static {v4}, Ljunit/framework/Assert;->assertTrue(Z)V

    move-object v4, p2

    .line 12661
    check-cast v4, Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v7}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12669
    :goto_0
    invoke-virtual {v3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 12670
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge p1, v4, :cond_1

    .line 12671
    new-instance v1, Landroid/view/View;

    iget-object v4, p0, Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;->this$1:Landroid/webkit/WebViewClassic$InvokeListBox;

    iget-object v4, v4, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 12672
    .local v1, dividerBottom:Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 12674
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 12678
    .end local v1           #dividerBottom:Landroid/view/View;
    .end local v3           #layout:Landroid/widget/LinearLayout;
    :cond_1
    :goto_1
    return-object v3

    .line 12666
    .restart local v3       #layout:Landroid/widget/LinearLayout;
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .end local v3           #layout:Landroid/widget/LinearLayout;
    :cond_3
    move-object v3, p2

    .line 12678
    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 12686
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 4
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 12712
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;->item(I)Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    move-result-object v0

    .line 12713
    .local v0, item:Landroid/webkit/WebViewClassic$InvokeListBox$Container;
    if-nez v0, :cond_0

    .line 12716
    :goto_0
    return v2

    :cond_0
    iget v3, v0, Landroid/webkit/WebViewClassic$InvokeListBox$Container;->mEnabled:I

    if-ne v1, v3, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
