.class Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;
.super Ljava/lang/Object;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SaveWebArchiveMessage"
.end annotation


# instance fields
.field final mAutoname:Z

.field final mBasename:Ljava/lang/String;

.field final mCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mResultFile:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V
    .locals 0
    .parameter "basename"
    .parameter "autoname"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3715
    .local p3, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3716
    iput-object p1, p0, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;->mBasename:Ljava/lang/String;

    .line 3717
    iput-boolean p2, p0, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;->mAutoname:Z

    .line 3718
    iput-object p3, p0, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;->mCallback:Landroid/webkit/ValueCallback;

    .line 3719
    return-void
.end method
