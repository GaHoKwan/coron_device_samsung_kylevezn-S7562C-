.class Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$1;
.super Ljava/lang/Object;
.source "CircleUnlockRippleRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->startLongPressCheck(Landroid/view/View;FFJF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;

.field final synthetic val$pIntensity:F


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;

    iput p2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$1;->val$pIntensity:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;

    iget v1, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmx:F

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;

    iget v2, v2, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmy:F

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;

    iget v3, v3, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    iget v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$1;->val$pIntensity:F

    mul-float/2addr v3, v4

    #calls: Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->ripple(FFF)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->access$000(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;FFF)V

    .line 1162
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;

    iget-object v1, v1, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->stopLongPressCheck(Landroid/view/View;)V

    .line 1163
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->access$102(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1165
    return-void
.end method
