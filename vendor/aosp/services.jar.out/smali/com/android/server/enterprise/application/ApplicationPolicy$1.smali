.class Lcom/android/server/enterprise/application/ApplicationPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;->registerPackageChangeReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1052
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    #calls: Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v7, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$700(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 1053
    .local v3, pkgName:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1056
    .local v2, pkgAction:Ljava/lang/String;
    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 1058
    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1059
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    #getter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$800(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v7

    const-string v8, "ADMIN"

    const-string v9, "adminUid"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1061
    .local v5, uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1062
    .local v4, storedUid:I
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 v8, 0x0

    invoke-virtual {v7, v3, v8, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Ljava/lang/String;[Landroid/app/enterprise/ManagedAppInfo;I)Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1063
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v8, "applicationUninstallationCount"

    #calls: Lcom/android/server/enterprise/application/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v4, v3, v8}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$900(Lcom/android/server/enterprise/application/ApplicationPolicy;ILjava/lang/String;Ljava/lang/String;)V

    .line 1065
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 v8, 0x2

    const/4 v9, 0x0

    #calls: Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z
    invoke-static {v7, v3, v4, v8, v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1000(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;IIZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1083
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #storedUid:I
    .end local v5           #uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 1084
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1086
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    return-void

    .line 1069
    :cond_2
    :try_start_1
    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1071
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1072
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    #getter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$800(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v7

    const-string v8, "ADMIN"

    const-string v9, "adminUid"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1074
    .local v6, uidList1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1075
    .restart local v4       #storedUid:I
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 v8, 0x0

    invoke-virtual {v7, v3, v8, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Ljava/lang/String;[Landroid/app/enterprise/ManagedAppInfo;I)Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 1076
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v8, "applicationInstallationCount"

    #calls: Lcom/android/server/enterprise/application/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v4, v3, v8}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$900(Lcom/android/server/enterprise/application/ApplicationPolicy;ILjava/lang/String;Ljava/lang/String;)V

    .line 1078
    const-string v7, "ApplicationPolicy"

    const-string v8, "App install count incremented"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
