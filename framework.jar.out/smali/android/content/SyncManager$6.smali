.class Landroid/content/SyncManager$6;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/SyncManager;


# direct methods
.method constructor <init>(Landroid/content/SyncManager;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Landroid/content/SyncManager$6;->this$0:Landroid/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 329
    iget-object v0, p0, Landroid/content/SyncManager$6;->this$0:Landroid/content/SyncManager;

    #calls: Landroid/content/SyncManager;->onUserRemoved(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Landroid/content/SyncManager;->access$700(Landroid/content/SyncManager;Landroid/content/Intent;)V

    .line 330
    return-void
.end method
