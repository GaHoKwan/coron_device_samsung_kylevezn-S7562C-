.class public Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;
.super Ljava/lang/Object;
.source "TickerScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/TickerScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TickerStockData"
.end annotation


# instance fields
.field private mStockChange:Ljava/lang/String;

.field private mStockChangeRate:Ljava/lang/String;

.field private mStockName:Ljava/lang/String;

.field private mStockPrice:Ljava/lang/String;

.field private mStockUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/TickerScrollView;)V
    .locals 1
    .parameter

    .prologue
    .line 569
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->mStockName:Ljava/lang/String;

    .line 565
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->mStockPrice:Ljava/lang/String;

    .line 566
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->mStockChange:Ljava/lang/String;

    .line 567
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->mStockChangeRate:Ljava/lang/String;

    .line 568
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->mStockUrl:Ljava/lang/String;

    .line 570
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/sec/TickerScrollView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "name"
    .parameter "price"
    .parameter "change"
    .parameter "change_rate"
    .parameter "url"

    .prologue
    .line 571
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->mStockName:Ljava/lang/String;

    .line 565
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->mStockPrice:Ljava/lang/String;

    .line 566
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->mStockChange:Ljava/lang/String;

    .line 567
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->mStockChangeRate:Ljava/lang/String;

    .line 568
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->mStockUrl:Ljava/lang/String;

    .line 572
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->mStockName:Ljava/lang/String;

    .line 573
    iput-object p3, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->mStockPrice:Ljava/lang/String;

    .line 574
    iput-object p4, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->mStockChange:Ljava/lang/String;

    .line 575
    iput-object p5, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->mStockChangeRate:Ljava/lang/String;

    .line 576
    iput-object p6, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->mStockUrl:Ljava/lang/String;

    .line 577
    return-void
.end method


# virtual methods
.method public getStockChange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->mStockChange:Ljava/lang/String;

    return-object v0
.end method

.method public getStockChangeRate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->mStockChangeRate:Ljava/lang/String;

    return-object v0
.end method

.method public getStockName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->mStockName:Ljava/lang/String;

    return-object v0
.end method

.method public getStockPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->mStockPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getStockUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->mStockUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setStockChange(Ljava/lang/String;)V
    .locals 0
    .parameter "change"

    .prologue
    .line 600
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->mStockChange:Ljava/lang/String;

    .line 601
    return-void
.end method

.method public setStockChangeRate(Ljava/lang/String;)V
    .locals 0
    .parameter "change_rate"

    .prologue
    .line 603
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->mStockChange:Ljava/lang/String;

    .line 604
    return-void
.end method

.method public setStockName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 594
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->mStockName:Ljava/lang/String;

    .line 595
    return-void
.end method

.method public setStockPrice(Ljava/lang/String;)V
    .locals 0
    .parameter "price"

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->mStockPrice:Ljava/lang/String;

    .line 598
    return-void
.end method

.method public setStockUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 606
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->mStockUrl:Ljava/lang/String;

    .line 607
    return-void
.end method
