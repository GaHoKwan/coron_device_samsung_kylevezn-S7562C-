.class public Lcom/android/commands/monkey/MonkeyCommandEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyCommandEvent.java"


# instance fields
.field private mCmd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "cmd"

    .prologue
    .line 32
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 33
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyCommandEvent;->mCmd:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .locals 6
    .parameter "iwm"
    .parameter "iam"
    .parameter "verbose"

    .prologue
    .line 38
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeyCommandEvent;->mCmd:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 41
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    iget-object v4, p0, Lcom/android/commands/monkey/MonkeyCommandEvent;->mCmd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 42
    .local v1, p:Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v2

    .line 43
    .local v2, status:I
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "// Shell command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/commands/monkey/MonkeyCommandEvent;->mCmd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v1           #p:Ljava/lang/Process;
    .end local v2           #status:I
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "// Exception from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/commands/monkey/MonkeyCommandEvent;->mCmd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 46
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
