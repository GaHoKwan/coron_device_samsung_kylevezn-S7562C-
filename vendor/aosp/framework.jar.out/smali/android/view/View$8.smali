.class final Landroid/view/View$8;
.super Landroid/util/FloatProperty;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17197
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Float;
    .locals 1
    .parameter "object"

    .prologue
    .line 17205
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17197
    check-cast p1, Landroid/view/View;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/view/View$8;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Landroid/view/View;F)V
    .locals 0
    .parameter "object"
    .parameter "value"

    .prologue
    .line 17200
    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    .line 17201
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17197
    check-cast p1, Landroid/view/View;

    .end local p1
    invoke-virtual {p0, p1, p2}, Landroid/view/View$8;->setValue(Landroid/view/View;F)V

    return-void
.end method
