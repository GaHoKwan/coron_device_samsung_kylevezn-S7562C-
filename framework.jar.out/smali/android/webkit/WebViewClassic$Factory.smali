.class Landroid/webkit/WebViewClassic$Factory;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/webkit/WebViewFactoryProvider$Statics;
.implements Landroid/webkit/WebViewFactoryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createWebView(Landroid/webkit/WebView;Landroid/webkit/WebView$PrivateAccess;)Landroid/webkit/WebViewProvider;
    .locals 1
    .parameter "webView"
    .parameter "privateAccess"

    .prologue
    .line 2221
    new-instance v0, Landroid/webkit/WebViewClassic;

    invoke-direct {v0, p1, p2}, Landroid/webkit/WebViewClassic;-><init>(Landroid/webkit/WebView;Landroid/webkit/WebView$PrivateAccess;)V

    return-object v0
.end method

.method public findAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "addr"

    .prologue
    .line 2205
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCookieManager()Landroid/webkit/CookieManager;
    .locals 1

    .prologue
    .line 2231
    invoke-static {}, Landroid/webkit/CookieManagerClassic;->getInstance()Landroid/webkit/CookieManagerClassic;

    move-result-object v0

    return-object v0
.end method

.method public getGeolocationPermissions()Landroid/webkit/GeolocationPermissions;
    .locals 1

    .prologue
    .line 2226
    invoke-static {}, Landroid/webkit/GeolocationPermissionsClassic;->getInstance()Landroid/webkit/GeolocationPermissionsClassic;

    move-result-object v0

    return-object v0
.end method

.method public getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;
    .locals 0

    .prologue
    .line 2217
    return-object p0
.end method

.method public getWebIconDatabase()Landroid/webkit/WebIconDatabase;
    .locals 1

    .prologue
    .line 2236
    invoke-static {}, Landroid/webkit/WebIconDatabaseClassic;->getInstance()Landroid/webkit/WebIconDatabaseClassic;

    move-result-object v0

    return-object v0
.end method

.method public getWebStorage()Landroid/webkit/WebStorage;
    .locals 1

    .prologue
    .line 2241
    invoke-static {}, Landroid/webkit/WebStorageClassic;->getInstance()Landroid/webkit/WebStorageClassic;

    move-result-object v0

    return-object v0
.end method

.method public getWebViewDatabase(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;
    .locals 1
    .parameter "context"

    .prologue
    .line 2246
    invoke-static {p1}, Landroid/webkit/WebViewDatabaseClassic;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabaseClassic;

    move-result-object v0

    return-object v0
.end method

.method public setPlatformNotificationsEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 2209
    if-eqz p1, :cond_0

    .line 2210
    invoke-static {}, Landroid/webkit/WebViewClassic;->enablePlatformNotifications()V

    .line 2214
    :goto_0
    return-void

    .line 2212
    :cond_0
    invoke-static {}, Landroid/webkit/WebViewClassic;->disablePlatformNotifications()V

    goto :goto_0
.end method
