.class public abstract Landroid/test/ServiceTestCase;
.super Landroid/test/AndroidTestCase;
.source "ServiceTestCase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Service;",
        ">",
        "Landroid/test/AndroidTestCase;"
    }
.end annotation


# instance fields
.field private mApplication:Landroid/app/Application;

.field private mService:Landroid/app/Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mServiceAttached:Z

.field private mServiceBound:Z

.field mServiceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mServiceCreated:Z

.field private mServiceId:I

.field private mServiceIntent:Landroid/content/Intent;

.field private mServiceStarted:Z

.field private mSystemContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/test/ServiceTestCase;,"Landroid/test/ServiceTestCase<TT;>;"
    .local p1, serviceClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 110
    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    .line 115
    iput-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceAttached:Z

    .line 116
    iput-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceCreated:Z

    .line 117
    iput-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceStarted:Z

    .line 118
    iput-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceBound:Z

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/ServiceTestCase;->mServiceIntent:Landroid/content/Intent;

    .line 111
    iput-object p1, p0, Landroid/test/ServiceTestCase;->mServiceClass:Ljava/lang/Class;

    .line 112
    return-void
.end method


# virtual methods
.method protected bindService(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "intent"

    .prologue
    .local p0, this:Landroid/test/ServiceTestCase;,"Landroid/test/ServiceTestCase<TT;>;"
    const/4 v2, 0x1

    .line 234
    iget-boolean v1, p0, Landroid/test/ServiceTestCase;->mServiceAttached:Z

    if-nez v1, :cond_0

    .line 235
    invoke-virtual {p0}, Landroid/test/ServiceTestCase;->setupService()V

    .line 237
    :cond_0
    iget-object v1, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    invoke-static {v1}, Landroid/test/ServiceTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 239
    iget-boolean v1, p0, Landroid/test/ServiceTestCase;->mServiceCreated:Z

    if-nez v1, :cond_1

    .line 240
    iget-object v1, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    invoke-virtual {v1}, Landroid/app/Service;->onCreate()V

    .line 241
    iput-boolean v2, p0, Landroid/test/ServiceTestCase;->mServiceCreated:Z

    .line 244
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Landroid/test/ServiceTestCase;->mServiceIntent:Landroid/content/Intent;

    .line 245
    iget-object v1, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    invoke-virtual {v1, p1}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    .line 247
    .local v0, result:Landroid/os/IBinder;
    iput-boolean v2, p0, Landroid/test/ServiceTestCase;->mServiceBound:Z

    .line 248
    return-object v0
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 315
    .local p0, this:Landroid/test/ServiceTestCase;,"Landroid/test/ServiceTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getService()Landroid/app/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, this:Landroid/test/ServiceTestCase;,"Landroid/test/ServiceTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    return-object v0
.end method

.method public getSystemContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 325
    .local p0, this:Landroid/test/ServiceTestCase;,"Landroid/test/ServiceTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mSystemContext:Landroid/content/Context;

    return-object v0
.end method

.method public setApplication(Landroid/app/Application;)V
    .locals 0
    .parameter "application"

    .prologue
    .line 304
    .local p0, this:Landroid/test/ServiceTestCase;,"Landroid/test/ServiceTestCase<TT;>;"
    iput-object p1, p0, Landroid/test/ServiceTestCase;->mApplication:Landroid/app/Application;

    .line 305
    return-void
.end method

.method protected setUp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 139
    .local p0, this:Landroid/test/ServiceTestCase;,"Landroid/test/ServiceTestCase<TT;>;"
    invoke-super {p0}, Landroid/test/AndroidTestCase;->setUp()V

    .line 142
    invoke-virtual {p0}, Landroid/test/AndroidTestCase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/test/ServiceTestCase;->mSystemContext:Landroid/content/Context;

    .line 144
    return-void
.end method

.method protected setupService()V
    .locals 8

    .prologue
    .local p0, this:Landroid/test/ServiceTestCase;,"Landroid/test/ServiceTestCase<TT;>;"
    const/4 v2, 0x0

    .line 154
    iput-object v2, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    .line 156
    :try_start_0
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mServiceClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    iput-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    invoke-virtual {p0}, Landroid/test/ServiceTestCase;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Landroid/test/mock/MockApplication;

    invoke-direct {v0}, Landroid/test/mock/MockApplication;-><init>()V

    invoke-virtual {p0, v0}, Landroid/test/ServiceTestCase;->setApplication(Landroid/app/Application;)V

    .line 163
    :cond_0
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    invoke-virtual {p0}, Landroid/test/AndroidTestCase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Landroid/test/ServiceTestCase;->mServiceClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/test/ServiceTestCase;->getApplication()Landroid/app/Application;

    move-result-object v5

    move-object v4, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/app/Service;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    invoke-static {v0}, Landroid/test/ServiceTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 174
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iput v0, p0, Landroid/test/ServiceTestCase;->mServiceId:I

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceAttached:Z

    .line 176
    return-void

    .line 157
    :catch_0
    move-exception v7

    .line 158
    .local v7, e:Ljava/lang/Exception;
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    invoke-static {v0}, Landroid/test/ServiceTestCase;->assertNotNull(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected shutdownService()V
    .locals 3

    .prologue
    .local p0, this:Landroid/test/ServiceTestCase;,"Landroid/test/ServiceTestCase<TT;>;"
    const/4 v2, 0x0

    .line 257
    iget-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceStarted:Z

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 259
    iput-boolean v2, p0, Landroid/test/ServiceTestCase;->mServiceStarted:Z

    .line 264
    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceCreated:Z

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->onDestroy()V

    .line 267
    :cond_1
    return-void

    .line 260
    :cond_2
    iget-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceBound:Z

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    iget-object v1, p0, Landroid/test/ServiceTestCase;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 262
    iput-boolean v2, p0, Landroid/test/ServiceTestCase;->mServiceBound:Z

    goto :goto_0
.end method

.method protected startService(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .local p0, this:Landroid/test/ServiceTestCase;,"Landroid/test/ServiceTestCase<TT;>;"
    const/4 v3, 0x1

    .line 189
    iget-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceAttached:Z

    if-nez v0, :cond_0

    .line 190
    invoke-virtual {p0}, Landroid/test/ServiceTestCase;->setupService()V

    .line 192
    :cond_0
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    invoke-static {v0}, Landroid/test/ServiceTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 194
    iget-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceCreated:Z

    if-nez v0, :cond_1

    .line 195
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->onCreate()V

    .line 196
    iput-boolean v3, p0, Landroid/test/ServiceTestCase;->mServiceCreated:Z

    .line 198
    :cond_1
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    const/4 v1, 0x0

    iget v2, p0, Landroid/test/ServiceTestCase;->mServiceId:I

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 200
    iput-boolean v3, p0, Landroid/test/ServiceTestCase;->mServiceStarted:Z

    .line 201
    return-void
.end method

.method protected tearDown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 284
    .local p0, this:Landroid/test/ServiceTestCase;,"Landroid/test/ServiceTestCase<TT;>;"
    invoke-virtual {p0}, Landroid/test/ServiceTestCase;->shutdownService()V

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    .line 290
    const-class v0, Landroid/test/ServiceTestCase;

    invoke-virtual {p0, v0}, Landroid/test/AndroidTestCase;->scrubClass(Ljava/lang/Class;)V

    .line 292
    invoke-super {p0}, Landroid/test/AndroidTestCase;->tearDown()V

    .line 293
    return-void
.end method

.method public testServiceTestCaseSetUpProperly()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 336
    .local p0, this:Landroid/test/ServiceTestCase;,"Landroid/test/ServiceTestCase<TT;>;"
    invoke-virtual {p0}, Landroid/test/ServiceTestCase;->setupService()V

    .line 337
    const-string v0, "service should be launched successfully"

    iget-object v1, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    invoke-static {v0, v1}, Landroid/test/ServiceTestCase;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 338
    return-void
.end method
