.class public final Landroid/provider/Telephony$Threads;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/Telephony$ThreadsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Threads"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Telephony$Threads$Intents;
    }
.end annotation


# static fields
.field public static final ALERTS_ALL_ONE_THREAD:I = 0x6e

.field public static final ALERT_AMBER_THREAD:I = 0x67

.field public static final ALERT_EXTREME_THREAD:I = 0x65

.field public static final ALERT_PRESIDENTIAL_THREAD:I = 0x64

.field public static final ALERT_SEVERE_THREAD:I = 0x66

.field public static final ALERT_TEST_MESSAGE_THREAD:I = 0x68

.field public static final BROADCAST_THREAD:I = 0x1

.field public static final CMAS_URI:Landroid/net/Uri; = null

.field public static final COMMON_THREAD:I = 0x0

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field public static final LAST_MESSAGE_TIME_URI:Landroid/net/Uri; = null

.field public static final OBSOLETE_THREADS_URI:Landroid/net/Uri; = null

.field public static final REPLY_ALL_URI:Landroid/net/Uri; = null

.field private static final SECURITY_THREAD_ID_CONTENT_URI:Landroid/net/Uri; = null

.field private static final STANDARD_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final TEMP_RECIPIENT:J = 0x7ffffffffffffffeL

.field public static final TEMP_THREAD_ID:J = 0x7ffffffffffffffeL

.field private static final THREAD_ID_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1707
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Telephony$Threads;->ID_PROJECTION:[Ljava/lang/String;

    .line 1709
    const-string v0, "content://mms-sms/threadID"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Threads;->THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    .line 1712
    const-string v0, "content://security_mms-sms/threadID"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Threads;->SECURITY_THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    .line 1715
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "conversations"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    .line 1717
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "obsolete"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Threads;->OBSOLETE_THREADS_URI:Landroid/net/Uri;

    .line 1720
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "cmas"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Threads;->CMAS_URI:Landroid/net/Uri;

    .line 1725
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "reply_all"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Threads;->REPLY_ALL_URI:Landroid/net/Uri;

    .line 1727
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "last_msg_time"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Threads;->LAST_MESSAGE_TIME_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1754
    return-void
.end method

.method public static getOrCreateSecurityThreadId(Landroid/content/Context;Ljava/util/Set;)J
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 1870
    .local p1, recipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Telephony$Threads;->getOrCreateSecurityThreadId(Landroid/content/Context;Ljava/util/Set;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getOrCreateSecurityThreadId(Landroid/content/Context;Ljava/util/Set;Z)J
    .locals 11
    .parameter "context"
    .parameter
    .parameter "createThread"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)J"
        }
    .end annotation

    .prologue
    .local p1, recipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1875
    sget-object v0, Landroid/provider/Telephony$Threads;->SECURITY_THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    .line 1878
    .local v10, uriBuilder:Landroid/net/Uri$Builder;
    invoke-static {p1}, Landroid/provider/Telephony$Threads;->isTempRecipient(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1879
    const-wide v0, 0x7ffffffffffffffeL

    .line 1916
    :goto_0
    return-wide v0

    .line 1883
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1884
    .local v9, recipient:Ljava/lang/String;
    invoke-static {v9}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1885
    invoke-static {v9}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1888
    :cond_1
    const-string/jumbo v0, "recipient"

    invoke-virtual {v10, v0, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 1891
    .end local v9           #recipient:Ljava/lang/String;
    :cond_2
    const-string v0, "createthread"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1893
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 1896
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/Telephony$Threads;->ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1899
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 1901
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1902
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 1907
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1904
    :cond_3
    :try_start_1
    const-string v0, "Telephony"

    const-string v1, "getOrCreateSecurityThreadId returned no rows!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1907
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1913
    :cond_4
    if-eqz p2, :cond_5

    .line 1914
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to find or allocate a thread ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1907
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1916
    :cond_5
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 3
    .parameter "context"
    .parameter "recipient"

    .prologue
    .line 1770
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1772
    .local v0, recipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1773
    invoke-static {p0, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;I)J
    .locals 3
    .parameter "context"
    .parameter "recipient"
    .parameter "simSlot"

    .prologue
    .line 1783
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1785
    .local v0, recipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1786
    invoke-static {p0, v0, p2}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;I)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 1817
    .local p1, recipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;I)J
    .locals 2
    .parameter "context"
    .parameter
    .parameter "simSlot"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I)J"
        }
    .end annotation

    .prologue
    .line 1923
    .local p1, recipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;ZI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;Z)J
    .locals 11
    .parameter "context"
    .parameter
    .parameter "createThread"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)J"
        }
    .end annotation

    .prologue
    .local p1, recipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1823
    sget-object v0, Landroid/provider/Telephony$Threads;->THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    .line 1826
    .local v10, uriBuilder:Landroid/net/Uri$Builder;
    invoke-static {p1}, Landroid/provider/Telephony$Threads;->isTempRecipient(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1827
    const-wide v0, 0x7ffffffffffffffeL

    .line 1864
    :goto_0
    return-wide v0

    .line 1831
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1832
    .local v9, recipient:Ljava/lang/String;
    invoke-static {v9}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1833
    invoke-static {v9}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1836
    :cond_1
    const-string/jumbo v0, "recipient"

    invoke-virtual {v10, v0, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 1839
    .end local v9           #recipient:Ljava/lang/String;
    :cond_2
    const-string v0, "createthread"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1841
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 1844
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/Telephony$Threads;->ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1846
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 1849
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1850
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 1855
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1852
    :cond_3
    :try_start_1
    const-string v0, "Telephony"

    const-string v1, "getOrCreateThreadId returned no rows!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1855
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1861
    :cond_4
    if-eqz p2, :cond_5

    .line 1862
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to find or allocate a thread ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1855
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1864
    :cond_5
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;ZI)J
    .locals 11
    .parameter "context"
    .parameter
    .parameter "createThread"
    .parameter "simSlot"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZI)J"
        }
    .end annotation

    .prologue
    .local p1, recipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1929
    sget-object v0, Landroid/provider/Telephony$Threads;->THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    .line 1932
    .local v10, uriBuilder:Landroid/net/Uri$Builder;
    invoke-static {p1}, Landroid/provider/Telephony$Threads;->isTempRecipient(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1933
    const-wide v0, 0x7ffffffffffffffeL

    .line 1974
    :goto_0
    return-wide v0

    .line 1937
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1938
    .local v9, recipient:Ljava/lang/String;
    invoke-static {v9}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1939
    invoke-static {v9}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1942
    :cond_1
    const-string/jumbo v0, "recipient"

    invoke-virtual {v10, v0, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 1945
    .end local v9           #recipient:Ljava/lang/String;
    :cond_2
    const-string v0, "createthread"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1946
    const-string/jumbo v0, "sim_slot"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1948
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 1951
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/Telephony$Threads;->ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1953
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 1956
    :try_start_0
    const-string v0, "Telephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrCreateThreadId cursor cnt: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1960
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 1965
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1962
    :cond_3
    :try_start_1
    const-string v0, "Telephony"

    const-string v1, "getOrCreateThreadId returned no rows!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1965
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1969
    :cond_4
    const-string v0, "Telephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrCreateThreadId failed with uri "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    if-eqz p2, :cond_5

    .line 1972
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to find or allocate a thread ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1965
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1974
    :cond_5
    const-wide/16 v0, -0x1

    goto/16 :goto_0
.end method

.method private static isTempRecipient(Ljava/util/Set;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1794
    .local p0, recipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1796
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1797
    .local v1, recipient:Ljava/lang/String;
    const-wide v2, 0x7ffffffffffffffeL

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1800
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #recipient:Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
