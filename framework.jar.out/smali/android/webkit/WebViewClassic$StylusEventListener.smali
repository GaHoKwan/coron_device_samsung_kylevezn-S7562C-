.class Landroid/webkit/WebViewClassic$StylusEventListener;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StylusEventListener"
.end annotation


# instance fields
.field private final DELTA:I

.field private final HORIZONAL_THRESHOLD:I

.field private final VERTICAL_THRESHOLD:I

.field private mDirLTR:Z

.field private mMaxX:F

.field private mPressed:Z

.field private mSelectionSound:Landroid/media/SoundPool;

.field private mSoundId:I

.field private mStartX:F

.field private mStartY:F

.field private final soundURIs:Ljava/lang/String;

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method private constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 14010
    iput-object p1, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14011
    iput v1, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    .line 14012
    iput v1, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartY:F

    .line 14013
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mPressed:Z

    .line 14014
    iput v1, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mMaxX:F

    .line 14015
    const/16 v0, 0x14

    iput v0, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->DELTA:I

    .line 14016
    const/16 v0, 0x32

    iput v0, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->VERTICAL_THRESHOLD:I

    .line 14017
    const/16 v0, 0xa

    iput v0, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->HORIZONAL_THRESHOLD:I

    .line 14018
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mDirLTR:Z

    .line 14021
    const-string v0, "/media/audio/ui/TextSelection.ogg"

    iput-object v0, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->soundURIs:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14010
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic$StylusEventListener;-><init>(Landroid/webkit/WebViewClassic;)V

    return-void
.end method

.method private playSound()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/high16 v2, 0x3f80

    const/4 v4, 0x1

    .line 14190
    iget-object v0, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mSelectionSound:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 14191
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v4, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mSelectionSound:Landroid/media/SoundPool;

    .line 14193
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/audio/ui/TextSelection.ogg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 14194
    .local v7, soundPath:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mSelectionSound:Landroid/media/SoundPool;

    invoke-virtual {v0, v7, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mSoundId:I

    .line 14195
    iget-object v0, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mSelectionSound:Landroid/media/SoundPool;

    iget v1, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mSoundId:I

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 14196
    return-void
.end method


# virtual methods
.method public onStylusButtonEvent(Landroid/view/MotionEvent;I)V
    .locals 14
    .parameter "event"
    .parameter "clipboardId"

    .prologue
    .line 14027
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 14028
    .local v0, action:I
    const/4 v8, 0x0

    .line 14029
    .local v8, startCurPositionX:I
    const/4 v9, 0x0

    .line 14030
    .local v9, startCurPositionY:I
    const/4 v1, 0x0

    .line 14031
    .local v1, endCurPositionX:I
    const/4 v2, 0x0

    .line 14033
    .local v2, endCurPositionY:I
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_1

    .line 14186
    :cond_0
    :goto_0
    return-void

    .line 14037
    :cond_1
    const-string/jumbo v11, "webview"

    const-string/jumbo v12, "onStylusButtonEvent start"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14039
    packed-switch v0, :pswitch_data_0

    .line 14185
    :cond_2
    :goto_1
    const-string/jumbo v11, "webview"

    const-string/jumbo v12, "onStylusButtonEvent END"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 14041
    :pswitch_0
    iget-boolean v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mPressed:Z

    if-eqz v11, :cond_2

    .line 14046
    iget v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mMaxX:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_6

    .line 14047
    iget v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_5

    iget v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    const/high16 v13, 0x41a0

    add-float/2addr v12, v13

    cmpg-float v11, v11, v12

    if-gez v11, :cond_5

    .line 14048
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mDirLTR:Z

    .line 14049
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    iput v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mMaxX:F

    .line 14072
    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    iget v12, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartY:F

    const/high16 v13, 0x4248

    add-float/2addr v12, v13

    cmpl-float v11, v11, v12

    if-gtz v11, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    iget v12, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartY:F

    const/high16 v13, 0x4248

    sub-float/2addr v12, v13

    cmpg-float v11, v11, v12

    if-gez v11, :cond_2

    .line 14073
    :cond_4
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mPressed:Z

    .line 14074
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v12, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static {v11, v12}, Landroid/webkit/WebViewClassic;->access$10002(Landroid/webkit/WebViewClassic;I)I

    .line 14075
    const-string/jumbo v11, "webview"

    const-string v12, "TextSelection is canceled because of height difference"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 14050
    :cond_5
    iget v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_3

    iget v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    const/high16 v13, 0x41a0

    add-float/2addr v12, v13

    cmpl-float v11, v11, v12

    if-lez v11, :cond_3

    .line 14051
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mDirLTR:Z

    .line 14052
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    iput v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mMaxX:F

    goto :goto_2

    .line 14054
    :cond_6
    iget-boolean v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mDirLTR:Z

    if-eqz v11, :cond_8

    .line 14055
    iget v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mMaxX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_7

    .line 14056
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    iput v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mMaxX:F

    goto :goto_2

    .line 14057
    :cond_7
    iget v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mMaxX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    const/high16 v13, 0x41a0

    add-float/2addr v12, v13

    cmpl-float v11, v11, v12

    if-lez v11, :cond_3

    .line 14058
    const-string/jumbo v11, "webview"

    const-string v12, "TextSelection is canceled because of wrong X position, DirLTR"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14059
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v12, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static {v11, v12}, Landroid/webkit/WebViewClassic;->access$10002(Landroid/webkit/WebViewClassic;I)I

    .line 14060
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mPressed:Z

    goto :goto_2

    .line 14062
    :cond_8
    iget-boolean v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mDirLTR:Z

    if-nez v11, :cond_3

    .line 14063
    iget v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mMaxX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_9

    .line 14064
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    iput v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mMaxX:F

    goto/16 :goto_2

    .line 14065
    :cond_9
    iget v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mMaxX:F

    const/high16 v12, 0x41a0

    add-float/2addr v11, v12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_3

    .line 14066
    const-string/jumbo v11, "webview"

    const-string v12, "TextSelection is canceled because of wrong X position, DirRTL"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14067
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v12, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static {v11, v12}, Landroid/webkit/WebViewClassic;->access$10002(Landroid/webkit/WebViewClassic;I)I

    .line 14068
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mPressed:Z

    goto/16 :goto_2

    .line 14081
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    iput v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    .line 14083
    const/4 v11, 0x0

    iput v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mMaxX:F

    .line 14084
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    iput v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartY:F

    .line 14085
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mPressed:Z

    .line 14086
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v12, 0x1

    #setter for: Landroid/webkit/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static {v11, v12}, Landroid/webkit/WebViewClassic;->access$10002(Landroid/webkit/WebViewClassic;I)I

    .line 14087
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v12, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mActionMove:Z
    invoke-static {v11, v12}, Landroid/webkit/WebViewClassic;->access$12202(Landroid/webkit/WebViewClassic;Z)Z

    .line 14088
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v11, v11, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v11, :cond_a

    .line 14089
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 14091
    :cond_a
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectingText:Z
    invoke-static {v11}, Landroid/webkit/WebViewClassic;->access$10300(Landroid/webkit/WebViewClassic;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 14092
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto/16 :goto_1

    .line 14098
    :pswitch_2
    const/4 v3, 0x0

    .line 14099
    .local v3, endX:F
    const/4 v4, 0x0

    .line 14101
    .local v4, endY:F
    iget-boolean v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mPressed:Z

    if-eqz v11, :cond_0

    .line 14104
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 14105
    .local v6, rect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 14106
    .local v5, offset:Landroid/graphics/Point;
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v11}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v11

    invoke-virtual {v11, v6, v5}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 14107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 14108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 14110
    iget v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    iget v12, v5, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    iput v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    .line 14111
    iget v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartY:F

    iget v12, v5, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    iput v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartY:F

    .line 14112
    iget v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gez v11, :cond_b

    .line 14113
    const/4 v11, 0x0

    iput v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    .line 14115
    :cond_b
    iget v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartY:F

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gez v11, :cond_c

    .line 14116
    const/4 v11, 0x0

    iput v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartY:F

    .line 14118
    :cond_c
    iget v11, v5, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    sub-float/2addr v3, v11

    .line 14119
    iget v11, v5, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    sub-float/2addr v4, v11

    .line 14120
    const/4 v11, 0x0

    cmpg-float v11, v3, v11

    if-gez v11, :cond_d

    .line 14121
    const/4 v3, 0x0

    .line 14123
    :cond_d
    const/4 v11, 0x0

    cmpg-float v11, v4, v11

    if-gez v11, :cond_e

    .line 14124
    const/4 v4, 0x0

    .line 14130
    :cond_e
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    iget v12, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v8

    .line 14131
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    iget v12, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartY:F

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v9

    .line 14132
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    float-to-int v12, v3

    invoke-virtual {v11, v12}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v1

    .line 14133
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    float-to-int v12, v4

    invoke-virtual {v11, v12}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v2

    .line 14136
    if-eq v8, v1, :cond_f

    sub-int v11, v8, v1

    const/16 v12, 0xa

    if-ge v11, v12, :cond_10

    sub-int v11, v1, v8

    const/16 v12, 0xa

    if-ge v11, v12, :cond_10

    .line 14137
    :cond_f
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mPressed:Z

    .line 14138
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v12, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static {v11, v12}, Landroid/webkit/WebViewClassic;->access$10002(Landroid/webkit/WebViewClassic;I)I

    .line 14139
    const-string/jumbo v11, "webview"

    const-string v12, "TextSelection is canceled because the positions are same."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 14142
    :cond_10
    if-le v8, v1, :cond_11

    .line 14143
    move v10, v1

    .line 14144
    .local v10, temp:I
    move v1, v8

    .line 14145
    move v8, v10

    .line 14149
    .end local v10           #temp:I
    :cond_11
    const-string/jumbo v11, "webview"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mStartX "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mStartY "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartY:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14150
    const-string/jumbo v11, "webview"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "endX "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " endY "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14151
    const-string/jumbo v11, "webview"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "offset.x "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " offset.y "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14152
    const-string/jumbo v11, "webview"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "startCurPositionX "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " startCurPositionY "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14153
    const-string/jumbo v11, "webview"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "endCurPositionX "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " endCurPositionY "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14167
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v8, v9, v1, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 14168
    .local v7, selectRect:Landroid/graphics/Rect;
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v11

    if-eqz v11, :cond_12

    const/4 v11, 0x1

    iget-object v12, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v12}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v12

    invoke-virtual {v12}, Landroid/webkit/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v12

    if-ne v11, v12, :cond_12

    .line 14169
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->setUpAdvSelect()Z
    invoke-static {v11}, Landroid/webkit/WebViewClassic;->access$12300(Landroid/webkit/WebViewClassic;)Z

    .line 14171
    :cond_12
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v11}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;

    move-result-object v11

    const/16 v12, 0x22a

    invoke-virtual {v11, v12, v7}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 14172
    const-string/jumbo v11, "webview"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "action_up mSpenTextSelectionMode = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static {v13}, Landroid/webkit/WebViewClassic;->access$10000(Landroid/webkit/WebViewClassic;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14176
    iget-object v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v12, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static {v11, v12}, Landroid/webkit/WebViewClassic;->access$10002(Landroid/webkit/WebViewClassic;I)I

    .line 14177
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mPressed:Z

    goto/16 :goto_1

    .line 14182
    .end local v3           #endX:F
    .end local v4           #endY:F
    .end local v5           #offset:Landroid/graphics/Point;
    .end local v6           #rect:Landroid/graphics/Rect;
    .end local v7           #selectRect:Landroid/graphics/Rect;
    :pswitch_3
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mPressed:Z

    goto/16 :goto_1

    .line 14039
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
