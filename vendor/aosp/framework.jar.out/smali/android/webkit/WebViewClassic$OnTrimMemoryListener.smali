.class Landroid/webkit/WebViewClassic$OnTrimMemoryListener;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnTrimMemoryListener"
.end annotation


# static fields
.field private static sInstance:Landroid/webkit/WebViewClassic$OnTrimMemoryListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1330
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/WebViewClassic$OnTrimMemoryListener;->sInstance:Landroid/webkit/WebViewClassic$OnTrimMemoryListener;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 1338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1339
    invoke-virtual {p1, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 1340
    return-void
.end method

.method static init(Landroid/content/Context;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 1333
    sget-object v0, Landroid/webkit/WebViewClassic$OnTrimMemoryListener;->sInstance:Landroid/webkit/WebViewClassic$OnTrimMemoryListener;

    if-nez v0, :cond_0

    .line 1334
    new-instance v0, Landroid/webkit/WebViewClassic$OnTrimMemoryListener;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebViewClassic$OnTrimMemoryListener;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/webkit/WebViewClassic$OnTrimMemoryListener;->sInstance:Landroid/webkit/WebViewClassic$OnTrimMemoryListener;

    .line 1336
    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 1345
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 1350
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .parameter "level"

    .prologue
    .line 1361
    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    .line 1362
    invoke-static {}, Landroid/webkit/HTML5VideoInline;->cleanupSurfaceTexture()V

    .line 1364
    :cond_0
    #calls: Landroid/webkit/WebViewClassic;->nativeOnTrimMemory(I)V
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->access$1800(I)V

    .line 1365
    return-void
.end method
