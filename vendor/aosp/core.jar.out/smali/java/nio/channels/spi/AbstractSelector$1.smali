.class Ljava/nio/channels/spi/AbstractSelector$1;
.super Ljava/lang/Object;
.source "AbstractSelector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/channels/spi/AbstractSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/nio/channels/spi/AbstractSelector;


# direct methods
.method constructor <init>(Ljava/nio/channels/spi/AbstractSelector;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Ljava/nio/channels/spi/AbstractSelector$1;->this$0:Ljava/nio/channels/spi/AbstractSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelector$1;->this$0:Ljava/nio/channels/spi/AbstractSelector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 43
    return-void
.end method
