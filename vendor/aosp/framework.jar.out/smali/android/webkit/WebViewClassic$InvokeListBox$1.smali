.class Landroid/webkit/WebViewClassic$InvokeListBox$1;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewClassic$InvokeListBox;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebViewClassic$InvokeListBox;

.field final synthetic val$adapter:Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic$InvokeListBox;Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 12830
    iput-object p1, p0, Landroid/webkit/WebViewClassic$InvokeListBox$1;->this$1:Landroid/webkit/WebViewClassic$InvokeListBox;

    iput-object p2, p0, Landroid/webkit/WebViewClassic$InvokeListBox$1;->val$adapter:Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;

    iput-object p3, p0, Landroid/webkit/WebViewClassic$InvokeListBox$1;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 12832
    iget-object v0, p0, Landroid/webkit/WebViewClassic$InvokeListBox$1;->this$1:Landroid/webkit/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v1, 0x1

    #setter for: Landroid/webkit/WebViewClassic;->mSelectFocusMoved:Z
    invoke-static {v0, v1}, Landroid/webkit/WebViewClassic;->access$8802(Landroid/webkit/WebViewClassic;Z)Z

    .line 12833
    iget-object v0, p0, Landroid/webkit/WebViewClassic$InvokeListBox$1;->this$1:Landroid/webkit/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mIsTextFieldNext:Z

    if-eqz v0, :cond_1

    .line 12834
    iget-object v0, p0, Landroid/webkit/WebViewClassic$InvokeListBox$1;->this$1:Landroid/webkit/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$8700(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebSelectDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12835
    iget-object v0, p0, Landroid/webkit/WebViewClassic$InvokeListBox$1;->this$1:Landroid/webkit/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$8700(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebSelectDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSelectDialog;->dismiss()V

    .line 12836
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic$InvokeListBox$1;->this$1:Landroid/webkit/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v1, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v0, v1}, Landroid/webkit/WebViewClassic;->access$8702(Landroid/webkit/WebViewClassic;Landroid/webkit/WebSelectDialog;)Landroid/webkit/WebSelectDialog;

    .line 12837
    iget-object v0, p0, Landroid/webkit/WebViewClassic$InvokeListBox$1;->this$1:Landroid/webkit/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #setter for: Landroid/webkit/WebViewClassic;->bWebSelectDialogIsUp:Z
    invoke-static {v0, v4}, Landroid/webkit/WebViewClassic;->access$8602(Landroid/webkit/WebViewClassic;Z)Z

    .line 12840
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic$InvokeListBox$1;->this$1:Landroid/webkit/WebViewClassic$InvokeListBox;

    #getter for: Landroid/webkit/WebViewClassic$InvokeListBox;->mMultiple:Z
    invoke-static {v0}, Landroid/webkit/WebViewClassic$InvokeListBox;->access$11700(Landroid/webkit/WebViewClassic$InvokeListBox;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12841
    iget-object v0, p0, Landroid/webkit/WebViewClassic$InvokeListBox$1;->this$1:Landroid/webkit/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x7b

    iget-object v2, p0, Landroid/webkit/WebViewClassic$InvokeListBox$1;->val$adapter:Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;->getCount()I

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebViewClassic$InvokeListBox$1;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 12849
    :goto_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic$InvokeListBox$1;->this$1:Landroid/webkit/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 12851
    iget-object v0, p0, Landroid/webkit/WebViewClassic$InvokeListBox$1;->this$1:Landroid/webkit/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mIsTextFieldNext:Z

    if-eqz v0, :cond_2

    .line 12852
    iget-object v0, p0, Landroid/webkit/WebViewClassic$InvokeListBox$1;->this$1:Landroid/webkit/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->moveCursorToEnd()V

    .line 12855
    :cond_2
    return-void

    .line 12846
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebViewClassic$InvokeListBox$1;->this$1:Landroid/webkit/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x7c

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2, v4}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method
