.class Lcom/sec/android/touchwiz/widget/TwEndEffectController$2;
.super Ljava/lang/Object;
.source "TwEndEffectController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwEndEffectController;->startTextShakingAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwEndEffectController;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwEndEffectController;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController$2;->this$0:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter "anim"

    .prologue
    .line 265
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController$2;->this$0:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    #setter for: Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mCurrentAnimationValue:F
    invoke-static {v1, v0}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->access$202(Lcom/sec/android/touchwiz/widget/TwEndEffectController;F)F

    .line 266
    return-void
.end method
