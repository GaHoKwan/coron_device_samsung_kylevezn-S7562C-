.class Lcom/android/server/sec/ClippedDataPickerDialog$3;
.super Ljava/lang/Object;
.source "ClippedDataPickerDialog.java"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/ClippedDataPickerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/ClippedDataPickerDialog;


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$3;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .locals 5

    .prologue
    const/high16 v4, 0x200

    .line 468
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    const-string v3, "called setOnDrawerCloseListener.onDrawerClosed()"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$3;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 472
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1

    .line 473
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$3;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #calls: Lcom/android/server/sec/ClippedDataPickerDialog;->dismissDialog()V
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$500(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    .line 482
    .end local v0           #am:Landroid/app/ActivityManager;
    :goto_0
    return-void

    .line 475
    .restart local v0       #am:Landroid/app/ActivityManager;
    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$3;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 477
    .end local v0           #am:Landroid/app/ActivityManager;
    :catch_0
    move-exception v1

    .line 478
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "ClipboardServiceEx"

    const-string v3, "Failed to check multiwindow style:"

    invoke-static {v2, v3, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 479
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 480
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$3;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->dismiss()V

    goto :goto_0
.end method
