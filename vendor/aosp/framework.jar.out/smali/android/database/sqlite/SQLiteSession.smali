.class public final Landroid/database/sqlite/SQLiteSession;
.super Ljava/lang/Object;
.source "SQLiteSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteSession$1;,
        Landroid/database/sqlite/SQLiteSession$Transaction;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "SQLiteSessionJava"

.field public static final TRANSACTION_MODE_DEFERRED:I = 0x0

.field public static final TRANSACTION_MODE_EXCLUSIVE:I = 0x2

.field public static final TRANSACTION_MODE_IMMEDIATE:I = 0x1


# instance fields
.field private mConnection:Landroid/database/sqlite/SQLiteConnection;

.field private mConnectionFlags:I

.field private final mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

.field private mConnectionUseCount:I

.field private mTransactionPool:Landroid/database/sqlite/SQLiteSession$Transaction;

.field private mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    const-class v0, Landroid/database/sqlite/SQLiteSession;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/database/sqlite/SQLiteSession;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteConnectionPool;)V
    .locals 2
    .parameter "connectionPool"

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    if-nez p1, :cond_0

    .line 230
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connectionPool must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    iput-object p1, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 234
    return-void
.end method

.method private acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V
    .locals 1
    .parameter "sql"
    .parameter "connectionFlags"
    .parameter "cancellationSignal"

    .prologue
    .line 904
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    if-nez v0, :cond_1

    .line 905
    sget-boolean v0, Landroid/database/sqlite/SQLiteSession;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 906
    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteConnectionPool;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 908
    iput p2, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionFlags:I

    .line 910
    :cond_1
    iget v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    .line 911
    return-void
.end method

.method private beginTransactionUnchecked(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V
    .locals 5
    .parameter "transactionMode"
    .parameter "transactionListener"
    .parameter "connectionFlags"
    .parameter "cancellationSignal"

    .prologue
    const/4 v3, 0x0

    .line 306
    if-eqz p4, :cond_0

    .line 307
    invoke-virtual {p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 310
    :cond_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-nez v2, :cond_1

    .line 311
    invoke-direct {p0, v3, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 316
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-nez v2, :cond_2

    .line 318
    packed-switch p1, :pswitch_data_0

    .line 328
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    const-string v3, "BEGIN;"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 336
    :try_start_1
    invoke-interface {p2}, Landroid/database/sqlite/SQLiteTransactionListener;->onBegin()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 346
    :cond_3
    :try_start_2
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteSession;->obtainTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;)Landroid/database/sqlite/SQLiteSession$Transaction;

    move-result-object v1

    .line 347
    .local v1, transaction:Landroid/database/sqlite/SQLiteSession$Transaction;
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iput-object v2, v1, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    .line 348
    iput-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 350
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-nez v2, :cond_4

    .line 351
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 354
    :cond_4
    return-void

    .line 320
    .end local v1           #transaction:Landroid/database/sqlite/SQLiteSession$Transaction;
    :pswitch_0
    :try_start_3
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    const-string v3, "BEGIN IMMEDIATE;"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 350
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-nez v3, :cond_5

    .line 351
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    :cond_5
    throw v2

    .line 324
    :pswitch_1
    :try_start_4
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    const-string v3, "BEGIN EXCLUSIVE;"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, ex:Ljava/lang/RuntimeException;
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-nez v2, :cond_6

    .line 339
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    const-string v3, "ROLLBACK;"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 341
    :cond_6
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 318
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private endTransactionUnchecked(Landroid/os/CancellationSignal;Z)V
    .locals 8
    .parameter "cancellationSignal"
    .parameter "yielding"

    .prologue
    const/4 v5, 0x1

    .line 406
    if-eqz p1, :cond_0

    .line 407
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 410
    :cond_0
    iget-object v4, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    .line 411
    .local v4, top:Landroid/database/sqlite/SQLiteSession$Transaction;
    iget-boolean v6, v4, Landroid/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    if-nez v6, :cond_1

    if-eqz p2, :cond_4

    :cond_1
    iget-boolean v6, v4, Landroid/database/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    if-nez v6, :cond_4

    move v3, v5

    .line 413
    .local v3, successful:Z
    :goto_0
    const/4 v2, 0x0

    .line 414
    .local v2, listenerException:Ljava/lang/RuntimeException;
    iget-object v1, v4, Landroid/database/sqlite/SQLiteSession$Transaction;->mListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 415
    .local v1, listener:Landroid/database/sqlite/SQLiteTransactionListener;
    if-eqz v1, :cond_2

    .line 417
    if-eqz v3, :cond_5

    .line 418
    :try_start_0
    invoke-interface {v1}, Landroid/database/sqlite/SQLiteTransactionListener;->onCommit()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :cond_2
    :goto_1
    iget-object v6, v4, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    iput-object v6, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    .line 429
    invoke-direct {p0, v4}, Landroid/database/sqlite/SQLiteSession;->recycleTransaction(Landroid/database/sqlite/SQLiteSession$Transaction;)V

    .line 431
    iget-object v6, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v6, :cond_6

    .line 432
    if-nez v3, :cond_3

    .line 433
    iget-object v6, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iput-boolean v5, v6, Landroid/database/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    .line 447
    :cond_3
    :goto_2
    if-eqz v2, :cond_8

    .line 448
    throw v2

    .line 411
    .end local v1           #listener:Landroid/database/sqlite/SQLiteTransactionListener;
    .end local v2           #listenerException:Ljava/lang/RuntimeException;
    .end local v3           #successful:Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 420
    .restart local v1       #listener:Landroid/database/sqlite/SQLiteTransactionListener;
    .restart local v2       #listenerException:Ljava/lang/RuntimeException;
    .restart local v3       #successful:Z
    :cond_5
    :try_start_1
    invoke-interface {v1}, Landroid/database/sqlite/SQLiteTransactionListener;->onRollback()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, ex:Ljava/lang/RuntimeException;
    move-object v2, v0

    .line 424
    const/4 v3, 0x0

    goto :goto_1

    .line 437
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :cond_6
    if-eqz v3, :cond_7

    .line 438
    :try_start_2
    iget-object v5, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    const-string v6, "COMMIT;"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, p1}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 443
    :goto_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    goto :goto_2

    .line 440
    :cond_7
    :try_start_3
    iget-object v5, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    const-string v6, "ROLLBACK;"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, p1}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 443
    :catchall_0
    move-exception v5

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    throw v5

    .line 450
    :cond_8
    return-void
.end method

.method private executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z
    .locals 4
    .parameter "sql"
    .parameter "bindArgs"
    .parameter "connectionFlags"
    .parameter "cancellationSignal"

    .prologue
    const/4 v1, 0x1

    .line 879
    if-eqz p4, :cond_0

    .line 880
    invoke-virtual {p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 883
    :cond_0
    invoke-static {p1}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v0

    .line 884
    .local v0, type:I
    packed-switch v0, :pswitch_data_0

    .line 899
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 886
    :pswitch_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, p3, p4}, Landroid/database/sqlite/SQLiteSession;->beginTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V

    goto :goto_0

    .line 891
    :pswitch_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteSession;->setTransactionSuccessful()V

    .line 892
    invoke-virtual {p0, p4}, Landroid/database/sqlite/SQLiteSession;->endTransaction(Landroid/os/CancellationSignal;)V

    goto :goto_0

    .line 896
    :pswitch_2
    invoke-virtual {p0, p4}, Landroid/database/sqlite/SQLiteSession;->endTransaction(Landroid/os/CancellationSignal;)V

    goto :goto_0

    .line 884
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private obtainTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;)Landroid/database/sqlite/SQLiteSession$Transaction;
    .locals 4
    .parameter "mode"
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 948
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionPool:Landroid/database/sqlite/SQLiteSession$Transaction;

    .line 949
    .local v0, transaction:Landroid/database/sqlite/SQLiteSession$Transaction;
    if-eqz v0, :cond_0

    .line 950
    iget-object v1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    iput-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionPool:Landroid/database/sqlite/SQLiteSession$Transaction;

    .line 951
    iput-object v3, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    .line 952
    iput-boolean v2, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    .line 953
    iput-boolean v2, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    .line 957
    :goto_0
    iput p1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMode:I

    .line 958
    iput-object p2, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 959
    return-object v0

    .line 955
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteSession$Transaction;

    .end local v0           #transaction:Landroid/database/sqlite/SQLiteSession$Transaction;
    invoke-direct {v0, v3}, Landroid/database/sqlite/SQLiteSession$Transaction;-><init>(Landroid/database/sqlite/SQLiteSession$1;)V

    .restart local v0       #transaction:Landroid/database/sqlite/SQLiteSession$Transaction;
    goto :goto_0
.end method

.method private recycleTransaction(Landroid/database/sqlite/SQLiteSession$Transaction;)V
    .locals 1
    .parameter "transaction"

    .prologue
    .line 963
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionPool:Landroid/database/sqlite/SQLiteSession$Transaction;

    iput-object v0, p1, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    .line 964
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/database/sqlite/SQLiteSession$Transaction;->mListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 965
    iput-object p1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionPool:Landroid/database/sqlite/SQLiteSession$Transaction;

    .line 966
    return-void
.end method

.method private releaseConnection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 914
    sget-boolean v0, Landroid/database/sqlite/SQLiteSession;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 915
    :cond_0
    sget-boolean v0, Landroid/database/sqlite/SQLiteSession;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 916
    :cond_1
    iget v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    if-nez v0, :cond_2

    .line 918
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteConnectionPool;->releaseConnection(Landroid/database/sqlite/SQLiteConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 920
    iput-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 923
    :cond_2
    return-void

    .line 920
    :catchall_0
    move-exception v0

    iput-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    throw v0
.end method

.method private throwIfNestedTransaction()V
    .locals 2

    .prologue
    .line 941
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_0

    .line 942
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this operation because a nested transaction is in progress."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 945
    :cond_0
    return-void
.end method

.method private throwIfNoTransaction()V
    .locals 2

    .prologue
    .line 926
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-nez v0, :cond_0

    .line 927
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this operation because there is no current transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 930
    :cond_0
    return-void
.end method

.method private throwIfTransactionMarkedSuccessful()V
    .locals 2

    .prologue
    .line 933
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget-boolean v0, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    if-eqz v0, :cond_0

    .line 934
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this operation because the transaction has already been marked successful.  The only thing you can do now is call endTransaction()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 938
    :cond_0
    return-void
.end method

.method private yieldTransactionUnchecked(JLandroid/os/CancellationSignal;)Z
    .locals 7
    .parameter "sleepAfterYieldDelayMillis"
    .parameter "cancellationSignal"

    .prologue
    const/4 v3, 0x1

    .line 527
    if-eqz p3, :cond_0

    .line 528
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 531
    :cond_0
    iget-object v4, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v5, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    iget v6, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionFlags:I

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteConnectionPool;->shouldYieldConnection(Landroid/database/sqlite/SQLiteConnection;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 532
    const/4 v3, 0x0

    .line 550
    :goto_0
    return v3

    .line 535
    :cond_1
    iget-object v4, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget v2, v4, Landroid/database/sqlite/SQLiteSession$Transaction;->mMode:I

    .line 536
    .local v2, transactionMode:I
    iget-object v4, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget-object v1, v4, Landroid/database/sqlite/SQLiteSession$Transaction;->mListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 537
    .local v1, listener:Landroid/database/sqlite/SQLiteTransactionListener;
    iget v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionFlags:I

    .line 538
    .local v0, connectionFlags:I
    invoke-direct {p0, p3, v3}, Landroid/database/sqlite/SQLiteSession;->endTransactionUnchecked(Landroid/os/CancellationSignal;Z)V

    .line 540
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-lez v4, :cond_2

    .line 542
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    :cond_2
    :goto_1
    invoke-direct {p0, v2, v1, v0, p3}, Landroid/database/sqlite/SQLiteSession;->beginTransactionUnchecked(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V

    goto :goto_0

    .line 543
    :catch_0
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public beginTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V
    .locals 0
    .parameter "transactionMode"
    .parameter "transactionListener"
    .parameter "connectionFlags"
    .parameter "cancellationSignal"

    .prologue
    .line 298
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfTransactionMarkedSuccessful()V

    .line 299
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->beginTransactionUnchecked(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V

    .line 301
    return-void
.end method

.method public changePassword([B)V
    .locals 2
    .parameter "newPassword"

    .prologue
    const/4 v1, 0x0

    .line 847
    iget v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionFlags:I

    invoke-direct {p0, v1, v0, v1}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 848
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection;->changePassword([B)V

    .line 851
    :cond_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 853
    return-void
.end method

.method public endTransaction(Landroid/os/CancellationSignal;)V
    .locals 1
    .parameter "cancellationSignal"

    .prologue
    .line 399
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfNoTransaction()V

    .line 400
    sget-boolean v0, Landroid/database/sqlite/SQLiteSession;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 402
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteSession;->endTransactionUnchecked(Landroid/os/CancellationSignal;Z)V

    .line 403
    return-void
.end method

.method public execute(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)V
    .locals 2
    .parameter "sql"
    .parameter "bindArgs"
    .parameter "connectionFlags"
    .parameter "cancellationSignal"

    .prologue
    .line 610
    if-nez p1, :cond_0

    .line 611
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 614
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 624
    :goto_0
    return-void

    .line 618
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 620
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    throw v0
.end method

.method public executeForBlobFileDescriptor(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .parameter "sql"
    .parameter "bindArgs"
    .parameter "connectionFlags"
    .parameter "cancellationSignal"

    .prologue
    .line 711
    if-nez p1, :cond_0

    .line 712
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 715
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 716
    const/4 v0, 0x0

    .line 724
    :goto_0
    return-object v0

    .line 719
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 721
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->executeForBlobFileDescriptor(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 724
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    throw v0
.end method

.method public executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)I
    .locals 2
    .parameter "sql"
    .parameter "bindArgs"
    .parameter "connectionFlags"
    .parameter "cancellationSignal"

    .prologue
    .line 745
    if-nez p1, :cond_0

    .line 746
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 750
    const/4 v0, 0x0

    .line 758
    :goto_0
    return v0

    .line 753
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 755
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 758
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    throw v0
.end method

.method public executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Landroid/database/CursorWindow;IIZILandroid/os/CancellationSignal;)I
    .locals 10
    .parameter "sql"
    .parameter "bindArgs"
    .parameter "window"
    .parameter "startPos"
    .parameter "requiredPos"
    .parameter "countAllRows"
    .parameter "connectionFlags"
    .parameter "cancellationSignal"

    .prologue
    .line 823
    if-nez p1, :cond_0

    .line 824
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "sql must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 826
    :cond_0
    if-nez p3, :cond_1

    .line 827
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "window must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 830
    :cond_1
    move/from16 v0, p7

    move-object/from16 v1, p8

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 831
    invoke-virtual {p3}, Landroid/database/CursorWindow;->clear()V

    .line 832
    const/4 v2, 0x0

    .line 841
    :goto_0
    return v2

    .line 835
    :cond_2
    move/from16 v0, p7

    move-object/from16 v1, p8

    invoke-direct {p0, p1, v0, v1}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 837
    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteConnection;->executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Landroid/database/CursorWindow;IIZLandroid/os/CancellationSignal;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 841
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    throw v2
.end method

.method public executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)J
    .locals 2
    .parameter "sql"
    .parameter "bindArgs"
    .parameter "connectionFlags"
    .parameter "cancellationSignal"

    .prologue
    .line 779
    if-nez p1, :cond_0

    .line 780
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 783
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 784
    const-wide/16 v0, 0x0

    .line 792
    :goto_0
    return-wide v0

    .line 787
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 789
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 792
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    throw v0
.end method

.method public executeForLong(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)J
    .locals 2
    .parameter "sql"
    .parameter "bindArgs"
    .parameter "connectionFlags"
    .parameter "cancellationSignal"

    .prologue
    .line 643
    if-nez p1, :cond_0

    .line 644
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    const-wide/16 v0, 0x0

    .line 655
    :goto_0
    return-wide v0

    .line 651
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 653
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 655
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    throw v0
.end method

.method public executeForString(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Ljava/lang/String;
    .locals 2
    .parameter "sql"
    .parameter "bindArgs"
    .parameter "connectionFlags"
    .parameter "cancellationSignal"

    .prologue
    .line 676
    if-nez p1, :cond_0

    .line 677
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    const/4 v0, 0x0

    .line 688
    :goto_0
    return-object v0

    .line 684
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 686
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 688
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    throw v0
.end method

.method public hasConnection()Z
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNestedTransaction()Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTransaction()Z
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepare(Ljava/lang/String;ILandroid/os/CancellationSignal;Landroid/database/sqlite/SQLiteStatementInfo;)V
    .locals 2
    .parameter "sql"
    .parameter "connectionFlags"
    .parameter "cancellationSignal"
    .parameter "outStatementInfo"

    .prologue
    .line 579
    if-nez p1, :cond_0

    .line 580
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_0
    if-eqz p3, :cond_1

    .line 584
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 587
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    .line 589
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p4}, Landroid/database/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;Landroid/database/sqlite/SQLiteStatementInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    .line 593
    return-void

    .line 591
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    throw v0
.end method

.method public setTransactionSuccessful()V
    .locals 2

    .prologue
    .line 372
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfNoTransaction()V

    .line 373
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfTransactionMarkedSuccessful()V

    .line 375
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    .line 376
    return-void
.end method

.method public yieldTransaction(JZLandroid/os/CancellationSignal;)Z
    .locals 2
    .parameter "sleepAfterYieldDelayMillis"
    .parameter "throwIfUnsafe"
    .parameter "cancellationSignal"

    .prologue
    const/4 v0, 0x0

    .line 505
    if-eqz p3, :cond_1

    .line 506
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfNoTransaction()V

    .line 507
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfTransactionMarkedSuccessful()V

    .line 508
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfNestedTransaction()V

    .line 515
    :cond_0
    sget-boolean v1, Landroid/database/sqlite/SQLiteSession;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    if-nez v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 510
    :cond_1
    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget-boolean v1, v1, Landroid/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v1, :cond_0

    .line 521
    :cond_2
    :goto_0
    return v0

    .line 517
    :cond_3
    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget-boolean v1, v1, Landroid/database/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    if-nez v1, :cond_2

    .line 521
    invoke-direct {p0, p1, p2, p4}, Landroid/database/sqlite/SQLiteSession;->yieldTransactionUnchecked(JLandroid/os/CancellationSignal;)Z

    move-result v0

    goto :goto_0
.end method
