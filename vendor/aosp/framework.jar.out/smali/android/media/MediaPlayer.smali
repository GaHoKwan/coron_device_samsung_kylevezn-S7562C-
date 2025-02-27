.class public Landroid/media/MediaPlayer;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayer$OnInfoListener;,
        Landroid/media/MediaPlayer$OnPlayReadyErrorListener;,
        Landroid/media/MediaPlayer$OnErrorListener;,
        Landroid/media/MediaPlayer$OnTimedTextListener;,
        Landroid/media/MediaPlayer$OnVideoSizeChangedListener;,
        Landroid/media/MediaPlayer$OnSeekCompleteListener;,
        Landroid/media/MediaPlayer$OnBufferingUpdateListener;,
        Landroid/media/MediaPlayer$OnCompletionListener;,
        Landroid/media/MediaPlayer$OnPreparedListener;,
        Landroid/media/MediaPlayer$EventHandler;,
        Landroid/media/MediaPlayer$TrackInfo;
    }
.end annotation


# static fields
.field public static final APPLY_METADATA_FILTER:Z = true

.field public static final BYPASS_METADATA_FILTER:Z = false

.field private static final IMEDIA_PLAYER:Ljava/lang/String; = "android.media.IMediaPlayer"

.field private static final IMEDIA_PLAYER_VIDEO_EXIST:Ljava/lang/String; = "android.media.IMediaPlayer.videoexist"

.field private static final INVOKE_ID_ADD_EXTERNAL_SOURCE:I = 0x2

.field private static final INVOKE_ID_ADD_EXTERNAL_SOURCE_FD:I = 0x3

.field private static final INVOKE_ID_DESELECT_TRACK:I = 0x5

.field private static final INVOKE_ID_GET_TRACK_INFO:I = 0x1

.field private static final INVOKE_ID_SELECT_TRACK:I = 0x4

.field private static final INVOKE_ID_SET_VIDEO_SCALE_MODE:I = 0x6

.field public static final KEY_PARAMETER_AIAMODE:I = 0x643

.field public static final KEY_PARAMETER_META_AUTHORIZATION:I = 0x640

.field public static final KEY_PARAMETER_META_VIDEOSNAPSHOT:I = 0x642

.field public static final KEY_PARAMETER_META_WEATHER:I = 0x641

.field public static final KEY_PARAMETER_TIMED_TEXT_TRACK_MULTI:I = 0x5de

.field public static final KEY_PARAMETER_TIMED_TEXT_TRACK_TIME_SYNC:I = 0x5dd

.field public static final KEY_PARAMETER_VIDEO_FPS:I = 0x5e1

.field public static final KEY_PARAMETER_VIDEO_TRUEBLUE:I = 0x5e2

.field private static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final MEDIA_ERROR:I = 0x64

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_ErrDrmDevCertRevoked:I = -0x3b

.field public static final MEDIA_ErrDrmLicenseExpired:I = 0x12d

.field public static final MEDIA_ErrDrmLicenseNotFound:I = 0x12c

.field public static final MEDIA_ErrDrmLicenseNotValidYet:I = 0x12e

.field public static final MEDIA_ErrDrmRightsAcquisitionFailed:I = -0x31

.field public static final MEDIA_ErrDrmServerDeviceLimitReached:I = -0x40

.field public static final MEDIA_ErrDrmServerDomainRequired:I = -0x3c

.field public static final MEDIA_ErrDrmServerInternalError:I = -0x3a

.field public static final MEDIA_ErrDrmServerNotAMember:I = -0x3d

.field public static final MEDIA_ErrDrmServerProtocolVersionMismatch:I = -0x3f

.field public static final MEDIA_ErrDrmServerUnknownAccountId:I = -0x3e

.field private static final MEDIA_INFO:I = 0xc8

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_STARTED_AS_NEXT:I = 0x2

.field public static final MEDIA_INFO_TIMED_TEXT_ERROR:I = 0x384

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_UNSUPPORTED_AUDIO:I = 0x3b6

.field public static final MEDIA_INFO_UNSUPPORTED_VIDEO:I = 0x3b7

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field public static final MEDIA_MIMETYPE_TEXT_SUBRIP:Ljava/lang/String; = "application/x-subrip"

.field private static final MEDIA_NOP:I = 0x0

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field private static final MEDIA_SET_VIDEO_SIZE:I = 0x5

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field public static final METADATA_ALL:Z = false

.field public static final METADATA_UPDATE_ONLY:Z = true

.field private static final TAG:Ljava/lang/String; = "MediaPlayer"

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2


# instance fields
.field public mAIAContext:Z

.field private mEventHandler:Landroid/media/MediaPlayer$EventHandler;

.field private mIsStart:Z

.field private mIsVideo:Z

.field private mListenerContext:I

.field private mNativeContext:I

.field private mNativeSurfaceTexture:I

.field private mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPlayReadyErrorListener:Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

.field private mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mScreenOnWhilePlaying:Z

.field private mStayAwake:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 575
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 576
    invoke-static {}, Landroid/media/MediaPlayer;->native_init()V

    .line 577
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    iput-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 594
    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mAIAContext:Z

    .line 595
    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mIsVideo:Z

    .line 596
    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mIsStart:Z

    .line 610
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 611
    new-instance v1, Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    .line 621
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Landroid/media/MediaPlayer;->native_setup(Ljava/lang/Object;)V

    .line 622
    return-void

    .line 612
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 613
    new-instance v1, Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_0

    .line 615
    :cond_1
    iput-object v2, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_0
.end method

.method private native _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _release()V
.end method

.method private native _reset()V
.end method

.method private native _setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setVideoSurface(Landroid/view/Surface;)V
.end method

.method private native _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method static synthetic access$000(Landroid/media/MediaPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 539
    iget v0, p0, Landroid/media/MediaPlayer;->mNativeContext:I

    return v0
.end method

.method static synthetic access$100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 539
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPlayReadyErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 539
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnPlayReadyErrorListener:Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 539
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 539
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 539
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/MediaPlayer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 539
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method static synthetic access$400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 539
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 539
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 539
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$702(Landroid/media/MediaPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 539
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mIsVideo:Z

    return p1
.end method

.method static synthetic access$800(Landroid/media/MediaPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 539
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mIsStart:Z

    return v0
.end method

.method static synthetic access$900(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 539
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method private static availableMimeTypeForExternalSource(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 1952
    const-string v0, "application/x-subrip"

    if-ne p0, v0, :cond_0

    .line 1953
    const/4 v0, 0x1

    .line 1955
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;I)Landroid/media/MediaPlayer;
    .locals 9
    .parameter "context"
    .parameter "resid"

    .prologue
    const/4 v8, 0x0

    .line 857
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 858
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    if-nez v6, :cond_0

    move-object v0, v8

    .line 875
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return-object v0

    .line 860
    .restart local v6       #afd:Landroid/content/res/AssetFileDescriptor;
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 861
    .local v0, mp:Landroid/media/MediaPlayer;
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 862
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 863
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 865
    .end local v0           #mp:Landroid/media/MediaPlayer;
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v7

    .line 866
    .local v7, ex:Ljava/io/IOException;
    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v7           #ex:Ljava/io/IOException;
    :goto_1
    move-object v0, v8

    .line 875
    goto :goto_0

    .line 868
    :catch_1
    move-exception v7

    .line 869
    .local v7, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 871
    .end local v7           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v7

    .line 872
    .local v7, ex:Ljava/lang/SecurityException;
    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 802
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;
    .locals 4
    .parameter "context"
    .parameter "uri"
    .parameter "holder"

    .prologue
    .line 820
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 821
    .local v1, mp:Landroid/media/MediaPlayer;
    invoke-virtual {v1, p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 822
    if-eqz p2, :cond_0

    .line 823
    invoke-virtual {v1, p2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 825
    :cond_0
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 838
    .end local v1           #mp:Landroid/media/MediaPlayer;
    :goto_0
    return-object v1

    .line 827
    :catch_0
    move-exception v0

    .line 828
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "MediaPlayer"

    const-string v3, "create failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 838
    .end local v0           #ex:Ljava/io/IOException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 830
    :catch_1
    move-exception v0

    .line 831
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "MediaPlayer"

    const-string v3, "create failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 833
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 834
    .local v0, ex:Ljava/lang/SecurityException;
    const-string v2, "MediaPlayer"

    const-string v3, "create failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getAudioFilePath(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .parameter "uri"
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 973
    const/4 v8, 0x0

    .line 974
    .local v8, str:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 975
    .local v7, fileUri:Ljava/lang/String;
    const/4 v6, 0x0

    .line 977
    .local v6, cursor:Landroid/database/Cursor;
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v9, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v1

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 981
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 982
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 983
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 987
    :cond_0
    if-eqz v6, :cond_1

    .line 988
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 991
    :cond_1
    return-object v8

    .line 987
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 988
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 987
    :cond_2
    throw v0
.end method

.method private native getParameter(ILandroid/os/Parcel;)V
.end method

.method private getRingTonePath(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 15
    .parameter "uri"
    .parameter "context"

    .prologue
    .line 995
    if-nez p1, :cond_0

    .line 996
    const-string v1, "MediaPlayer"

    const-string/jumbo v3, "uri is null : "

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    const/4 v12, 0x0

    .line 1071
    :goto_0
    return-object v12

    .line 999
    :cond_0
    const/4 v11, 0x0

    .line 1000
    .local v11, isRingtone:Z
    const/4 v2, 0x0

    .line 1001
    .local v2, tempUri:Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1002
    .local v10, fileUri:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1003
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 1004
    .local v12, str:Ljava/lang/String;
    const/4 v11, 0x1

    .line 1007
    const-string/jumbo v1, "video_call_ringtone"

    invoke-virtual {v10, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1009
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "video_call_ringtone"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1011
    .local v7, actual_uri:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 1012
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1023
    .end local v7           #actual_uri:Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "content://media/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1026
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_data"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1029
    if-eqz v8, :cond_4

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 1030
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1031
    const-string v1, "_data"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 1042
    :goto_2
    if-eqz v8, :cond_2

    .line 1043
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1047
    :cond_2
    if-eqz v12, :cond_6

    const-string v1, ".dcf"

    invoke-virtual {v12, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1048
    const-string v1, "MediaPlayer"

    const-string v3, "It is a DRM RingTone: Return the actual path"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1016
    :cond_3
    invoke-static/range {p1 .. p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v14

    .line 1017
    .local v14, type:I
    const-string v1, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "it is a Ringtone type is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    move-object/from16 v0, p2

    invoke-static {v0, v14}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    .line 1036
    .end local v14           #type:I
    :cond_4
    :try_start_1
    const-string v1, "MediaPlayer"

    const-string v3, "Cursor is NULL:"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1038
    :catch_0
    move-exception v9

    .line 1039
    .local v9, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "MediaPlayer"

    const-string v3, "Exception occured "

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1042
    if-eqz v8, :cond_2

    goto :goto_3

    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_5

    .line 1043
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1042
    :cond_5
    throw v1

    .line 1051
    :cond_6
    if-nez v12, :cond_7

    if-eqz v2, :cond_7

    .line 1053
    const-string v1, "MediaPlayer"

    const-string v3, "It means uri is there but file does not exist so play default sound based on setting uri"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    const/4 v13, 0x0

    .line 1055
    .local v13, toneFile:Ljava/io/File;
    invoke-static/range {p1 .. p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1063
    :goto_4
    if-eqz v13, :cond_7

    .line 1064
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 1057
    :sswitch_0
    new-instance v13, Ljava/io/File;

    .end local v13           #toneFile:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/media/audio/notifications/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "ro.config.notification_sound_2"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1058
    .restart local v13       #toneFile:Ljava/io/File;
    goto :goto_4

    .line 1060
    :sswitch_1
    new-instance v13, Ljava/io/File;

    .end local v13           #toneFile:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/media/audio/ringtones/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "ro.config.ringtone_2"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v13       #toneFile:Ljava/io/File;
    goto :goto_4

    .line 1066
    .end local v13           #toneFile:Ljava/io/File;
    :cond_7
    const-string v1, "MediaPlayer"

    const-string v3, "It is a Not a DRM RingTone: return NULl"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1070
    :cond_8
    const-string v1, "MediaPlayer"

    const-string v3, "Ringtone URI is null or not from Media DB  : "

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1055
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private isVideoScalingModeSupported(I)Z
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v0, 0x1

    .line 2837
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getMetadata(ZZLandroid/os/Parcel;)Z
.end method

.method private static final native native_init()V
.end method

.method private final native native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I
.end method

.method public static native native_pullBatteryData(Landroid/os/Parcel;)I
.end method

.method private final native native_setMetadataFilter(Landroid/os/Parcel;)I
.end method

.method private final native native_setRetransmitEndpoint(Ljava/lang/String;I)I
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 5
    .parameter "mediaplayer_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 2393
    const/16 v2, -0x31

    if-eq p3, v2, :cond_0

    const/16 v2, -0x3c

    if-eq p3, v2, :cond_0

    const/16 v2, -0x3d

    if-eq p3, v2, :cond_0

    const/16 v2, -0x40

    if-ne p3, v2, :cond_1

    .line 2397
    :cond_0
    if-eqz p4, :cond_1

    .line 2398
    const-string v3, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "postEventFromNative Error String is"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v2, p4

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    :cond_1
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 2403
    .local v1, mp:Landroid/media/MediaPlayer;
    if-nez v1, :cond_3

    .line 2415
    :cond_2
    :goto_0
    return-void

    .line 2407
    :cond_3
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_4

    const/4 v2, 0x2

    if-ne p2, v2, :cond_4

    .line 2409
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 2411
    :cond_4
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    if-eqz v2, :cond_2

    .line 2412
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2413
    .local v0, m:Landroid/os/Message;
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private selectOrDeselectTrack(IZ)V
    .locals 3
    .parameter "index"
    .parameter "select"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2149
    .local v1, request:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2151
    .local v0, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IMediaPlayer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2152
    if-eqz p2, :cond_0

    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2153
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2154
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2156
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2159
    return-void

    .line 2152
    :cond_0
    const/4 v2, 0x5

    goto :goto_0

    .line 2156
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2156
    throw v2
.end method

.method private setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .parameter "path"
    .parameter "keys"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1125
    const-string v3, ".dcf"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".avi"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".wmv"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".wma"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".pyv"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".pya"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".divx"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".DCF"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".AVI"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".WMV"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".WMA"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".PYV"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".PYA"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".DIVX"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".mid"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".MID"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".imy"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".IMY"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".xmf"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".XMF"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1129
    :cond_0
    const-string v3, "MediaPlayer"

    const-string v4, "Drm file have to use setDataSource(path) func"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaPlayer;->_setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1150
    :goto_0
    return-void

    .line 1136
    :cond_1
    const-string v3, ".sdp"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ".SDP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1137
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaPlayer;->_setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 1141
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1142
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1143
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1144
    .local v2, is:Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 1145
    .local v0, fd:Ljava/io/FileDescriptor;
    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 1146
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 1148
    .end local v0           #fd:Ljava/io/FileDescriptor;
    .end local v2           #is:Ljava/io/FileInputStream;
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaPlayer;->_setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stayAwake(Z)V
    .locals 1
    .parameter "awake"

    .prologue
    .line 1345
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 1346
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1347
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1352
    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    .line 1353
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1354
    return-void

    .line 1348
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1349
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private updateSurfaceScreenOn()V
    .locals 2

    .prologue
    .line 1357
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 1358
    iget-object v1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 1360
    :cond_0
    return-void

    .line 1358
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addTimedTextSource(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "uri"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2010
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 2011
    .local v2, scheme:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2012
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    :cond_1
    :goto_0
    return-void

    .line 2016
    :cond_2
    const/4 v0, 0x0

    .line 2018
    .local v0, fd:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2019
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string/jumbo v3, "r"

    invoke-virtual {v1, p2, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2020
    if-nez v0, :cond_3

    .line 2028
    if-eqz v0, :cond_1

    .line 2029
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 2023
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2028
    if-eqz v0, :cond_1

    goto :goto_1

    .end local v1           #resolver:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_4

    .line 2029
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 2028
    :cond_4
    throw v3

    .line 2025
    :catch_0
    move-exception v3

    .line 2028
    if-eqz v0, :cond_1

    goto :goto_1

    .line 2026
    :catch_1
    move-exception v3

    .line 2028
    if-eqz v0, :cond_1

    goto :goto_1
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V
    .locals 5
    .parameter "fd"
    .parameter "offset"
    .parameter "length"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2076
    invoke-static {p6}, Landroid/media/MediaPlayer;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2077
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal mimeType for timed text source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2080
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2081
    .local v1, request:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2083
    .local v0, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IMediaPlayer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2084
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2085
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 2086
    invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2087
    invoke-virtual {v1, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 2088
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2089
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2091
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2092
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2094
    return-void

    .line 2091
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2092
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2091
    throw v2
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 7
    .parameter "fd"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2053
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V

    .line 2054
    return-void
.end method

.method public addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "path"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1976
    invoke-static {p2}, Landroid/media/MediaPlayer;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1977
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal mimeType for timed text source: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1978
    .local v3, msg:Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1981
    .end local v3           #msg:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1982
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1983
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1984
    .local v2, is:Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 1985
    .local v0, fd:Ljava/io/FileDescriptor;
    invoke-virtual {p0, v0, p2}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 1986
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 1991
    return-void

    .line 1989
    .end local v0           #fd:Ljava/io/FileDescriptor;
    .end local v2           #is:Ljava/io/FileInputStream;
    :cond_1
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public native attachAuxEffect(I)V
.end method

.method public deselectTrack(I)V
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2143
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->selectOrDeselectTrack(IZ)V

    .line 2144
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 2217
    invoke-direct {p0}, Landroid/media/MediaPlayer;->native_finalize()V

    return-void
.end method

.method public native getAudioSessionId()I
.end method

.method public native getCurrentFrame()Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native getCurrentPosition()I
.end method

.method public native getDuration()I
.end method

.method public native getFrameAt(I)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public getIntParameter(I)I
    .locals 2
    .parameter "key"

    .prologue
    .line 1784
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1785
    .local v0, p:Landroid/os/Parcel;
    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->getParameter(ILandroid/os/Parcel;)V

    .line 1786
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1787
    .local v1, ret:I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1788
    return v1
.end method

.method public getMetadata(ZZ)Landroid/media/Metadata;
    .locals 4
    .parameter "update_only"
    .parameter "apply_filter"

    .prologue
    const/4 v2, 0x0

    .line 1443
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1444
    .local v1, reply:Landroid/os/Parcel;
    new-instance v0, Landroid/media/Metadata;

    invoke-direct {v0}, Landroid/media/Metadata;-><init>()V

    .line 1446
    .local v0, data:Landroid/media/Metadata;
    invoke-direct {p0, p1, p2, v1}, Landroid/media/MediaPlayer;->native_getMetadata(ZZLandroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1447
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    move-object v0, v2

    .line 1457
    .end local v0           #data:Landroid/media/Metadata;
    :cond_0
    :goto_0
    return-object v0

    .line 1453
    .restart local v0       #data:Landroid/media/Metadata;
    :cond_1
    invoke-virtual {v0, v1}, Landroid/media/Metadata;->parse(Landroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1454
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    move-object v0, v2

    .line 1455
    goto :goto_0
.end method

.method public getParcelParameter(I)Landroid/os/Parcel;
    .locals 1
    .parameter "key"

    .prologue
    .line 1758
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1759
    .local v0, p:Landroid/os/Parcel;
    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->getParameter(ILandroid/os/Parcel;)V

    .line 1760
    return-object v0
.end method

.method public getStringParameter(I)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 1770
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1771
    .local v0, p:Landroid/os/Parcel;
    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->getParameter(ILandroid/os/Parcel;)V

    .line 1772
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1773
    .local v1, ret:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1774
    return-object v1
.end method

.method public getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1926
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1927
    .local v1, request:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1929
    .local v0, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IMediaPlayer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1930
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1931
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 1932
    sget-object v3, Landroid/media/MediaPlayer$TrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/MediaPlayer$TrackInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1935
    .local v2, trackInfo:[Landroid/media/MediaPlayer$TrackInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1936
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1933
    return-object v2

    .line 1935
    .end local v2           #trackInfo:[Landroid/media/MediaPlayer$TrackInfo;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1936
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1935
    throw v3
.end method

.method public native getVideoHeight()I
.end method

.method public native getVideoWidth()I
.end method

.method public invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 2
    .parameter "request"
    .parameter "reply"

    .prologue
    .line 673
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v0

    .line 674
    .local v0, retcode:I
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 679
    return-void
.end method

.method public native isLooping()Z
.end method

.method public native isPlaying()Z
.end method

.method public newRequest()Landroid/os/Parcel;
    .locals 2

    .prologue
    .line 652
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 653
    .local v0, parcel:Landroid/os/Parcel;
    const-string v1, "android.media.IMediaPlayer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 654
    return-object v0
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1283
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1284
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_pause()V

    .line 1285
    return-void
.end method

.method public native prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native prepareAsync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1546
    invoke-direct {p0, v1}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1547
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1548
    iput-object v0, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 1549
    iput-object v0, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 1550
    iput-object v0, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 1551
    iput-object v0, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 1552
    iput-object v0, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 1553
    iput-object v0, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 1554
    iput-object v0, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 1555
    iput-object v0, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 1557
    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mIsStart:Z

    .line 1559
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_release()V

    .line 1560
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1570
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1572
    iput-boolean v0, p0, Landroid/media/MediaPlayer;->mIsStart:Z

    .line 1574
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_reset()V

    .line 1576
    iget-object v0, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1577
    return-void
.end method

.method public native seekTo(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native seekTo(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public selectTrack(I)V
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2125
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->selectOrDeselectTrack(IZ)V

    .line 2126
    return-void
.end method

.method public setAIAContext(Z)V
    .locals 4
    .parameter "AIAContext"

    .prologue
    const/16 v3, 0x643

    .line 880
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAIAFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mAIAContext:Z

    .line 882
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mAIAContext:Z

    if-eqz v0, :cond_0

    .line 883
    const-string v0, "True"

    invoke-virtual {p0, v3, v0}, Landroid/media/MediaPlayer;->setParameter(ILjava/lang/String;)Z

    .line 886
    :goto_0
    return-void

    .line 885
    :cond_0
    const-string v0, "False"

    invoke-virtual {p0, v3, v0}, Landroid/media/MediaPlayer;->setParameter(ILjava/lang/String;)Z

    goto :goto_0
.end method

.method public native setAudioSessionId(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setAudioStreamType(I)V
.end method

.method public native setAuxEffectSendLevel(F)V
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 898
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 899
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 10
    .parameter "context"
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 912
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 913
    .local v9, scheme:Ljava/lang/String;
    if-eqz v9, :cond_0

    const-string v0, "file"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 914
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 968
    :cond_1
    :goto_0
    return-void

    .line 920
    :cond_2
    const/4 v7, 0x0

    .line 921
    .local v7, path:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://media/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 922
    invoke-direct {p0, p2, p1}, Landroid/media/MediaPlayer;->getAudioFilePath(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 927
    :cond_3
    :goto_1
    if-eqz v7, :cond_5

    .line 933
    invoke-virtual {p0, v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 924
    :cond_4
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://settings/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 925
    invoke-direct {p0, p2, p1}, Landroid/media/MediaPlayer;->getRingTonePath(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 939
    :cond_5
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "path is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const/4 v6, 0x0

    .line 944
    .local v6, fd:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 945
    .local v8, resolver:Landroid/content/ContentResolver;
    const-string/jumbo v0, "r"

    invoke-virtual {v8, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 946
    if-nez v6, :cond_6

    .line 961
    if-eqz v6, :cond_1

    .line 962
    :goto_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 952
    :cond_6
    :try_start_1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_7

    .line 953
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 961
    :goto_3
    if-eqz v6, :cond_1

    goto :goto_2

    .line 955
    :cond_7
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 958
    .end local v8           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    .line 961
    if-eqz v6, :cond_8

    .line 962
    :goto_4
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 966
    :cond_8
    const-string v0, "MediaPlayer"

    const-string v1, "Couldn\'t open file on client side, trying server side"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 961
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_9

    .line 962
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 961
    :cond_9
    throw v0

    .line 959
    :catch_1
    move-exception v0

    .line 961
    if-eqz v6, :cond_8

    goto :goto_4
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 6
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1174
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1175
    return-void
.end method

.method public native setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1091
    invoke-direct {p0, p1, v0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1092
    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1105
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1106
    .local v3, keys:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1108
    .local v4, values:[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1109
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 1110
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 1112
    const/4 v1, 0x0

    .line 1113
    .local v1, i:I
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1114
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v1

    .line 1115
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v1

    .line 1116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1119
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    invoke-direct {p0, p1, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1120
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "sh"

    .prologue
    .line 694
    iput-object p1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 696
    if-eqz p1, :cond_0

    .line 697
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 701
    .local v0, surface:Landroid/view/Surface;
    :goto_0
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 702
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 703
    return-void

    .line 699
    .end local v0           #surface:Landroid/view/Surface;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #surface:Landroid/view/Surface;
    goto :goto_0
.end method

.method public native setLooping(Z)V
.end method

.method public setMetadataFilter(Ljava/util/Set;Ljava/util/Set;)I
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1485
    .local p1, allow:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p2, block:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v2

    .line 1491
    .local v2, request:Landroid/os/Parcel;
    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v6

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x4

    add-int v0, v4, v5

    .line 1493
    .local v0, capacity:I
    invoke-virtual {v2}, Landroid/os/Parcel;->dataCapacity()I

    move-result v4

    if-ge v4, v0, :cond_0

    .line 1494
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataCapacity(I)V

    .line 1497
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1498
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1499
    .local v3, t:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1501
    .end local v3           #t:Ljava/lang/Integer;
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1502
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1503
    .restart local v3       #t:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1505
    .end local v3           #t:Ljava/lang/Integer;
    :cond_2
    invoke-direct {p0, v2}, Landroid/media/MediaPlayer;->native_setMetadataFilter(Landroid/os/Parcel;)I

    move-result v4

    return v4
.end method

.method public native setNextMediaPlayer(Landroid/media/MediaPlayer;)V
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2500
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 2501
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2466
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 2467
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2712
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 2713
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2828
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 2829
    return-void
.end method

.method public setOnPlayReadyErrorListener(Landroid/media/MediaPlayer$OnPlayReadyErrorListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2700
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnPlayReadyErrorListener:Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

    .line 2701
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2439
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 2440
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2527
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 2528
    return-void
.end method

.method public setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2588
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 2589
    return-void
.end method

.method public setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2559
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 2560
    return-void
.end method

.method public setParameter(II)Z
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1736
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1737
    .local v0, p:Landroid/os/Parcel;
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1738
    invoke-virtual {p0, p1, v0}, Landroid/media/MediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    .line 1739
    .local v1, ret:Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1740
    return v1
.end method

.method public native setParameter(ILandroid/os/Parcel;)Z
.end method

.method public setParameter(ILjava/lang/String;)Z
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1721
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1722
    .local v0, p:Landroid/os/Parcel;
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1723
    invoke-virtual {p0, p1, v0}, Landroid/media/MediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    .line 1724
    .local v1, ret:Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1725
    return v1
.end method

.method public setRetransmitEndpoint(Ljava/net/InetSocketAddress;)V
    .locals 6
    .parameter "endpoint"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2200
    const/4 v0, 0x0

    .line 2201
    .local v0, addrString:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2203
    .local v1, port:I
    if-eqz p1, :cond_0

    .line 2204
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 2205
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    .line 2208
    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/media/MediaPlayer;->native_setRetransmitEndpoint(Ljava/lang/String;I)I

    move-result v2

    .line 2209
    .local v2, ret:I
    if-eqz v2, :cond_1

    .line 2210
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal re-transmit endpoint; native ret "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2212
    :cond_1
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 2
    .parameter "screenOn"

    .prologue
    .line 1335
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_1

    .line 1336
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    .line 1337
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    :cond_0
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    .line 1340
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1342
    :cond_1
    return-void
.end method

.method public setSoundAlive(Landroid/os/Parcel;Landroid/os/Parcel;)I
    .locals 1
    .parameter "request"
    .parameter "reply"

    .prologue
    .line 1155
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 1156
    const/4 v0, 0x0

    return v0
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2
    .parameter "surface"

    .prologue
    .line 724
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 725
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective for Surface"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 728
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 729
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 730
    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    .line 773
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->isVideoScalingModeSupported(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 774
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scaling mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 775
    .local v0, msg:Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 777
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 778
    .local v2, request:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 780
    .local v1, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IMediaPlayer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 781
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 782
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 783
    invoke-virtual {p0, v2, v1}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 785
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 786
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 788
    return-void

    .line 785
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 786
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 785
    throw v3
.end method

.method public native setVolume(FF)V
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 1307
    const/4 v1, 0x0

    .line 1308
    .local v1, washeld:Z
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    .line 1309
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1310
    const/4 v1, 0x1

    .line 1311
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1313
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1316
    :cond_1
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1317
    .local v0, pm:Landroid/os/PowerManager;
    const/high16 v2, 0x2000

    or-int/2addr v2, p2

    const-class v3, Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1318
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1319
    if-eqz v1, :cond_2

    .line 1320
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1322
    :cond_2
    return-void
.end method

.method public start()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    .line 1237
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mIsVideo:Z

    if-eqz v0, :cond_0

    .line 1239
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mAIAContext:Z

    if-nez v0, :cond_1

    .line 1241
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.media.IMediaPlayer.videoexist"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1243
    .local v2, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 1244
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/Binder;->getOrigCallingUser()I

    move-result v11

    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1250
    :goto_0
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "sendBroadcast android.media.IMediaPlayer.videoexist"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    iput-boolean v13, p0, Landroid/media/MediaPlayer;->mIsStart:Z

    .line 1257
    invoke-direct {p0, v13}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1258
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_start()V

    .line 1259
    return-void

    .line 1247
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v12

    .line 1248
    .local v12, e:Landroid/os/RemoteException;
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "sendBroadcast fail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1253
    .end local v2           #intent:Landroid/content/Intent;
    .end local v12           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v0, "MediaPlayer"

    const-string v1, "context is 1, don\'t send BroadcastIntent!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1270
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1271
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_stop()V

    .line 1272
    return-void
.end method
