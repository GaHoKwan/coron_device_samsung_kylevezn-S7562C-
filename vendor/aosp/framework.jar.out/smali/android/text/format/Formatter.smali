.class public final Landroid/text/format/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "number"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatFileSize(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "number"
    .parameter "shorter"

    .prologue
    const/high16 v5, 0x4480

    const/high16 v4, 0x4461

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 48
    if-nez p0, :cond_0

    .line 49
    const-string v3, ""

    .line 92
    :goto_0
    return-object v3

    .line 52
    :cond_0
    long-to-float v0, p1

    .line 53
    .local v0, result:F
    const v1, 0x10400e6

    .line 54
    .local v1, suffix:I
    cmpl-float v3, v0, v4

    if-lez v3, :cond_1

    .line 55
    const v1, 0x10400e7

    .line 56
    div-float/2addr v0, v5

    .line 58
    :cond_1
    cmpl-float v3, v0, v4

    if-lez v3, :cond_2

    .line 59
    const v1, 0x10400e8

    .line 60
    div-float/2addr v0, v5

    .line 62
    :cond_2
    cmpl-float v3, v0, v4

    if-lez v3, :cond_3

    .line 63
    const v1, 0x10400e9

    .line 64
    div-float/2addr v0, v5

    .line 66
    :cond_3
    cmpl-float v3, v0, v4

    if-lez v3, :cond_4

    .line 67
    const v1, 0x10400ea

    .line 68
    div-float/2addr v0, v5

    .line 70
    :cond_4
    cmpl-float v3, v0, v4

    if-lez v3, :cond_5

    .line 71
    const v1, 0x10400eb

    .line 72
    div-float/2addr v0, v5

    .line 75
    :cond_5
    const/high16 v3, 0x3f80

    cmpg-float v3, v0, v3

    if-gez v3, :cond_6

    .line 76
    const-string v3, "%.2f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, value:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10400ec

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 77
    .end local v2           #value:Ljava/lang/String;
    :cond_6
    const/high16 v3, 0x4120

    cmpg-float v3, v0, v3

    if-gez v3, :cond_8

    .line 78
    if-eqz p3, :cond_7

    .line 79
    const-string v3, "%.1f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #value:Ljava/lang/String;
    goto :goto_1

    .line 81
    .end local v2           #value:Ljava/lang/String;
    :cond_7
    const-string v3, "%.2f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #value:Ljava/lang/String;
    goto :goto_1

    .line 83
    .end local v2           #value:Ljava/lang/String;
    :cond_8
    const/high16 v3, 0x42c8

    cmpg-float v3, v0, v3

    if-gez v3, :cond_a

    .line 84
    if-eqz p3, :cond_9

    .line 85
    const-string v3, "%.0f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #value:Ljava/lang/String;
    goto :goto_1

    .line 87
    .end local v2           #value:Ljava/lang/String;
    :cond_9
    const-string v3, "%.2f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #value:Ljava/lang/String;
    goto :goto_1

    .line 90
    .end local v2           #value:Ljava/lang/String;
    :cond_a
    const-string v3, "%.0f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #value:Ljava/lang/String;
    goto :goto_1
.end method

.method public static formatIpAddress(I)Ljava/lang/String;
    .locals 1
    .parameter "ipv4Address"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 111
    invoke-static {p0}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "number"

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
