.class public abstract Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;
.super Ljava/lang/Object;
.source "TwAnimatedGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemAnimation"
.end annotation


# static fields
.field public static final TYPE_CUSTOM_DRAW:I = 0x1

.field public static final TYPE_MATRIX_MODIFICATION:I


# instance fields
.field private mDefaultType:I

.field private mRetainOnFinish:Z


# direct methods
.method protected constructor <init>(IZ)V
    .locals 1
    .parameter "type"
    .parameter "retainOnFinish"

    .prologue
    const/4 v0, 0x0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;->mDefaultType:I

    .line 172
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;->mRetainOnFinish:Z

    .line 175
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;->mDefaultType:I

    .line 176
    iput-boolean p2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;->mRetainOnFinish:Z

    .line 177
    return-void
.end method


# virtual methods
.method public abstract computeAnimation(J)V
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 0
    .parameter "canvas"
    .parameter "child"

    .prologue
    .line 213
    return-void
.end method

.method public getRetainOnFinish()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;->mRetainOnFinish:Z

    return v0
.end method

.method public getTransformation(Landroid/view/animation/Transformation;)V
    .locals 0
    .parameter "outTransform"

    .prologue
    .line 207
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;->mDefaultType:I

    return v0
.end method

.method public abstract isFinished()Z
.end method
