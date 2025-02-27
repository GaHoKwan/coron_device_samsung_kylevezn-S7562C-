.class public Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLItemThumbnailButton.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "TwGLItemThumbnailButton"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mButton:Lcom/sec/android/glview/TwGLSelectButton;

.field private mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

.field private mCommandId:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFI)V
    .locals 1
    .parameter "activityContext"
    .parameter "left"
    .parameter "top"
    .parameter "commandId"

    .prologue
    .line 26
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 28
    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCommandId:I

    .line 29
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 30
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 31
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 33
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->refreshButton()V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/glview/TwGLSelectButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/glview/TwGLView$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/glview/TwGLView$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/glview/TwGLView$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/glview/TwGLView$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/glview/TwGLView$OnFocusListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/glview/TwGLView$OnFocusListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/glview/TwGLView$OnFocusListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/glview/TwGLView$OnFocusListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    return-object v0
.end method

.method private refreshButton()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v8

    .line 75
    .local v8, res:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    if-nez v8, :cond_0

    .line 76
    const-string v0, "TwGLItemThumbnailButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing resource for CommandID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCommandId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    if-nez v0, :cond_1

    .line 81
    new-instance v0, Lcom/sec/android/glview/TwGLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v4, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v5, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v6, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    move v3, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLSelectButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCommandId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getSettingValue(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCommandId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLSelectButton;->setSelected(Z)V

    .line 93
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$3;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    goto :goto_0

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLSelectButton;->setSelected(Z)V

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->unregisterCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 40
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->clear()V

    .line 44
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    .line 46
    :cond_1
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 47
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 2
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isActivityDestoying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->refreshButton()V

    goto :goto_0
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 4
    .parameter "gl"

    .prologue
    .line 145
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 146
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/android/glview/TwGLView;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    goto :goto_0

    .line 149
    :cond_0
    return-void
.end method

.method public setExtraDescription(Z)V
    .locals 1
    .parameter "hasExtraDescription"

    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setExtraDescription(Z)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->setExtraDescription(Z)V

    .line 174
    :cond_0
    return-void
.end method

.method public setHoverPopupGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setHoverPopupGravity(I)V

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->setHoverPopupGravity(I)V

    .line 190
    :cond_0
    return-void
.end method

.method public setHoverPopupOffset(II)V
    .locals 1
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 177
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setHoverPopupOffset(II)V

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setHoverPopupOffset(II)V

    .line 182
    :cond_0
    return-void
.end method

.method public setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    .line 127
    if-nez p1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 141
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$4;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    goto :goto_0
.end method

.method public setResourceOffset(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 64
    :cond_0
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    .line 70
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized setSize(FF)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    .line 165
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "subtitle"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->setSubTitle(Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method
