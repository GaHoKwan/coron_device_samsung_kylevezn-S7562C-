.class public abstract Lcom/android/commands/uiautomator/Launcher$Command;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/uiautomator/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Command"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/commands/uiautomator/Launcher$Command;->mName:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public abstract detailedOptions()Ljava/lang/String;
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/commands/uiautomator/Launcher$Command;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract run([Ljava/lang/String;)V
.end method

.method public abstract shortHelp()Ljava/lang/String;
.end method
