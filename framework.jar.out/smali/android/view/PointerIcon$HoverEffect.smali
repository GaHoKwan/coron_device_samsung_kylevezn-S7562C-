.class Landroid/view/PointerIcon$HoverEffect;
.super Ljava/lang/Object;
.source "PointerIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/PointerIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HoverEffect"
.end annotation


# instance fields
.field private mHoverSound:Landroid/media/SoundPool;

.field private final mIvt_Phone:[B

.field private final mIvt_Tablet:[B

.field private mSoundId:I

.field private mVibrator:Landroid/os/SystemVibrator;

.field private final soundURIs:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x1a

    .line 827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 828
    const-string v0, "/media/audio/ui/HoverPointer.ogg"

    iput-object v0, p0, Landroid/view/PointerIcon$HoverEffect;->soundURIs:Ljava/lang/String;

    .line 832
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/PointerIcon$HoverEffect;->mSoundId:I

    .line 835
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/view/PointerIcon$HoverEffect;->mIvt_Tablet:[B

    .line 844
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/view/PointerIcon$HoverEffect;->mIvt_Phone:[B

    return-void

    .line 835
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x0t
        0x1t
        0x0t
        0x12t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x30t
        0x0t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0xa2t
    .end array-data

    .line 844
    nop

    :array_1
    .array-data 0x1
        0x1t
        0x0t
        0x1t
        0x0t
        0x12t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x30t
        0x0t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
        0x40t
        0x0t
        0x0t
        0xa2t
    .end array-data
.end method

.method synthetic constructor <init>(Landroid/view/PointerIcon$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 827
    invoke-direct {p0}, Landroid/view/PointerIcon$HoverEffect;-><init>()V

    return-void
.end method


# virtual methods
.method playSound(I)V
    .locals 9
    .parameter "type"

    .prologue
    const/4 v5, 0x0

    const/high16 v2, 0x3f80

    const/4 v4, 0x1

    .line 854
    iget-object v0, p0, Landroid/view/PointerIcon$HoverEffect;->mHoverSound:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 855
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v4, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Landroid/view/PointerIcon$HoverEffect;->mHoverSound:Landroid/media/SoundPool;

    .line 858
    :cond_0
    iget v0, p0, Landroid/view/PointerIcon$HoverEffect;->mSoundId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/audio/ui/HoverPointer.ogg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 860
    .local v8, soundPath:Ljava/lang/String;
    iget-object v0, p0, Landroid/view/PointerIcon$HoverEffect;->mHoverSound:Landroid/media/SoundPool;

    invoke-virtual {v0, v8, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/PointerIcon$HoverEffect;->mSoundId:I

    .line 863
    .end local v8           #soundPath:Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/view/PointerIcon$HoverEffect;->mHoverSound:Landroid/media/SoundPool;

    iget v1, p0, Landroid/view/PointerIcon$HoverEffect;->mSoundId:I

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    .line 864
    .local v7, ret:I
    return-void
.end method

.method playVibrator(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 867
    iget-object v0, p0, Landroid/view/PointerIcon$HoverEffect;->mVibrator:Landroid/os/SystemVibrator;

    if-nez v0, :cond_0

    .line 868
    invoke-static {}, Landroid/view/PointerIcon;->access$300()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Landroid/view/PointerIcon$HoverEffect;->mVibrator:Landroid/os/SystemVibrator;

    .line 871
    :cond_0
    invoke-static {}, Landroid/util/GeneralUtil;->isPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 872
    iget-object v0, p0, Landroid/view/PointerIcon$HoverEffect;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v1, p0, Landroid/view/PointerIcon$HoverEffect;->mIvt_Phone:[B

    invoke-virtual {v0, v1}, Landroid/os/SystemVibrator;->vibrateImmVibe([B)V

    .line 876
    :goto_0
    return-void

    .line 874
    :cond_1
    iget-object v0, p0, Landroid/view/PointerIcon$HoverEffect;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v1, p0, Landroid/view/PointerIcon$HoverEffect;->mIvt_Tablet:[B

    invoke-virtual {v0, v1}, Landroid/os/SystemVibrator;->vibrateImmVibe([B)V

    goto :goto_0
.end method
