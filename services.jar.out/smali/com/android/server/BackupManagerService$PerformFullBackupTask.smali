.class Lcom/android/server/BackupManagerService$PerformFullBackupTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformFullBackupTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
    }
.end annotation


# instance fields
.field mAllApps:Z

.field mCurrentPassword:Ljava/lang/String;

.field mDeflater:Ljava/util/zip/DeflaterOutputStream;

.field mEncryptPassword:Ljava/lang/String;

.field mFilesDir:Ljava/io/File;

.field mIncludeApks:Z

.field mIncludeShared:Z

.field final mIncludeSystem:Z

.field mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mManifestFile:Ljava/io/File;

.field mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field mOutputFile:Landroid/os/ParcelFileDescriptor;

.field mPackages:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZLjava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 3
    .parameter
    .parameter "fd"
    .parameter "observer"
    .parameter "includeApks"
    .parameter "includeShared"
    .parameter "curPassword"
    .parameter "encryptPassword"
    .parameter "doAllApps"
    .parameter "doSystem"
    .parameter "packages"
    .parameter "latch"

    .prologue
    .line 2504
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2505
    iput-object p2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 2506
    iput-object p3, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 2507
    iput-boolean p4, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeApks:Z

    .line 2508
    iput-boolean p5, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeShared:Z

    .line 2509
    iput-boolean p8, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mAllApps:Z

    .line 2510
    iput-boolean p9, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeSystem:Z

    .line 2511
    iput-object p10, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mPackages:[Ljava/lang/String;

    .line 2512
    iput-object p6, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mCurrentPassword:Ljava/lang/String;

    .line 2517
    if-eqz p7, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2518
    :cond_0
    iput-object p6, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mEncryptPassword:Ljava/lang/String;

    .line 2522
    :goto_0
    iput-object p11, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2524
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mFilesDir:Ljava/io/File;

    .line 2525
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mFilesDir:Ljava/io/File;

    const-string v2, "_manifest"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mManifestFile:Ljava/io/File;

    .line 2526
    return-void

    .line 2520
    :cond_1
    iput-object p7, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mEncryptPassword:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$1100(Lcom/android/server/BackupManagerService$PerformFullBackupTask;Landroid/content/pm/PackageInfo;Ljava/io/File;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2433
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->writeAppManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/BackupManagerService$PerformFullBackupTask;Landroid/content/pm/PackageInfo;Landroid/app/backup/BackupDataOutput;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2433
    invoke-direct {p0, p1, p2}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/BackupDataOutput;)V

    return-void
.end method

.method private backupOnePackage(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)V
    .locals 22
    .parameter "pkg"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2789
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Binding to full backup agent : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    const/4 v5, 0x0

    .line 2793
    .local v5, agent:Landroid/app/IBackupAgent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v3, v3, Lcom/android/server/BackupManagerService;->isEdmBackupRequest:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    .line 2795
    const-string v3, "BackupManagerService"

    const-string v4, "changing backup agent name to null for edm restore request"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2796
    new-instance v11, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v11, v3}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 2797
    .local v11, appInfo:Landroid/content/pm/ApplicationInfo;
    const/4 v3, 0x0

    iput-object v3, v11, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 2798
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v4, 0x1

    invoke-virtual {v3, v11, v4}, Lcom/android/server/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v5

    .line 2804
    .end local v11           #appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v5, :cond_e

    .line 2805
    const/16 v18, 0x0

    .line 2807
    .local v18, pipes:[Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v18

    .line 2809
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2810
    .local v10, app:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.android.sharedstoragebackup"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 2811
    .local v16, isSharedStorage:Z
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeApks:Z

    if-eqz v3, :cond_3

    if-nez v16, :cond_3

    iget v3, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x2000

    and-int/2addr v3, v4

    if-nez v3, :cond_3

    iget v3, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    iget v3, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_3

    :cond_0
    const/4 v8, 0x1

    .line 2817
    .local v8, sendApk:Z
    :goto_1
    if-eqz v16, :cond_4

    const-string v3, "Shared storage"

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    .line 2819
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/BackupManagerService;->generateToken()I

    move-result v7

    .line 2820
    .local v7, token:I
    new-instance v2, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;

    const/4 v3, 0x1

    aget-object v6, v18, v3

    if-nez v16, :cond_5

    const/4 v9, 0x1

    :goto_3
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;-><init>(Lcom/android/server/BackupManagerService$PerformFullBackupTask;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZZ)V

    .line 2822
    .local v2, runner:Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
    const/4 v3, 0x1

    aget-object v3, v18, v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 2823
    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v18, v3

    .line 2824
    new-instance v20, Ljava/lang/Thread;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2825
    .local v20, t:Ljava/lang/Thread;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2829
    :try_start_1
    new-instance v19, Ljava/io/FileInputStream;

    const/4 v3, 0x0

    aget-object v3, v18, v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 2830
    .local v19, raw:Ljava/io/FileInputStream;
    new-instance v15, Ljava/io/DataInputStream;

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2832
    .local v15, in:Ljava/io/DataInputStream;
    const/16 v3, 0x4000

    new-array v12, v3, [B

    .line 2834
    .local v12, buffer:[B
    :cond_1
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .local v13, chunkTotal:I
    if-lez v13, :cond_7

    .line 2835
    :goto_4
    if-lez v13, :cond_1

    .line 2836
    array-length v3, v12

    if-le v13, v3, :cond_6

    array-length v0, v12

    move/from16 v21, v0

    .line 2838
    .local v21, toRead:I
    :goto_5
    const/4 v3, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v12, v3, v0}, Ljava/io/DataInputStream;->read([BII)I

    move-result v17

    .line 2839
    .local v17, nRead:I
    const/4 v3, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v12, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2840
    sub-int v13, v13, v17

    .line 2841
    goto :goto_4

    .line 2801
    .end local v2           #runner:Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
    .end local v7           #token:I
    .end local v8           #sendApk:Z
    .end local v10           #app:Landroid/content/pm/ApplicationInfo;
    .end local v12           #buffer:[B
    .end local v13           #chunkTotal:I
    .end local v15           #in:Ljava/io/DataInputStream;
    .end local v16           #isSharedStorage:Z
    .end local v17           #nRead:I
    .end local v18           #pipes:[Landroid/os/ParcelFileDescriptor;
    .end local v19           #raw:Ljava/io/FileInputStream;
    .end local v20           #t:Ljava/lang/Thread;
    .end local v21           #toRead:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v6}, Lcom/android/server/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v5

    goto/16 :goto_0

    .line 2811
    .restart local v10       #app:Landroid/content/pm/ApplicationInfo;
    .restart local v16       #isSharedStorage:Z
    .restart local v18       #pipes:[Landroid/os/ParcelFileDescriptor;
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 2817
    .restart local v8       #sendApk:Z
    :cond_4
    :try_start_2
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_2

    .line 2820
    .restart local v7       #token:I
    :cond_5
    const/4 v9, 0x0

    goto :goto_3

    .restart local v2       #runner:Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
    .restart local v12       #buffer:[B
    .restart local v13       #chunkTotal:I
    .restart local v15       #in:Ljava/io/DataInputStream;
    .restart local v19       #raw:Ljava/io/FileInputStream;
    .restart local v20       #t:Ljava/lang/Thread;
    :cond_6
    move/from16 v21, v13

    .line 2836
    goto :goto_5

    .line 2843
    .end local v12           #buffer:[B
    .end local v13           #chunkTotal:I
    .end local v15           #in:Ljava/io/DataInputStream;
    .end local v19           #raw:Ljava/io/FileInputStream;
    :catch_0
    move-exception v14

    .line 2844
    .local v14, e:Ljava/io/IOException;
    const-string v3, "BackupManagerService"

    const-string v4, "Caught exception reading from agent"

    invoke-static {v3, v4, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2847
    .end local v14           #e:Ljava/io/IOException;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v3, v7}, Lcom/android/server/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v3

    if-nez v3, :cond_a

    .line 2848
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Full backup failed on package "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/BackupManagerService;->isEdmBackupFail:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2864
    :goto_6
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->flush()V

    .line 2865
    if-eqz v18, :cond_9

    .line 2866
    const/4 v3, 0x0

    aget-object v3, v18, v3

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    aget-object v3, v18, v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 2867
    :cond_8
    const/4 v3, 0x1

    aget-object v3, v18, v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    aget-object v3, v18, v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 2879
    .end local v2           #runner:Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
    .end local v7           #token:I
    .end local v8           #sendApk:Z
    .end local v10           #app:Landroid/content/pm/ApplicationInfo;
    .end local v16           #isSharedStorage:Z
    .end local v18           #pipes:[Landroid/os/ParcelFileDescriptor;
    .end local v20           #t:Ljava/lang/Thread;
    :cond_9
    :goto_7
    invoke-direct/range {p0 .. p1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    .line 2880
    return-void

    .line 2853
    .restart local v2       #runner:Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
    .restart local v7       #token:I
    .restart local v8       #sendApk:Z
    .restart local v10       #app:Landroid/content/pm/ApplicationInfo;
    .restart local v16       #isSharedStorage:Z
    .restart local v18       #pipes:[Landroid/os/ParcelFileDescriptor;
    .restart local v20       #t:Ljava/lang/Thread;
    :cond_a
    :try_start_4
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Full package backup success: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    .line 2856
    .end local v2           #runner:Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
    .end local v7           #token:I
    .end local v8           #sendApk:Z
    .end local v10           #app:Landroid/content/pm/ApplicationInfo;
    .end local v16           #isSharedStorage:Z
    .end local v20           #t:Ljava/lang/Thread;
    :catch_1
    move-exception v14

    .line 2857
    .restart local v14       #e:Ljava/io/IOException;
    :try_start_5
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error backing up "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2859
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/BackupManagerService;->isEdmBackupFail:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2864
    :try_start_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->flush()V

    .line 2865
    if-eqz v18, :cond_9

    .line 2866
    const/4 v3, 0x0

    aget-object v3, v18, v3

    if-eqz v3, :cond_b

    const/4 v3, 0x0

    aget-object v3, v18, v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 2867
    :cond_b
    const/4 v3, 0x1

    aget-object v3, v18, v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    aget-object v3, v18, v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_7

    .line 2869
    :catch_2
    move-exception v14

    .line 2870
    const-string v3, "BackupManagerService"

    const-string v4, "Error bringing down backup stack"

    :goto_8
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2862
    .end local v14           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 2864
    :try_start_7
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->flush()V

    .line 2865
    if-eqz v18, :cond_d

    .line 2866
    const/4 v4, 0x0

    aget-object v4, v18, v4

    if-eqz v4, :cond_c

    const/4 v4, 0x0

    aget-object v4, v18, v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 2867
    :cond_c
    const/4 v4, 0x1

    aget-object v4, v18, v4

    if-eqz v4, :cond_d

    const/4 v4, 0x1

    aget-object v4, v18, v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 2862
    :cond_d
    :goto_9
    throw v3

    .line 2874
    .end local v18           #pipes:[Landroid/os/ParcelFileDescriptor;
    :cond_e
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to bind to full agent for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2876
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/BackupManagerService;->isEdmBackupFail:Z

    goto/16 :goto_7

    .line 2869
    .restart local v18       #pipes:[Landroid/os/ParcelFileDescriptor;
    :catch_3
    move-exception v14

    .line 2870
    .restart local v14       #e:Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    const-string v6, "Error bringing down backup stack"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 2869
    .end local v14           #e:Ljava/io/IOException;
    .restart local v2       #runner:Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
    .restart local v7       #token:I
    .restart local v8       #sendApk:Z
    .restart local v10       #app:Landroid/content/pm/ApplicationInfo;
    .restart local v16       #isSharedStorage:Z
    .restart local v20       #t:Ljava/lang/Thread;
    :catch_4
    move-exception v14

    .line 2870
    .restart local v14       #e:Ljava/io/IOException;
    const-string v3, "BackupManagerService"

    const-string v4, "Error bringing down backup stack"

    goto :goto_8
.end method

.method private emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 20
    .parameter "headerbuf"
    .parameter "ofstream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x200

    #calls: Lcom/android/server/BackupManagerService;->randomBytes(I)[B
    invoke-static/range {v17 .. v18}, Lcom/android/server/BackupManagerService;->access$1300(Lcom/android/server/BackupManagerService;I)[B

    move-result-object v15

    .line 2720
    .local v15, newUserSalt:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mEncryptPassword:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x2710

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    #calls: Lcom/android/server/BackupManagerService;->buildPasswordKey(Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    invoke-static {v0, v1, v15, v2}, Lcom/android/server/BackupManagerService;->access$1400(Lcom/android/server/BackupManagerService;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v16

    .line 2724
    .local v16, userKey:Ljavax/crypto/SecretKey;
    const/16 v17, 0x20

    move/from16 v0, v17

    new-array v11, v0, [B

    .line 2725
    .local v11, masterPw:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/BackupManagerService;->mRng:Ljava/security/SecureRandom;
    invoke-static/range {v17 .. v17}, Lcom/android/server/BackupManagerService;->access$1500(Lcom/android/server/BackupManagerService;)Ljava/security/SecureRandom;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 2726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x200

    #calls: Lcom/android/server/BackupManagerService;->randomBytes(I)[B
    invoke-static/range {v17 .. v18}, Lcom/android/server/BackupManagerService;->access$1300(Lcom/android/server/BackupManagerService;I)[B

    move-result-object v7

    .line 2729
    .local v7, checksumSalt:[B
    const-string v17, "AES/CBC/PKCS5Padding"

    invoke-static/range {v17 .. v17}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 2730
    .local v5, c:Ljavax/crypto/Cipher;
    new-instance v10, Ljavax/crypto/spec/SecretKeySpec;

    const-string v17, "AES"

    move-object/from16 v0, v17

    invoke-direct {v10, v11, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 2731
    .local v10, masterKeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 2732
    new-instance v9, Ljavax/crypto/CipherOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v9, v0, v5}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 2735
    .local v9, finalOutput:Ljava/io/OutputStream;
    const-string v17, "AES-256"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2736
    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/server/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v15}, Lcom/android/server/BackupManagerService;->access$1600(Lcom/android/server/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2739
    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/server/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v7}, Lcom/android/server/BackupManagerService;->access$1600(Lcom/android/server/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2742
    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2744
    const/16 v17, 0x2710

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2745
    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2748
    const-string v17, "AES/CBC/PKCS5Padding"

    invoke-static/range {v17 .. v17}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v13

    .line 2749
    .local v13, mkC:Ljavax/crypto/Cipher;
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 2751
    invoke-virtual {v13}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v3

    .line 2752
    .local v3, IV:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/server/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/android/server/BackupManagerService;->access$1600(Lcom/android/server/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2753
    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2765
    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v3

    .line 2766
    invoke-virtual {v10}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v12

    .line 2767
    .local v12, mk:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    invoke-virtual {v10}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v18

    const/16 v19, 0x2710

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    #calls: Lcom/android/server/BackupManagerService;->makeKeyChecksum([B[BI)[B
    invoke-static {v0, v1, v7, v2}, Lcom/android/server/BackupManagerService;->access$1700(Lcom/android/server/BackupManagerService;[B[BI)[B

    move-result-object v6

    .line 2770
    .local v6, checksum:[B
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    array-length v0, v3

    move/from16 v17, v0

    array-length v0, v12

    move/from16 v18, v0

    add-int v17, v17, v18

    array-length v0, v6

    move/from16 v18, v0

    add-int v17, v17, v18

    add-int/lit8 v17, v17, 0x3

    move/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2772
    .local v4, blob:Ljava/io/ByteArrayOutputStream;
    new-instance v14, Ljava/io/DataOutputStream;

    invoke-direct {v14, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2773
    .local v14, mkOut:Ljava/io/DataOutputStream;
    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2774
    invoke-virtual {v14, v3}, Ljava/io/OutputStream;->write([B)V

    .line 2775
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2776
    invoke-virtual {v14, v12}, Ljava/io/OutputStream;->write([B)V

    .line 2777
    array-length v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2778
    invoke-virtual {v14, v6}, Ljava/io/OutputStream;->write([B)V

    .line 2779
    invoke-virtual {v14}, Ljava/io/DataOutputStream;->flush()V

    .line 2780
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v8

    .line 2781
    .local v8, encryptedMk:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/server/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v8}, Lcom/android/server/BackupManagerService;->access$1600(Lcom/android/server/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2782
    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2784
    return-object v9
.end method

.method private finalizeBackup(Ljava/io/OutputStream;)V
    .locals 4
    .parameter "out"

    .prologue
    .line 2908
    const/16 v2, 0x400

    :try_start_0
    new-array v1, v2, [B

    .line 2909
    .local v1, eof:[B
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2913
    .end local v1           #eof:[B
    :goto_0
    return-void

    .line 2910
    :catch_0
    move-exception v0

    .line 2911
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BackupManagerService"

    const-string v3, "Error attempting to finalize backup stream"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private tearDown(Landroid/content/pm/PackageInfo;)V
    .locals 5
    .parameter "pkg"

    .prologue
    .line 2955
    if-eqz p1, :cond_0

    .line 2956
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2957
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 2960
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v2}, Lcom/android/server/BackupManagerService;->access$1000(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 2963
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v3, 0x3e9

    if-eq v2, v3, :cond_0

    .line 2966
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v2}, Lcom/android/server/BackupManagerService;->access$1000(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v2, v3, v4}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2975
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return-void

    .line 2970
    .restart local v0       #app:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 2971
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "BackupManagerService"

    const-string v3, "Lost app trying to shut down"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/BackupDataOutput;)V
    .locals 18
    .parameter "pkg"
    .parameter "output"

    .prologue
    .line 2884
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 2885
    .local v5, appSourceDir:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    .line 2886
    .local v4, apkDir:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "a"

    const/4 v3, 0x0

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v6}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/BackupDataOutput;)I

    .line 2891
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStorageAppObbDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    .line 2892
    .local v16, obbDir:Ljava/io/File;
    if-eqz v16, :cond_0

    .line 2894
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v17

    .line 2895
    .local v17, obbFiles:[Ljava/io/File;
    if-eqz v17, :cond_0

    .line 2896
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 2897
    .local v9, obbDirName:Ljava/lang/String;
    move-object/from16 v12, v17

    .local v12, arr$:[Ljava/io/File;
    array-length v14, v12

    .local v14, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_0
    if-ge v13, v14, :cond_0

    aget-object v15, v12, v13

    .line 2898
    .local v15, obb:Ljava/io/File;
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v7, "obb"

    const/4 v8, 0x0

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v11}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/BackupDataOutput;)I

    .line 2897
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2903
    .end local v9           #obbDirName:Ljava/lang/String;
    .end local v12           #arr$:[Ljava/io/File;
    .end local v13           #i$:I
    .end local v14           #len$:I
    .end local v15           #obb:Ljava/io/File;
    .end local v17           #obbFiles:[Ljava/io/File;
    :cond_0
    return-void
.end method

.method private writeAppManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;Z)V
    .locals 10
    .parameter "pkg"
    .parameter "manifestFile"
    .parameter "withApk"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2928
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v8, 0x1000

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2929
    .local v1, builder:Ljava/lang/StringBuilder;
    new-instance v6, Landroid/util/StringBuilderPrinter;

    invoke-direct {v6, v1}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    .line 2931
    .local v6, printer:Landroid/util/StringBuilderPrinter;
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 2932
    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 2933
    iget v8, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 2934
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 2936
    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2937
    .local v3, installerName:Ljava/lang/String;
    if-eqz v3, :cond_1

    .end local v3           #installerName:Ljava/lang/String;
    :goto_0
    invoke-virtual {v6, v3}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 2939
    if-eqz p3, :cond_2

    const-string v8, "1"

    :goto_1
    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 2940
    iget-object v8, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v8, :cond_3

    .line 2941
    const-string v8, "0"

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 2949
    :cond_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2950
    .local v5, outstream:Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/OutputStream;->write([B)V

    .line 2951
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 2952
    return-void

    .line 2937
    .end local v5           #outstream:Ljava/io/FileOutputStream;
    .restart local v3       #installerName:Ljava/lang/String;
    :cond_1
    const-string v3, ""

    goto :goto_0

    .line 2939
    .end local v3           #installerName:Ljava/lang/String;
    :cond_2
    const-string v8, "0"

    goto :goto_1

    .line 2943
    :cond_3
    iget-object v8, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 2944
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2
    if-ge v2, v4, :cond_0

    aget-object v7, v0, v2

    .line 2945
    .local v7, sig:Landroid/content/pm/Signature;
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 2944
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 2530
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 2532
    .local v18, packagesToBackup:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-string v21, "BackupManagerService"

    const-string v22, "--- Performing full-dataset backup ---"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendStartBackup()V

    .line 2536
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mAllApps:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 2537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v21 .. v21}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v21

    const/16 v22, 0x40

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v18

    .line 2540
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeSystem:Z

    move/from16 v21, v0

    if-nez v21, :cond_1

    .line 2541
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v13, v0, :cond_1

    .line 2542
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/PackageInfo;

    .line 2543
    .local v19, pkg:Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_0

    .line 2544
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 2546
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2555
    .end local v13           #i:I
    .end local v19           #pkg:Landroid/content/pm/PackageInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mPackages:[Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 2556
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mPackages:[Ljava/lang/String;

    .local v4, arr$:[Ljava/lang/String;
    array-length v15, v4

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_1
    if-ge v14, v15, :cond_2

    aget-object v20, v4, v14

    .line 2558
    .local v20, pkgName:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v21 .. v21}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v21

    const/16 v22, 0x40

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2556
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 2560
    :catch_0
    move-exception v7

    .line 2561
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v21, "BackupManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unknown package "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", skipping"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2569
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v20           #pkgName:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->isEdmBackupRequest:Z

    move/from16 v21, v0

    if-nez v21, :cond_5

    .line 2570
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v13, v0, :cond_5

    .line 2571
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/PackageInfo;

    .line 2572
    .restart local v19       #pkg:Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v21, v0

    const v22, 0x8000

    and-int v21, v21, v22

    if-eqz v21, :cond_3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "com.android.sharedstoragebackup"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 2574
    :cond_3
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 2576
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 2583
    .end local v13           #i:I
    .end local v19           #pkg:Landroid/content/pm/PackageInfo;
    :cond_5
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v13, v0, :cond_7

    .line 2584
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/PackageInfo;

    .line 2585
    .restart local v19       #pkg:Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v21, v0

    const/16 v22, 0x2710

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_6

    .line 2590
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 2592
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 2596
    .end local v19           #pkg:Landroid/content/pm/PackageInfo;
    :cond_7
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 2597
    .local v16, ofstream:Ljava/io/FileOutputStream;
    const/16 v17, 0x0

    .line 2599
    .local v17, out:Ljava/io/OutputStream;
    const/16 v19, 0x0

    .line 2601
    .restart local v19       #pkg:Landroid/content/pm/PackageInfo;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mEncryptPassword:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mEncryptPassword:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_9

    const/4 v8, 0x1

    .line 2602
    .local v8, encrypting:Z
    :goto_5
    const/4 v5, 0x1

    .line 2603
    .local v5, compressing:Z
    move-object/from16 v9, v16

    .line 2607
    .local v9, finalOutput:Ljava/io/OutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->isEdmBackupRequest:Z

    move/from16 v21, v0

    if-nez v21, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/BackupManagerService;->hasBackupPassword()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 2608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mCurrentPassword:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x2710

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/BackupManagerService;->passwordMatchesSaved(Ljava/lang/String;I)Z

    move-result v21

    if-nez v21, :cond_a

    .line 2609
    const-string v21, "BackupManagerService"

    const-string v22, "Backup password mismatch; aborting"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 2696
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    .line 2698
    if-eqz v17, :cond_8

    :try_start_2
    throw v17

    .line 2699
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 2703
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 2704
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->clear()V

    .line 2705
    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 2706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 2707
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    .line 2709
    monitor-exit v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 2710
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendEndBackup()V

    .line 2711
    const-string v21, "BackupManagerService"

    const-string v22, "Full backup pass complete."

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v21, v0

    .end local v5           #compressing:Z
    .end local v8           #encrypting:Z
    .end local v9           #finalOutput:Ljava/io/OutputStream;
    :goto_7
    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2714
    return-void

    .line 2601
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 2639
    .restart local v5       #compressing:Z
    .restart local v8       #encrypting:Z
    .restart local v9       #finalOutput:Ljava/io/OutputStream;
    :cond_a
    :try_start_5
    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v21, 0x400

    move/from16 v0, v21

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2641
    .local v12, headerbuf:Ljava/lang/StringBuilder;
    const-string v21, "ANDROID BACKUP\n"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2642
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2643
    if-eqz v5, :cond_c

    const-string v21, "\n1\n"

    :goto_8
    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 2647
    if-eqz v8, :cond_d

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->isEdmBackupRequest:Z

    move/from16 v21, v0

    if-nez v21, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->isEdmRestoreRequest:Z

    move/from16 v21, v0

    if-nez v21, :cond_d

    .line 2648
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v9}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v9

    move-object v10, v9

    .line 2653
    .end local v9           #finalOutput:Ljava/io/OutputStream;
    .local v10, finalOutput:Ljava/io/OutputStream;
    :goto_9
    :try_start_7
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, "UTF-8"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    .line 2654
    .local v11, header:[B
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/io/OutputStream;->write([B)V

    .line 2657
    if-eqz v5, :cond_14

    .line 2658
    new-instance v6, Ljava/util/zip/Deflater;

    const/16 v21, 0x9

    move/from16 v0, v21

    invoke-direct {v6, v0}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 2659
    .local v6, deflater:Ljava/util/zip/Deflater;
    new-instance v9, Ljava/util/zip/DeflaterOutputStream;

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-direct {v9, v10, v6, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    .line 2662
    .end local v6           #deflater:Ljava/util/zip/Deflater;
    .end local v10           #finalOutput:Ljava/io/OutputStream;
    .restart local v9       #finalOutput:Ljava/io/OutputStream;
    :goto_a
    move-object/from16 v17, v9

    .line 2673
    :try_start_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeShared:Z

    move/from16 v21, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    if-eqz v21, :cond_b

    .line 2675
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v21 .. v21}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v21

    const-string v22, "com.android.sharedstoragebackup"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v19

    .line 2676
    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 2683
    :cond_b
    :goto_b
    :try_start_a
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v3

    .line 2684
    .local v3, N:I
    const/4 v13, 0x0

    :goto_c
    if-ge v13, v3, :cond_10

    .line 2685
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Landroid/content/pm/PackageInfo;

    move-object/from16 v19, v0

    .line 2686
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->backupOnePackage(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)V

    .line 2684
    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    .line 2643
    .end local v3           #N:I
    .end local v11           #header:[B
    :cond_c
    const-string v21, "\n0\n"
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_8

    .line 2650
    :cond_d
    :try_start_b
    const-string v21, "none\n"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_3

    move-object v10, v9

    .end local v9           #finalOutput:Ljava/io/OutputStream;
    .restart local v10       #finalOutput:Ljava/io/OutputStream;
    goto :goto_9

    .line 2663
    .end local v10           #finalOutput:Ljava/io/OutputStream;
    .restart local v9       #finalOutput:Ljava/io/OutputStream;
    :catch_1
    move-exception v7

    .line 2665
    .local v7, e:Ljava/lang/Exception;
    :goto_d
    :try_start_c
    const-string v21, "BackupManagerService"

    const-string v22, "Unable to emit archive header"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/server/BackupManagerService;->isEdmBackupFail:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    .line 2696
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    .line 2698
    if-eqz v17, :cond_e

    :try_start_d
    throw v17

    .line 2699
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 2703
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 2704
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->clear()V

    .line 2705
    monitor-exit v22
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 2706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 2707
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    .line 2709
    monitor-exit v22
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    .line 2710
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendEndBackup()V

    .line 2711
    const-string v21, "BackupManagerService"

    const-string v22, "Full backup pass complete."

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v21, v0

    goto/16 :goto_7

    .line 2677
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v11       #header:[B
    :catch_2
    move-exception v7

    .line 2678
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_10
    const-string v21, "BackupManagerService"

    const-string v22, "Unable to find shared-storage backup handler"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    goto/16 :goto_b

    .line 2691
    .end local v5           #compressing:Z
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8           #encrypting:Z
    .end local v9           #finalOutput:Ljava/io/OutputStream;
    .end local v11           #header:[B
    .end local v12           #headerbuf:Ljava/lang/StringBuilder;
    :catch_3
    move-exception v7

    .line 2692
    .local v7, e:Landroid/os/RemoteException;
    :try_start_11
    const-string v21, "BackupManagerService"

    const-string v22, "App died during full backup"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 2696
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    .line 2698
    if-eqz v17, :cond_f

    :try_start_12
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    .line 2699
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9

    .line 2703
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 2704
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->clear()V

    .line 2705
    monitor-exit v22
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 2706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 2707
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    .line 2709
    monitor-exit v22
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 2710
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendEndBackup()V

    .line 2711
    const-string v21, "BackupManagerService"

    const-string v22, "Full backup pass complete."

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v21, v0

    goto/16 :goto_7

    .line 2690
    .end local v7           #e:Landroid/os/RemoteException;
    .restart local v3       #N:I
    .restart local v5       #compressing:Z
    .restart local v8       #encrypting:Z
    .restart local v9       #finalOutput:Ljava/io/OutputStream;
    .restart local v11       #header:[B
    .restart local v12       #headerbuf:Ljava/lang/StringBuilder;
    :cond_10
    :try_start_15
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->finalizeBackup(Ljava/io/OutputStream;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_3
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4

    .line 2696
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    .line 2698
    if-eqz v17, :cond_11

    :try_start_16
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    .line 2699
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_5

    .line 2703
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 2704
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->clear()V

    .line 2705
    monitor-exit v22
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    .line 2706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 2707
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    .line 2709
    monitor-exit v22
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    .line 2710
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendEndBackup()V

    .line 2711
    const-string v21, "BackupManagerService"

    const-string v22, "Full backup pass complete."

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v21, v0

    goto/16 :goto_7

    .line 2693
    .end local v3           #N:I
    .end local v5           #compressing:Z
    .end local v8           #encrypting:Z
    .end local v9           #finalOutput:Ljava/io/OutputStream;
    .end local v11           #header:[B
    .end local v12           #headerbuf:Ljava/lang/StringBuilder;
    :catch_4
    move-exception v7

    .line 2694
    .local v7, e:Ljava/lang/Exception;
    :try_start_19
    const-string v21, "BackupManagerService"

    const-string v22, "Internal exception during full backup"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 2696
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    .line 2698
    if-eqz v17, :cond_12

    :try_start_1a
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    .line 2699
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_8

    .line 2703
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 2704
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->clear()V

    .line 2705
    monitor-exit v22
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    .line 2706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 2707
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    .line 2709
    monitor-exit v22
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    .line 2710
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendEndBackup()V

    .line 2711
    const-string v21, "BackupManagerService"

    const-string v22, "Full backup pass complete."

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v21, v0

    goto/16 :goto_7

    .line 2696
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    .line 2698
    if-eqz v17, :cond_13

    :try_start_1d
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    .line 2699
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_a

    .line 2703
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 2704
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->clear()V

    .line 2705
    monitor-exit v22
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    .line 2706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 2707
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notifyAll()V

    .line 2709
    monitor-exit v22
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    .line 2710
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendEndBackup()V

    .line 2711
    const-string v22, "BackupManagerService"

    const-string v23, "Full backup pass complete."

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2696
    throw v21

    .line 2705
    :catchall_1
    move-exception v21

    :try_start_20
    monitor-exit v22
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    throw v21

    .line 2709
    :catchall_2
    move-exception v21

    :try_start_21
    monitor-exit v22
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    throw v21

    .line 2705
    .local v7, e:Landroid/os/RemoteException;
    :catchall_3
    move-exception v21

    :try_start_22
    monitor-exit v22
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_3

    throw v21

    .line 2709
    :catchall_4
    move-exception v21

    :try_start_23
    monitor-exit v22
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_4

    throw v21

    .line 2705
    .local v7, e:Ljava/lang/Exception;
    :catchall_5
    move-exception v21

    :try_start_24
    monitor-exit v22
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_5

    throw v21

    .line 2709
    :catchall_6
    move-exception v21

    :try_start_25
    monitor-exit v22
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_6

    throw v21

    .line 2705
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v5       #compressing:Z
    .restart local v8       #encrypting:Z
    .restart local v9       #finalOutput:Ljava/io/OutputStream;
    :catchall_7
    move-exception v21

    :try_start_26
    monitor-exit v22
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_7

    throw v21

    .line 2709
    :catchall_8
    move-exception v21

    :try_start_27
    monitor-exit v22
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_8

    throw v21

    .line 2705
    .restart local v7       #e:Ljava/lang/Exception;
    .restart local v12       #headerbuf:Ljava/lang/StringBuilder;
    :catchall_9
    move-exception v21

    :try_start_28
    monitor-exit v22
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_9

    throw v21

    .line 2709
    :catchall_a
    move-exception v21

    :try_start_29
    monitor-exit v22
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_a

    throw v21

    .line 2705
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v3       #N:I
    .restart local v11       #header:[B
    :catchall_b
    move-exception v21

    :try_start_2a
    monitor-exit v22
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_b

    throw v21

    .line 2709
    :catchall_c
    move-exception v21

    :try_start_2b
    monitor-exit v22
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_c

    throw v21

    .line 2700
    :catch_5
    move-exception v21

    goto/16 :goto_10

    .end local v3           #N:I
    .end local v11           #header:[B
    .restart local v7       #e:Ljava/lang/Exception;
    :catch_6
    move-exception v21

    goto/16 :goto_e

    .end local v7           #e:Ljava/lang/Exception;
    .end local v12           #headerbuf:Ljava/lang/StringBuilder;
    :catch_7
    move-exception v21

    goto/16 :goto_6

    .end local v5           #compressing:Z
    .end local v8           #encrypting:Z
    .end local v9           #finalOutput:Ljava/io/OutputStream;
    .restart local v7       #e:Ljava/lang/Exception;
    :catch_8
    move-exception v21

    goto/16 :goto_11

    .local v7, e:Landroid/os/RemoteException;
    :catch_9
    move-exception v21

    goto/16 :goto_f

    .end local v7           #e:Landroid/os/RemoteException;
    :catch_a
    move-exception v22

    goto/16 :goto_12

    .line 2663
    .restart local v5       #compressing:Z
    .restart local v8       #encrypting:Z
    .restart local v10       #finalOutput:Ljava/io/OutputStream;
    .restart local v12       #headerbuf:Ljava/lang/StringBuilder;
    :catch_b
    move-exception v7

    move-object v9, v10

    .end local v10           #finalOutput:Ljava/io/OutputStream;
    .restart local v9       #finalOutput:Ljava/io/OutputStream;
    goto/16 :goto_d

    .end local v9           #finalOutput:Ljava/io/OutputStream;
    .restart local v10       #finalOutput:Ljava/io/OutputStream;
    .restart local v11       #header:[B
    :cond_14
    move-object v9, v10

    .end local v10           #finalOutput:Ljava/io/OutputStream;
    .restart local v9       #finalOutput:Ljava/io/OutputStream;
    goto/16 :goto_a
.end method

.method sendEndBackup()V
    .locals 3

    .prologue
    .line 3002
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    .line 3004
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onEndBackup()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3010
    :cond_0
    :goto_0
    return-void

    .line 3005
    :catch_0
    move-exception v0

    .line 3006
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "full backup observer went away: endBackup"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3007
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method

.method sendOnBackupPackage(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 2990
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    .line 2993
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onBackupPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2999
    :cond_0
    :goto_0
    return-void

    .line 2994
    :catch_0
    move-exception v0

    .line 2995
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "full backup observer went away: backupPackage"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method

.method sendStartBackup()V
    .locals 3

    .prologue
    .line 2979
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    .line 2981
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onStartBackup()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2987
    :cond_0
    :goto_0
    return-void

    .line 2982
    :catch_0
    move-exception v0

    .line 2983
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "full backup observer went away: startBackup"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2984
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method
