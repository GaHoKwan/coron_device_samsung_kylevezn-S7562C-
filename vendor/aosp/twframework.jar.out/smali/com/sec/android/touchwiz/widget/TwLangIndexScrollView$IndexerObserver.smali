.class Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;
.super Landroid/database/DataSetObserver;
.source "TwLangIndexScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IndexerObserver"
.end annotation


# instance fields
.field private final INDEX_UPDATE_DELAY:J

.field mDataInvalid:Z

.field mUpdateIndex:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)V
    .locals 2
    .parameter

    .prologue
    .line 2738
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 2740
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;->INDEX_UPDATE_DELAY:J

    .line 2741
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;->mDataInvalid:Z

    .line 2760
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver$1;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver$1;-><init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;->mUpdateIndex:Ljava/lang/Runnable;

    return-void
.end method

.method private notifyDataSetChange()V
    .locals 4

    .prologue
    .line 2756
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;->mDataInvalid:Z

    .line 2757
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;->mUpdateIndex:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2758
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;->mUpdateIndex:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2759
    return-void
.end method


# virtual methods
.method public hasIndexerDataValid()Z
    .locals 1

    .prologue
    .line 2753
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;->mDataInvalid:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onChanged()V
    .locals 0

    .prologue
    .line 2744
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 2745
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;->notifyDataSetChange()V

    .line 2746
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 2749
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 2750
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;->notifyDataSetChange()V

    .line 2751
    return-void
.end method
