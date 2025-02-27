.class public Landroid/util/GeneralUtil;
.super Ljava/lang/Object;
.source "GeneralUtil.java"


# static fields
.field static DEBUG:Z

.field static TAG:Ljava/lang/String;

.field private static isPhone:Z

.field private static myInstance:Landroid/util/GeneralUtil;

.field static objFeature:Ljava/lang/Object;

.field static objInstance:Ljava/lang/Object;


# instance fields
.field private ctxt:Landroid/content/Context;

.field private featureCacheSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Landroid/util/GeneralUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/GeneralUtil;->TAG:Ljava/lang/String;

    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Landroid/util/GeneralUtil;->DEBUG:Z

    .line 40
    const/4 v0, 0x0

    sput-object v0, Landroid/util/GeneralUtil;->myInstance:Landroid/util/GeneralUtil;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/GeneralUtil;->objInstance:Ljava/lang/Object;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/GeneralUtil;->objFeature:Ljava/lang/Object;

    .line 53
    invoke-static {}, Landroid/util/GeneralUtil;->isPhoneInternal()Z

    move-result v0

    sput-boolean v0, Landroid/util/GeneralUtil;->isPhone:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Landroid/util/GeneralUtil;->ctxt:Landroid/content/Context;

    .line 45
    iput-object v0, p0, Landroid/util/GeneralUtil;->featureCacheSet:Ljava/util/HashSet;

    .line 48
    iput-object v0, p0, Landroid/util/GeneralUtil;->pm:Landroid/content/pm/PackageManager;

    .line 38
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Landroid/util/GeneralUtil;->ctxt:Landroid/content/Context;

    .line 45
    iput-object v0, p0, Landroid/util/GeneralUtil;->featureCacheSet:Ljava/util/HashSet;

    .line 48
    iput-object v0, p0, Landroid/util/GeneralUtil;->pm:Landroid/content/pm/PackageManager;

    .line 66
    iput-object p1, p0, Landroid/util/GeneralUtil;->ctxt:Landroid/content/Context;

    .line 67
    iget-object v0, p0, Landroid/util/GeneralUtil;->ctxt:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/util/GeneralUtil;->pm:Landroid/content/pm/PackageManager;

    .line 68
    return-void
.end method

.method public static dump(Landroid/content/Context;Ljava/io/PrintWriter;)Z
    .locals 3
    .parameter "ctxt"
    .parameter "pw"

    .prologue
    .line 126
    invoke-static {p0}, Landroid/util/GeneralUtil;->initialise(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    const/4 v2, 0x0

    .line 137
    :goto_0
    return v2

    .line 130
    :cond_0
    const-string v2, "===== Dump of supported system feature ====="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    sget-object v2, Landroid/util/GeneralUtil;->myInstance:Landroid/util/GeneralUtil;

    iget-object v1, v2, Landroid/util/GeneralUtil;->featureCacheSet:Ljava/util/HashSet;

    .line 132
    .local v1, refSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 133
    .local v0, iterators:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 136
    :cond_1
    const-string v2, "===== End dump ====="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getPixelFromDP(Landroid/content/Context;I)I
    .locals 3
    .parameter "context"
    .parameter "nDP"

    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 152
    .local v0, d:F
    int-to-float v2, p1

    mul-float/2addr v2, v0

    float-to-int v1, v2

    .line 153
    .local v1, nPX:I
    return v1
.end method

.method public static hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "ctxt"
    .parameter "fName"

    .prologue
    const/4 v1, 0x0

    .line 107
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 108
    :cond_0
    sget-object v2, Landroid/util/GeneralUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ctxt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , fName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_1
    :goto_0
    return v1

    .line 113
    :cond_2
    invoke-static {p0}, Landroid/util/GeneralUtil;->initialise(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    sget-object v2, Landroid/util/GeneralUtil;->myInstance:Landroid/util/GeneralUtil;

    iget-object v0, v2, Landroid/util/GeneralUtil;->featureCacheSet:Ljava/util/HashSet;

    .line 119
    .local v0, refSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static initialise(Landroid/content/Context;)Z
    .locals 8
    .parameter "ctxt"

    .prologue
    const/4 v3, 0x0

    .line 71
    sget-object v4, Landroid/util/GeneralUtil;->objInstance:Ljava/lang/Object;

    monitor-enter v4

    .line 72
    :try_start_0
    sget-object v5, Landroid/util/GeneralUtil;->myInstance:Landroid/util/GeneralUtil;

    if-nez v5, :cond_0

    .line 73
    new-instance v5, Landroid/util/GeneralUtil;

    invoke-direct {v5, p0}, Landroid/util/GeneralUtil;-><init>(Landroid/content/Context;)V

    sput-object v5, Landroid/util/GeneralUtil;->myInstance:Landroid/util/GeneralUtil;

    .line 75
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    sget-object v4, Landroid/util/GeneralUtil;->myInstance:Landroid/util/GeneralUtil;

    if-nez v4, :cond_1

    .line 77
    sget-object v4, Landroid/util/GeneralUtil;->TAG:Ljava/lang/String;

    const-string v5, "myInstance is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_0
    return v3

    .line 75
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 81
    :cond_1
    const/4 v2, 0x0

    .line 82
    .local v2, infos:[Landroid/content/pm/FeatureInfo;
    sget-object v4, Landroid/util/GeneralUtil;->myInstance:Landroid/util/GeneralUtil;

    iget-object v4, v4, Landroid/util/GeneralUtil;->pm:Landroid/content/pm/PackageManager;

    if-nez v4, :cond_2

    .line 83
    sget-object v4, Landroid/util/GeneralUtil;->TAG:Ljava/lang/String;

    const-string v5, "pm is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    :cond_2
    sget-object v4, Landroid/util/GeneralUtil;->objFeature:Ljava/lang/Object;

    monitor-enter v4

    .line 88
    :try_start_2
    sget-object v5, Landroid/util/GeneralUtil;->myInstance:Landroid/util/GeneralUtil;

    if-eqz v5, :cond_3

    sget-object v5, Landroid/util/GeneralUtil;->myInstance:Landroid/util/GeneralUtil;

    iget-object v5, v5, Landroid/util/GeneralUtil;->featureCacheSet:Ljava/util/HashSet;

    if-nez v5, :cond_3

    .line 89
    sget-object v5, Landroid/util/GeneralUtil;->myInstance:Landroid/util/GeneralUtil;

    iget-object v5, v5, Landroid/util/GeneralUtil;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v2

    .line 90
    sget-object v5, Landroid/util/GeneralUtil;->myInstance:Landroid/util/GeneralUtil;

    new-instance v6, Ljava/util/HashSet;

    array-length v7, v2

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(I)V

    iput-object v6, v5, Landroid/util/GeneralUtil;->featureCacheSet:Ljava/util/HashSet;

    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, f:Landroid/content/pm/FeatureInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v2

    if-ge v1, v5, :cond_3

    .line 93
    aget-object v0, v2, v1

    .line 94
    sget-object v5, Landroid/util/GeneralUtil;->myInstance:Landroid/util/GeneralUtil;

    iget-object v5, v5, Landroid/util/GeneralUtil;->featureCacheSet:Ljava/util/HashSet;

    iget-object v6, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 97
    .end local v0           #f:Landroid/content/pm/FeatureInfo;
    .end local v1           #i:I
    :cond_3
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 98
    sget-object v4, Landroid/util/GeneralUtil;->myInstance:Landroid/util/GeneralUtil;

    iget-object v4, v4, Landroid/util/GeneralUtil;->featureCacheSet:Ljava/util/HashSet;

    if-nez v4, :cond_4

    .line 99
    sget-object v4, Landroid/util/GeneralUtil;->TAG:Ljava/lang/String;

    const-string v5, "myInstance.featureCacheSet is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 103
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isBiggerThanSW(Landroid/content/Context;I)Z
    .locals 1
    .parameter "context"
    .parameter "sw"

    .prologue
    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-lt v0, p1, :cond_0

    .line 157
    const/4 v0, 0x1

    .line 159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPhone()Z
    .locals 1

    .prologue
    .line 140
    sget-boolean v0, Landroid/util/GeneralUtil;->isPhone:Z

    return v0
.end method

.method private static isPhoneInternal()Z
    .locals 2

    .prologue
    .line 56
    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, sDeviceType:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    const/4 v1, 0x0

    .line 61
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isTablet()Z
    .locals 1

    .prologue
    .line 144
    sget-boolean v0, Landroid/util/GeneralUtil;->isPhone:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
