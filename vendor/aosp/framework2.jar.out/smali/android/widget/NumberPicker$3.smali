.class Landroid/widget/NumberPicker$3;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 644
    iput-object p1, p0, Landroid/widget/NumberPicker$3;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    .line 646
    iget-object v0, p0, Landroid/widget/NumberPicker$3;->this$0:Landroid/widget/NumberPicker;

    #calls: Landroid/widget/NumberPicker;->hideSoftInput()V
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$000(Landroid/widget/NumberPicker;)V

    .line 647
    iget-object v0, p0, Landroid/widget/NumberPicker$3;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 648
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x10203fb

    if-ne v0, v1, :cond_0

    .line 649
    iget-object v0, p0, Landroid/widget/NumberPicker$3;->this$0:Landroid/widget/NumberPicker;

    #calls: Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V
    invoke-static {v0, v2, v3, v4}, Landroid/widget/NumberPicker;->access$300(Landroid/widget/NumberPicker;ZJ)V

    .line 653
    :goto_0
    return v2

    .line 651
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker$3;->this$0:Landroid/widget/NumberPicker;

    const/4 v1, 0x0

    #calls: Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V
    invoke-static {v0, v1, v3, v4}, Landroid/widget/NumberPicker;->access$300(Landroid/widget/NumberPicker;ZJ)V

    goto :goto_0
.end method
