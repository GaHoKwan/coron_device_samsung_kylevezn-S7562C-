.class Landroid/widget/MediaController$6;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MediaController;


# direct methods
.method constructor <init>(Landroid/widget/MediaController;)V
    .locals 0
    .parameter

    .prologue
    .line 612
    iput-object p1, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 614
    iget-object v1, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;
    invoke-static {v1}, Landroid/widget/MediaController;->access$700(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v0

    .line 615
    .local v0, pos:I
    add-int/lit16 v0, v0, -0x1388

    .line 616
    iget-object v1, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;
    invoke-static {v1}, Landroid/widget/MediaController;->access$700(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    .line 617
    iget-object v1, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    #calls: Landroid/widget/MediaController;->setProgress()I
    invoke-static {v1}, Landroid/widget/MediaController;->access$500(Landroid/widget/MediaController;)I

    .line 619
    iget-object v1, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->show(I)V

    .line 620
    return-void
.end method
