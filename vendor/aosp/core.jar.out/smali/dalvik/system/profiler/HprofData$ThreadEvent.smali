.class public final Ldalvik/system/profiler/HprofData$ThreadEvent;
.super Ljava/lang/Object;
.source "HprofData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/profiler/HprofData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThreadEvent"
.end annotation


# instance fields
.field public final groupName:Ljava/lang/String;

.field public final objectId:I

.field public final parentGroupName:Ljava/lang/String;

.field public final threadId:I

.field public final threadName:Ljava/lang/String;

.field public final type:Ldalvik/system/profiler/HprofData$ThreadEventType;


# direct methods
.method private constructor <init>(Ldalvik/system/profiler/HprofData$ThreadEventType;I)V
    .locals 2
    .parameter "type"
    .parameter "threadId"

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    sget-object v0, Ldalvik/system/profiler/HprofData$ThreadEventType;->END:Ldalvik/system/profiler/HprofData$ThreadEventType;

    iput-object v0, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->type:Ldalvik/system/profiler/HprofData$ThreadEventType;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->objectId:I

    .line 85
    iput p2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    .line 86
    iput-object v1, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadName:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->groupName:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->parentGroupName:Ljava/lang/String;

    .line 89
    return-void
.end method

.method private constructor <init>(Ldalvik/system/profiler/HprofData$ThreadEventType;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "type"
    .parameter "objectId"
    .parameter "threadId"
    .parameter "threadName"
    .parameter "groupName"
    .parameter "parentGroupName"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-nez p4, :cond_0

    .line 72
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "threadName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    sget-object v0, Ldalvik/system/profiler/HprofData$ThreadEventType;->START:Ldalvik/system/profiler/HprofData$ThreadEventType;

    iput-object v0, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->type:Ldalvik/system/profiler/HprofData$ThreadEventType;

    .line 75
    iput p2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->objectId:I

    .line 76
    iput p3, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    .line 77
    iput-object p4, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadName:Ljava/lang/String;

    .line 78
    iput-object p5, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->groupName:Ljava/lang/String;

    .line 79
    iput-object p6, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->parentGroupName:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public static end(I)Ldalvik/system/profiler/HprofData$ThreadEvent;
    .locals 2
    .parameter "threadId"

    .prologue
    .line 66
    new-instance v0, Ldalvik/system/profiler/HprofData$ThreadEvent;

    sget-object v1, Ldalvik/system/profiler/HprofData$ThreadEventType;->END:Ldalvik/system/profiler/HprofData$ThreadEventType;

    invoke-direct {v0, v1, p0}, Ldalvik/system/profiler/HprofData$ThreadEvent;-><init>(Ldalvik/system/profiler/HprofData$ThreadEventType;I)V

    return-object v0
.end method

.method private static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 119
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hashCode(Ljava/lang/Object;)I
    .locals 1
    .parameter "o"

    .prologue
    .line 102
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public static start(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/profiler/HprofData$ThreadEvent;
    .locals 7
    .parameter "objectId"
    .parameter "threadId"
    .parameter "threadName"
    .parameter "groupName"
    .parameter "parentGroupName"

    .prologue
    .line 61
    new-instance v0, Ldalvik/system/profiler/HprofData$ThreadEvent;

    sget-object v1, Ldalvik/system/profiler/HprofData$ThreadEventType;->START:Ldalvik/system/profiler/HprofData$ThreadEventType;

    move v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Ldalvik/system/profiler/HprofData$ThreadEvent;-><init>(Ldalvik/system/profiler/HprofData$ThreadEventType;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 106
    instance-of v2, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;

    if-nez v2, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 109
    check-cast v0, Ldalvik/system/profiler/HprofData$ThreadEvent;

    .line 110
    .local v0, event:Ldalvik/system/profiler/HprofData$ThreadEvent;
    iget-object v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->type:Ldalvik/system/profiler/HprofData$ThreadEventType;

    iget-object v3, v0, Ldalvik/system/profiler/HprofData$ThreadEvent;->type:Ldalvik/system/profiler/HprofData$ThreadEventType;

    if-ne v2, v3, :cond_0

    iget v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->objectId:I

    iget v3, v0, Ldalvik/system/profiler/HprofData$ThreadEvent;->objectId:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    iget v3, v0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadName:Ljava/lang/String;

    iget-object v3, v0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadName:Ljava/lang/String;

    invoke-static {v2, v3}, Ldalvik/system/profiler/HprofData$ThreadEvent;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->groupName:Ljava/lang/String;

    iget-object v3, v0, Ldalvik/system/profiler/HprofData$ThreadEvent;->groupName:Ljava/lang/String;

    invoke-static {v2, v3}, Ldalvik/system/profiler/HprofData$ThreadEvent;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->parentGroupName:Ljava/lang/String;

    iget-object v3, v0, Ldalvik/system/profiler/HprofData$ThreadEvent;->parentGroupName:Ljava/lang/String;

    invoke-static {v2, v3}, Ldalvik/system/profiler/HprofData$ThreadEvent;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 92
    const/16 v0, 0x11

    .line 93
    .local v0, result:I
    iget v1, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->objectId:I

    add-int/lit16 v0, v1, 0x20f

    .line 94
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    add-int v0, v1, v2

    .line 95
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadName:Ljava/lang/String;

    invoke-static {v2}, Ldalvik/system/profiler/HprofData$ThreadEvent;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 96
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->groupName:Ljava/lang/String;

    invoke-static {v2}, Ldalvik/system/profiler/HprofData$ThreadEvent;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 97
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->parentGroupName:Ljava/lang/String;

    invoke-static {v2}, Ldalvik/system/profiler/HprofData$ThreadEvent;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 98
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 123
    sget-object v0, Ldalvik/system/profiler/HprofData$1;->$SwitchMap$dalvik$system$profiler$HprofData$ThreadEventType:[I

    iget-object v1, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->type:Ldalvik/system/profiler/HprofData$ThreadEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->type:Ldalvik/system/profiler/HprofData$ThreadEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :pswitch_0
    const-string v0, "THREAD START (obj=%d, id = %d, name=\"%s\", group=\"%s\")"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->objectId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v3, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->groupName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 129
    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "THREAD END (id = %d)"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
