.class Lcom/android/server/enterprise/application/ApplicationPolicy$ClearUserDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearUserDataObserver"
.end annotation


# instance fields
.field finished:Z

.field packageName:Ljava/lang/String;

.field success:Z

.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 1268
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ClearUserDataObserver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Lcom/android/server/enterprise/application/ApplicationPolicy$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1268
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$ClearUserDataObserver;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1
    .parameter "pkgName"
    .parameter "succeeded"

    .prologue
    .line 1274
    monitor-enter p0

    .line 1275
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ClearUserDataObserver;->finished:Z

    .line 1276
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ClearUserDataObserver;->packageName:Ljava/lang/String;

    .line 1277
    iput-boolean p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ClearUserDataObserver;->success:Z

    .line 1278
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1279
    monitor-exit p0

    .line 1280
    return-void

    .line 1279
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
