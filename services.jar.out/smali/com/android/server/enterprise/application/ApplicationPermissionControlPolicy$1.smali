.class Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy$1;
.super Ljava/lang/Object;
.source "ApplicationPermissionControlPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 104
    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v1, "systemReady..."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->loadApplicationPermissionControlList()V

    .line 106
    return-void
.end method
