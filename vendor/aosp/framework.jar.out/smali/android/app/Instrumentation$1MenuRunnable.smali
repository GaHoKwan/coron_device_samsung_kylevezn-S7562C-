.class Landroid/app/Instrumentation$1MenuRunnable;
.super Ljava/lang/Object;
.source "Instrumentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/Instrumentation;->invokeMenuActionSync(Landroid/app/Activity;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MenuRunnable"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final flags:I

.field private final identifier:I

.field returnValue:Z

.field final synthetic this$0:Landroid/app/Instrumentation;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;Landroid/app/Activity;II)V
    .locals 0
    .parameter
    .parameter "_activity"
    .parameter "_identifier"
    .parameter "_flags"

    .prologue
    .line 748
    iput-object p1, p0, Landroid/app/Instrumentation$1MenuRunnable;->this$0:Landroid/app/Instrumentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    iput-object p2, p0, Landroid/app/Instrumentation$1MenuRunnable;->activity:Landroid/app/Activity;

    .line 750
    iput p3, p0, Landroid/app/Instrumentation$1MenuRunnable;->identifier:I

    .line 751
    iput p4, p0, Landroid/app/Instrumentation$1MenuRunnable;->flags:I

    .line 752
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 755
    iget-object v1, p0, Landroid/app/Instrumentation$1MenuRunnable;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 757
    .local v0, win:Landroid/view/Window;
    const/4 v1, 0x0

    iget v2, p0, Landroid/app/Instrumentation$1MenuRunnable;->identifier:I

    iget v3, p0, Landroid/app/Instrumentation$1MenuRunnable;->flags:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Window;->performPanelIdentifierAction(III)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Instrumentation$1MenuRunnable;->returnValue:Z

    .line 761
    return-void
.end method
