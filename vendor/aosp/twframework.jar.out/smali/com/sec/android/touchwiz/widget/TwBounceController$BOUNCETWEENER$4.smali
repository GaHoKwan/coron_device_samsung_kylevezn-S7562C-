.class final Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER$4;
.super Ljava/lang/Object;
.source "TwBounceController.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwBounceController$Tweener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compute(ZF)F
    .locals 6
    .parameter "isStartFromDrag"
    .parameter "t"

    .prologue
    const/high16 v5, 0x3f80

    .line 502
    const/4 v0, 0x0

    .line 504
    .local v0, ret:F
    if-eqz p1, :cond_1

    .line 505
    add-float v1, p2, v5

    const v2, 0x40490fdb

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f00

    mul-float p2, v1, v2

    .line 509
    :goto_0
    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v0, v1

    .line 511
    cmpl-float v1, v0, v5

    if-lez v1, :cond_2

    .line 512
    const/high16 v0, 0x3f80

    .line 516
    :cond_0
    :goto_1
    return v0

    .line 507
    :cond_1
    float-to-double v1, p2

    const-wide v3, 0x400921fb54442d18L

    mul-double/2addr v1, v3

    double-to-float p2, v1

    goto :goto_0

    .line 513
    :cond_2
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 514
    const/4 v0, 0x0

    goto :goto_1
.end method
