.class public Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
.super Ljava/lang/Object;
.source "BargeInRecognizer.java"


# static fields
.field private static final LOAD_PATH:Ljava/lang/String; = "/system/voicebargeindata"

.field public static final STATE_READY:I = 0x0

.field public static final STATE_RUNNING:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field private audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

.field private audio_thread:Ljava/lang/Thread;

.field private bargeInSoFilePath:Ljava/lang/String;

.field private chineseModelPath:Ljava/lang/String;

.field private englishModelPath:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field public intBargeInResult:I

.field public isEnableBargeIn:Z

.field public isEnableChineseBargeIn:Z

.field private koreanModelPath:Ljava/lang/String;

.field private mListener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

.field private mState:I

.field private sVoiceLanguageFilePath:Ljava/lang/String;

.field public uselanguage:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    .line 19
    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio_thread:Ljava/lang/Thread;

    .line 20
    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mListener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

    .line 21
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mState:I

    .line 23
    const-string v0, "BargeInRecognizer"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    .line 24
    iput-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    .line 25
    iput-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableChineseBargeIn:Z

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->intBargeInResult:I

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    .line 30
    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    .line 32
    const-string v0, "/system/lib/libsasr-jni.so"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->bargeInSoFilePath:Ljava/lang/String;

    .line 33
    const-string v0, "/system/voicebargeindata/sasr/eng/16k/param/models_hci_daco.bin"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->englishModelPath:Ljava/lang/String;

    .line 34
    const-string v0, "/system/voicebargeindata/sasr/kor/16k/param/models_16k_KOR.bin"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->koreanModelPath:Ljava/lang/String;

    .line 35
    const-string v0, "/system/voicebargeindata/sasr/chi/16k/param/models_16k_CHI.bin"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->chineseModelPath:Ljava/lang/String;

    .line 37
    const-string v0, "/data/data/com.vlingo.midas/files/language.bin"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->sVoiceLanguageFilePath:Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isUseModel()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    .line 41
    invoke-direct {p0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isUseChineseModel()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableChineseBargeIn:Z

    .line 42
    invoke-virtual {p0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->setLanguage()V

    .line 43
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnableBargeIn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uselanguage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnableChineseBargeIn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableChineseBargeIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method private isUseChineseModel()Z
    .locals 3

    .prologue
    .line 164
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->chineseModelPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, chFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "Error : Could not find Chinese model"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v1, 0x0

    .line 170
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isUseModel()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 145
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->bargeInSoFilePath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v2, mFile:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->englishModelPath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, eFile:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->koreanModelPath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v1, kFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 150
    iget-object v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v5, "Error : Could not find libsasr-jni.so"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_0
    return v3

    .line 152
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 153
    iget-object v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v5, "Error : Could not find English model"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 156
    iget-object v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v5, "Error : Could not find Korean model"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private readString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "filePath"

    .prologue
    const/4 v7, 0x0

    .line 230
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    .local v3, mFile:Ljava/io/File;
    const/4 v4, 0x0

    .line 232
    .local v4, mFileInputStream:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 234
    .local v0, data:[B
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 236
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v4           #mFileInputStream:Ljava/io/FileInputStream;
    .local v5, mFileInputStream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v6

    new-array v0, v6, [B

    .line 238
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    .line 239
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 241
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v5

    .line 259
    .end local v5           #mFileInputStream:Ljava/io/FileInputStream;
    .restart local v4       #mFileInputStream:Ljava/io/FileInputStream;
    :goto_0
    return-object v6

    .line 243
    :catch_0
    move-exception v1

    .line 245
    .local v1, e:Ljava/io/IOException;
    :goto_1
    if-eqz v4, :cond_0

    .line 247
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 253
    :cond_0
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v6, v7

    .line 255
    goto :goto_0

    .line 248
    :catch_1
    move-exception v2

    .line 250
    .local v2, e1:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #e1:Ljava/io/IOException;
    :cond_1
    move-object v6, v7

    .line 259
    goto :goto_0

    .line 243
    .end local v4           #mFileInputStream:Ljava/io/FileInputStream;
    .restart local v5       #mFileInputStream:Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    move-object v4, v5

    .end local v5           #mFileInputStream:Ljava/io/FileInputStream;
    .restart local v4       #mFileInputStream:Ljava/io/FileInputStream;
    goto :goto_1
.end method


# virtual methods
.method public InitBargeInRecognizer(Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mListener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

    .line 50
    return-void
.end method

.method public SendHandlerMessage(I)V
    .locals 5
    .parameter "type"

    .prologue
    .line 57
    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 60
    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 61
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "commandType"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 64
    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    const-wide/16 v3, 0x2bc

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 66
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public delayedStartBargeIn(I)V
    .locals 4
    .parameter "commandType"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "delayedStartBargeIn"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "BargeIn is running. So Do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    iget-object v0, v0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput-short v2, v0, v1

    .line 103
    :goto_0
    monitor-exit p0

    .line 104
    return-void

    .line 97
    :cond_0
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mListener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

    const-string v2, "/system/voicebargeindata"

    iget v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;-><init>(Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    .line 99
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio_thread:Ljava/lang/Thread;

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 101
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mState:I

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIntBargeInResult()I
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    iget-object v0, v0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    .line 225
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->intBargeInResult:I

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mState:I

    return v0
.end method

.method public isBargeInEnabled()Z
    .locals 2

    .prologue
    .line 263
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->bargeInSoFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    .local v0, mFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    const/4 v1, 0x1

    .line 268
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLanguage()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 175
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, stringLanguage:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->sVoiceLanguageFilePath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, sVoiceLanguage:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stringLanguage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sVoiceLanguage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    if-eqz v0, :cond_8

    .line 182
    const-string v2, "ko-KR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 183
    iput v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    const-string v2, "en-US"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 185
    iput v7, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_0

    .line 186
    :cond_2
    const-string v2, "zh-CN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableChineseBargeIn:Z

    if-eqz v2, :cond_3

    .line 187
    iput v8, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_0

    .line 188
    :cond_3
    const-string v2, "es-ES"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 189
    iput v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_0

    .line 190
    :cond_4
    const-string v2, "v-es-LA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 191
    iput v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_0

    .line 192
    :cond_5
    const-string v2, "fr-FR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 193
    iput v9, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_0

    .line 194
    :cond_6
    const-string v2, "de-DE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 195
    const/4 v2, 0x5

    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_0

    .line 196
    :cond_7
    const-string v2, "it-IT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    const/4 v2, 0x6

    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_0

    .line 200
    :cond_8
    if-eqz v1, :cond_0

    .line 201
    sget-object v2, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 202
    iput v6, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_0

    .line 203
    :cond_9
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 204
    iput v7, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_0

    .line 205
    :cond_a
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableChineseBargeIn:Z

    if-eqz v2, :cond_b

    .line 207
    iput v8, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 208
    :cond_b
    const-string v2, "es"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 209
    iput v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 210
    :cond_c
    sget-object v2, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 211
    iput v9, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 212
    :cond_d
    sget-object v2, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 213
    const/4 v2, 0x5

    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 214
    :cond_e
    sget-object v2, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    const/4 v2, 0x6

    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0
.end method

.method public startBargeIn(I)V
    .locals 2
    .parameter "commandType"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "startBargeIn"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->intBargeInResult:I

    .line 72
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->setLanguage()V

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer$1;-><init>(Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;)V

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "handler create"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->SendHandlerMessage(I)V

    .line 88
    :cond_1
    return-void
.end method

.method public stopBargeIn()V
    .locals 4

    .prologue
    .line 108
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "stopBargeIn"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    if-eqz v1, :cond_2

    .line 111
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 113
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    .line 115
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "handler = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    iget-object v1, v1, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v2, 0x0

    aget-short v1, v1, v2

    iput v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->intBargeInResult:I

    .line 121
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    invoke-virtual {v1}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "wait for audio to stop: begin"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio_thread:Ljava/lang/Thread;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "wait for audio to stop: end"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    .line 135
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "audio = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio_thread:Ljava/lang/Thread;

    .line 139
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mState:I

    .line 141
    :cond_2
    monitor-exit p0

    .line 142
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, ex:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 141
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
