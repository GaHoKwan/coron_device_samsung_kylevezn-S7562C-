.class public Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
.super Ljava/lang/Object;
.source "MonkeySourceNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/MonkeySourceNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MonkeyCommandReturn"
.end annotation


# instance fields
.field private final message:Ljava/lang/String;

.field private final success:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .parameter "success"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean p1, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->success:Z

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->message:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .parameter "success"
    .parameter "message"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean p1, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->success:Z

    .line 71
    iput-object p2, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->message:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->message:Ljava/lang/String;

    return-object v0
.end method

.method hasMessage()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method wasSuccessful()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->success:Z

    return v0
.end method
