.class Landroid/webkit/WebViewCore$SelectionCopiedData;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SelectionCopiedData"
.end annotation


# instance fields
.field isMulticol:Z

.field mCharacterSelectRegion:Landroid/graphics/Region;

.field mEndBoundRect:Landroid/graphics/Rect;

.field mGranularity:I

.field mSelectRegion:Landroid/graphics/Region;

.field mSelectionController:I

.field mStartBoundRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1333
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    .line 1334
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mCharacterSelectRegion:Landroid/graphics/Region;

    .line 1335
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    .line 1336
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    .line 1337
    return-void
.end method
