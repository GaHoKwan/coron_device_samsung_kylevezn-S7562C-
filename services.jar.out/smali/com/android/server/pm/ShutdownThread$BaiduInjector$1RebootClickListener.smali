.class Lcom/android/server/pm/ShutdownThread$BaiduInjector$1RebootClickListener;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/ShutdownThread$BaiduInjector;->showBaiduShutdownOrRebootDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RebootClickListener"
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/server/pm/ShutdownThread$BaiduInjector$1RebootClickListener;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 216
    if-gez p2, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/ShutdownThread$BaiduInjector$1RebootClickListener;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #array@shutdown_reboot_actions#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, actions:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge p2, v1, :cond_0

    .line 221
    aget-object v1, v0, p2

    invoke-static {v1}, Lcom/android/server/pm/ShutdownThread;->access$sput-mRebootReason-4d6e43(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
