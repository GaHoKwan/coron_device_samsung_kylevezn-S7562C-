.class public Lcom/android/internal/policy/impl/sec/CircleUnlockView$SineEaseInOut;
.super Ljava/lang/Object;
.source "CircleUnlockView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/CircleUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SineEaseInOut"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/CircleUnlockView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/CircleUnlockView;)V
    .locals 0
    .parameter

    .prologue
    .line 779
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView$SineEaseInOut;->this$0:Lcom/android/internal/policy/impl/sec/CircleUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 780
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/sec/CircleUnlockView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 782
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView$SineEaseInOut;->this$0:Lcom/android/internal/policy/impl/sec/CircleUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .parameter "input"

    .prologue
    const/high16 v2, 0x3f80

    .line 786
    const/high16 v0, -0x4100

    const v1, 0x40490fdb

    mul-float/2addr v1, p1

    div-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->cos(F)F

    move-result v1

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    add-float/2addr v0, v1

    return v0
.end method
