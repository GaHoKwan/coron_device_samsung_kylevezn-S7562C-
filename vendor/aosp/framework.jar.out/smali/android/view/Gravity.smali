.class public Landroid/view/Gravity;
.super Ljava/lang/Object;
.source "Gravity.java"


# static fields
.field public static final ARRANGE_BOTTOM_UPPER_SIP:I = -0x80000000

.field public static final ARRANGE_CENTER_UPPER_SIP:I = 0x20000000

.field public static final ARRANGE_FULL_UPPER_SIP:I = 0x40000000

.field public static final ARRANGE_SIP_MASK:I = -0x20000000

.field public static final AXIS_CLIP:I = 0x8

.field public static final AXIS_PULL_AFTER:I = 0x4

.field public static final AXIS_PULL_BEFORE:I = 0x2

.field public static final AXIS_SPECIFIED:I = 0x1

.field public static final AXIS_X_SHIFT:I = 0x0

.field public static final AXIS_Y_SHIFT:I = 0x4

.field public static final BOTTOM:I = 0x50

.field public static final CENTER:I = 0x11

.field public static final CENTER_HORIZONTAL:I = 0x1

.field public static final CENTER_VERTICAL:I = 0x10

.field public static final CLIP_HORIZONTAL:I = 0x8

.field public static final CLIP_VERTICAL:I = 0x80

.field public static final DISPLAY_CLIP_HORIZONTAL:I = 0x1000000

.field public static final DISPLAY_CLIP_VERTICAL:I = 0x10000000

.field public static final END:I = 0x800005

.field public static final FILL:I = 0x77

.field public static final FILL_HORIZONTAL:I = 0x7

.field public static final FILL_VERTICAL:I = 0x70

.field public static final HORIZONTAL_GRAVITY_MASK:I = 0x7

.field public static final LEFT:I = 0x3

.field public static final NO_GRAVITY:I = 0x0

.field public static final RELATIVE_HORIZONTAL_GRAVITY_MASK:I = 0x800007

.field public static final RELATIVE_LAYOUT_DIRECTION:I = 0x800000

.field public static final RIGHT:I = 0x5

.field public static final START:I = 0x800003

.field public static final TOP:I = 0x30

.field public static final VERTICAL_GRAVITY_MASK:I = 0x70


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 5
    .parameter "gravity"
    .parameter "w"
    .parameter "h"
    .parameter "container"
    .parameter "xAdj"
    .parameter "yAdj"
    .parameter "outRect"

    .prologue
    const/16 v4, 0x80

    const/16 v3, 0x8

    .line 212
    const/high16 v0, 0x2000

    if-ne p0, v0, :cond_1

    .line 214
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 215
    iget v0, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 216
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 217
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iput v0, p6, Landroid/graphics/Rect;->right:I

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    const/high16 v0, -0x8000

    if-ne p0, v0, :cond_2

    .line 222
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 223
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 224
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 225
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iput v0, p6, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 229
    :cond_2
    const/high16 v0, 0x4000

    if-ne p0, v0, :cond_3

    .line 231
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 232
    iget v0, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 233
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 234
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iput v0, p6, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 239
    :cond_3
    and-int/lit8 v0, p0, 0x6

    packed-switch v0, :pswitch_data_0

    .line 275
    :pswitch_0
    iget v0, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 276
    iget v0, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->right:I

    .line 280
    :cond_4
    :goto_1
    and-int/lit8 v0, p0, 0x60

    sparse-switch v0, :sswitch_data_0

    .line 316
    iget v0, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 317
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 241
    :pswitch_1
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 243
    iget v0, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p6, Landroid/graphics/Rect;->right:I

    .line 244
    and-int/lit8 v0, p0, 0x8

    if-ne v0, v3, :cond_4

    .line 246
    iget v0, p6, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_5

    .line 247
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 249
    :cond_5
    iget v0, p6, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_4

    .line 250
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iput v0, p6, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 255
    :pswitch_2
    iget v0, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 256
    iget v0, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p6, Landroid/graphics/Rect;->right:I

    .line 257
    and-int/lit8 v0, p0, 0x8

    if-ne v0, v3, :cond_4

    .line 259
    iget v0, p6, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_4

    .line 260
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iput v0, p6, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 265
    :pswitch_3
    iget v0, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->right:I

    .line 266
    iget v0, p6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p1

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 267
    and-int/lit8 v0, p0, 0x8

    if-ne v0, v3, :cond_4

    .line 269
    iget v0, p6, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_4

    .line 270
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iput v0, p6, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 282
    :sswitch_0
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 284
    iget v0, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 285
    and-int/lit16 v0, p0, 0x80

    if-ne v0, v4, :cond_0

    .line 287
    iget v0, p6, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_6

    .line 288
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 290
    :cond_6
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_0

    .line 291
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 296
    :sswitch_1
    iget v0, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 297
    iget v0, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 298
    and-int/lit16 v0, p0, 0x80

    if-ne v0, v4, :cond_0

    .line 300
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_0

    .line 301
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 306
    :sswitch_2
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 307
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 308
    and-int/lit16 v0, p0, 0x80

    if-ne v0, v4, :cond_0

    .line 310
    iget v0, p6, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_0

    .line 311
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iput v0, p6, Landroid/graphics/Rect;->top:I

    goto/16 :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 280
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x20 -> :sswitch_1
        0x40 -> :sswitch_2
    .end sparse-switch
.end method

.method public static apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V
    .locals 7
    .parameter "gravity"
    .parameter "w"
    .parameter "h"
    .parameter "container"
    .parameter "xAdj"
    .parameter "yAdj"
    .parameter "outRect"
    .parameter "layoutDirection"

    .prologue
    .line 350
    invoke-static {p0, p7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .local v0, absGravity:I
    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 351
    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 352
    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7
    .parameter "gravity"
    .parameter "w"
    .parameter "h"
    .parameter "container"
    .parameter "outRect"

    .prologue
    const/4 v4, 0x0

    .line 161
    move v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v4

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 162
    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 7
    .parameter "gravity"
    .parameter "w"
    .parameter "h"
    .parameter "container"
    .parameter "outRect"
    .parameter "layoutDirection"

    .prologue
    const/4 v4, 0x0

    .line 184
    invoke-static {p0, p5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .local v0, absGravity:I
    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v4

    move-object v6, p4

    .line 185
    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 186
    return-void
.end method

.method public static applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "gravity"
    .parameter "display"
    .parameter "inoutObj"

    .prologue
    .line 371
    const/high16 v1, 0x1000

    and-int/2addr v1, p0

    if-eqz v1, :cond_4

    .line 372
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 373
    :cond_0
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_1

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 389
    :cond_1
    :goto_0
    const/high16 v1, 0x100

    and-int/2addr v1, p0

    if-eqz v1, :cond_8

    .line 390
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_2

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 391
    :cond_2
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_3

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 406
    :cond_3
    :goto_1
    return-void

    .line 375
    :cond_4
    const/4 v0, 0x0

    .line 376
    .local v0, off:I
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_6

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v2

    .line 378
    :cond_5
    :goto_2
    if-eqz v0, :cond_1

    .line 379
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_7

    .line 380
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 381
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 377
    :cond_6
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_5

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v2

    goto :goto_2

    .line 383
    :cond_7
    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 384
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 393
    .end local v0           #off:I
    :cond_8
    const/4 v0, 0x0

    .line 394
    .restart local v0       #off:I
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_a

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int v0, v1, v2

    .line 396
    :cond_9
    :goto_3
    if-eqz v0, :cond_3

    .line 397
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_b

    .line 398
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 399
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 395
    :cond_a
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_9

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int v0, v1, v2

    goto :goto_3

    .line 401
    :cond_b
    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 402
    iget v1, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_1
.end method

.method public static applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 1
    .parameter "gravity"
    .parameter "display"
    .parameter "inoutObj"
    .parameter "layoutDirection"

    .prologue
    .line 430
    invoke-static {p0, p3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 431
    .local v0, absGravity:I
    invoke-static {v0, p1, p2}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 432
    return-void
.end method

.method public static getAbsoluteGravity(II)I
    .locals 5
    .parameter "gravity"
    .parameter "layoutDirection"

    .prologue
    const v4, 0x800005

    const v3, 0x800003

    const/4 v2, 0x1

    .line 467
    move v0, p0

    .line 469
    .local v0, result:I
    const/high16 v1, 0x80

    and-int/2addr v1, v0

    if-lez v1, :cond_1

    .line 470
    and-int v1, v0, v3

    if-ne v1, v3, :cond_3

    .line 472
    const v1, -0x800004

    and-int/2addr v0, v1

    .line 473
    if-ne p1, v2, :cond_2

    .line 475
    or-int/lit8 v0, v0, 0x5

    .line 493
    :cond_0
    :goto_0
    const v1, -0x800001

    and-int/2addr v0, v1

    .line 495
    :cond_1
    return v0

    .line 478
    :cond_2
    or-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 480
    :cond_3
    and-int v1, v0, v4

    if-ne v1, v4, :cond_0

    .line 482
    const v1, -0x800006

    and-int/2addr v0, v1

    .line 483
    if-ne p1, v2, :cond_4

    .line 485
    or-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 488
    :cond_4
    or-int/lit8 v0, v0, 0x5

    goto :goto_0
.end method

.method public static isHorizontal(I)Z
    .locals 1
    .parameter "gravity"

    .prologue
    .line 451
    if-lez p0, :cond_0

    const v0, 0x800007

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVertical(I)Z
    .locals 1
    .parameter "gravity"

    .prologue
    .line 441
    if-lez p0, :cond_0

    and-int/lit8 v0, p0, 0x70

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
