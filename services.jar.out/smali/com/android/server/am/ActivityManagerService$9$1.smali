.class Lcom/android/server/am/ActivityManagerService$9$1;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService$9;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerService$9;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService$9;)V
    .locals 0
    .parameter

    .prologue
    .line 8288
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$9$1;->this$1:Lcom/android/server/am/ActivityManagerService$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 8290
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$9$1;->this$1:Lcom/android/server/am/ActivityManagerService$9;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$9;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 8291
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$9$1;->this$1:Lcom/android/server/am/ActivityManagerService$9;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$9;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerService;->mDidUpdate:Z

    .line 8292
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8293
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$9$1;->this$1:Lcom/android/server/am/ActivityManagerService$9;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$9;->val$doneReceivers:Ljava/util/ArrayList;

    #calls: Lcom/android/server/am/ActivityManagerService;->writeLastDonePreBootReceivers(Ljava/util/ArrayList;)V
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$800(Ljava/util/ArrayList;)V

    .line 8294
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$9$1;->this$1:Lcom/android/server/am/ActivityManagerService$9;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$9;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$9$1;->this$1:Lcom/android/server/am/ActivityManagerService$9;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService$9;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v2, 0x1040561

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 8297
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$9$1;->this$1:Lcom/android/server/am/ActivityManagerService$9;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$9;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$9$1;->this$1:Lcom/android/server/am/ActivityManagerService$9;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService$9;->val$goingCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 8298
    return-void

    .line 8292
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
