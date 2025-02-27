.class public Lcom/android/internal/policy/impl/DeviceUnLockService;
.super Landroid/app/Service;
.source "DeviceUnLockService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/DeviceUnLockService$LocalBinder;
    }
.end annotation


# static fields
.field public static final ACTION_UNLOCK:Ljava/lang/String; = "unlock_broadcast"

.field static final DEVICE_UNLOCK_INTENT_ACTION_1:Ljava/lang/String; = "com.android.internal.policy.impl.unlock"

.field public static final DEVICE_UNLOCK_INTENT_ACTION_2:Ljava/lang/String; = "com.android.internal.policy.impl.keygaurd"

.field private static final OTHER_EXCEPTION:I = 0x11174

.field private static final PASSWORD_IS_BLANK:I = 0x11173

.field private static final PASSWORD_IS_WRONG:I = 0x11172

.field private static final SCREEN_UNLOCKED_SUCCESSFULLY:I = 0x11171

.field private static final TAG:Ljava/lang/String; = "LocalAppMainServicess"


# instance fields
.field private mKeyguardViewMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

.field private final myLocalBinder:Lcom/android/internal/policy/impl/DeviceUnLockService$LocalBinder;

.field private final myStubBinder:Lcom/android/internal/policy/impl/IDeviceUnlockService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 52
    new-instance v0, Lcom/android/internal/policy/impl/DeviceUnLockService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/DeviceUnLockService$LocalBinder;-><init>(Lcom/android/internal/policy/impl/DeviceUnLockService;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnLockService;->myLocalBinder:Lcom/android/internal/policy/impl/DeviceUnLockService$LocalBinder;

    .line 53
    new-instance v0, Lcom/android/internal/policy/impl/DeviceUnLockService$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/DeviceUnLockService$1;-><init>(Lcom/android/internal/policy/impl/DeviceUnLockService;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnLockService;->myStubBinder:Lcom/android/internal/policy/impl/IDeviceUnlockService$Stub;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/DeviceUnLockService;)Lcom/android/internal/policy/impl/KeyguardViewMediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnLockService;->mKeyguardViewMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 160
    const-string v0, "LocalAppMainServicess"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v0, "com.android.internal.policy.impl.unlock"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnLockService;->myLocalBinder:Lcom/android/internal/policy/impl/DeviceUnLockService$LocalBinder;

    .line 164
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnLockService;->myStubBinder:Lcom/android/internal/policy/impl/IDeviceUnlockService$Stub;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 148
    const-string v0, "LocalAppMainServicess"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 183
    const-string v0, "LocalAppMainServicess"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnLockService;->mKeyguardViewMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    .line 185
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 186
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 170
    const-string v0, "LocalAppMainServicess"

    const-string v1, "onRebind"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 172
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 176
    const-string v0, "LocalAppMainServicess"

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public setKeyguardViewMediator(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter "mKeyguardViewMediator"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/internal/policy/impl/DeviceUnLockService;->mKeyguardViewMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    .line 210
    return-void
.end method
