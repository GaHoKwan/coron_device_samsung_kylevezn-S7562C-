.class Landroid/webkit/CallbackProxy$11;
.super Ljava/lang/Object;
.source "CallbackProxy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/CallbackProxy;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/CallbackProxy;

.field final synthetic val$res:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 839
    iput-object p1, p0, Landroid/webkit/CallbackProxy$11;->this$0:Landroid/webkit/CallbackProxy;

    iput-object p2, p0, Landroid/webkit/CallbackProxy$11;->val$res:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 841
    const/16 v0, 0x52

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x54

    if-ne p2, v0, :cond_2

    .line 843
    :cond_1
    iget-object v0, p0, Landroid/webkit/CallbackProxy$11;->val$res:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    .line 847
    :cond_2
    return v1
.end method
