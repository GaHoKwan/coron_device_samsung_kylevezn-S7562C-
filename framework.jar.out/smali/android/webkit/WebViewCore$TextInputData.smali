.class Landroid/webkit/WebViewCore$TextInputData;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextInputData"
.end annotation


# instance fields
.field mEnd:I

.field mSelectTextPtr:I

.field mStart:I

.field mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0
    .parameter "start"
    .parameter "end"
    .parameter "selectTextPtr"
    .parameter "text"

    .prologue
    .line 1182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1183
    iput p1, p0, Landroid/webkit/WebViewCore$TextInputData;->mStart:I

    .line 1184
    iput p2, p0, Landroid/webkit/WebViewCore$TextInputData;->mEnd:I

    .line 1185
    iput-object p4, p0, Landroid/webkit/WebViewCore$TextInputData;->mText:Ljava/lang/String;

    .line 1186
    iput p3, p0, Landroid/webkit/WebViewCore$TextInputData;->mSelectTextPtr:I

    .line 1187
    return-void
.end method
