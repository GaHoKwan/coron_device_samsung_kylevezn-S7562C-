.class Landroid/view/ViewGroup$ViewLocationHolder;
.super Ljava/lang/Object;
.source "ViewGroup.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewLocationHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/view/ViewGroup$ViewLocationHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x20

.field private static sPool:Landroid/view/ViewGroup$ViewLocationHolder;

.field private static final sPoolLock:Ljava/lang/Object;

.field private static sPoolSize:I


# instance fields
.field private mIsPooled:Z

.field private mLayoutDirection:I

.field private final mLocation:Landroid/graphics/Rect;

.field private mNext:Landroid/view/ViewGroup$ViewLocationHolder;

.field public mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6275
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/ViewGroup$ViewLocationHolder;->sPoolLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 6271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6285
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    return-void
.end method

.method private clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6383
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    .line 6384
    iget-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 6385
    return-void
.end method

.method private init(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2
    .parameter "root"
    .parameter "view"

    .prologue
    .line 6375
    iget-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    .line 6376
    .local v0, viewLocation:Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 6377
    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 6378
    iput-object p2, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    .line 6379
    invoke-virtual {p1}, Landroid/view/View;->getResolvedLayoutDirection()I

    move-result v1

    iput v1, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLayoutDirection:I

    .line 6380
    return-void
.end method

.method public static obtain(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/ViewGroup$ViewLocationHolder;
    .locals 4
    .parameter "root"
    .parameter "view"

    .prologue
    .line 6292
    const/4 v0, 0x0

    .line 6293
    .local v0, holder:Landroid/view/ViewGroup$ViewLocationHolder;
    sget-object v3, Landroid/view/ViewGroup$ViewLocationHolder;->sPoolLock:Ljava/lang/Object;

    monitor-enter v3

    .line 6294
    :try_start_0
    sget-object v2, Landroid/view/ViewGroup$ViewLocationHolder;->sPool:Landroid/view/ViewGroup$ViewLocationHolder;

    if-eqz v2, :cond_0

    .line 6295
    sget-object v0, Landroid/view/ViewGroup$ViewLocationHolder;->sPool:Landroid/view/ViewGroup$ViewLocationHolder;

    .line 6296
    iget-object v2, v0, Landroid/view/ViewGroup$ViewLocationHolder;->mNext:Landroid/view/ViewGroup$ViewLocationHolder;

    sput-object v2, Landroid/view/ViewGroup$ViewLocationHolder;->sPool:Landroid/view/ViewGroup$ViewLocationHolder;

    .line 6297
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/view/ViewGroup$ViewLocationHolder;->mNext:Landroid/view/ViewGroup$ViewLocationHolder;

    .line 6298
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/ViewGroup$ViewLocationHolder;->mIsPooled:Z

    .line 6299
    sget v2, Landroid/view/ViewGroup$ViewLocationHolder;->sPoolSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/view/ViewGroup$ViewLocationHolder;->sPoolSize:I

    .line 6303
    :goto_0
    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$ViewLocationHolder;->init(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 6304
    monitor-exit v3

    return-object v0

    .line 6301
    :cond_0
    new-instance v1, Landroid/view/ViewGroup$ViewLocationHolder;

    invoke-direct {v1}, Landroid/view/ViewGroup$ViewLocationHolder;-><init>()V

    .end local v0           #holder:Landroid/view/ViewGroup$ViewLocationHolder;
    .local v1, holder:Landroid/view/ViewGroup$ViewLocationHolder;
    move-object v0, v1

    .end local v1           #holder:Landroid/view/ViewGroup$ViewLocationHolder;
    .restart local v0       #holder:Landroid/view/ViewGroup$ViewLocationHolder;
    goto :goto_0

    .line 6305
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public compareTo(Landroid/view/ViewGroup$ViewLocationHolder;)I
    .locals 7
    .parameter "another"

    .prologue
    const/4 v1, 0x1

    .line 6326
    if-nez p1, :cond_1

    .line 6371
    :cond_0
    :goto_0
    return v1

    .line 6329
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v5, v6, :cond_0

    .line 6333
    iget-object v5, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    if-gtz v5, :cond_2

    .line 6334
    const/4 v1, -0x1

    goto :goto_0

    .line 6337
    :cond_2
    iget-object v5, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    if-gez v5, :cond_0

    .line 6341
    iget v5, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLayoutDirection:I

    if-nez v5, :cond_4

    .line 6342
    iget-object v5, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int v1, v5, v6

    .line 6344
    .local v1, leftDifference:I
    if-nez v1, :cond_0

    .line 6355
    .end local v1           #leftDifference:I
    :cond_3
    iget-object v5, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v3, v5, v6

    .line 6356
    .local v3, topDiference:I
    if-eqz v3, :cond_5

    move v1, v3

    .line 6357
    goto :goto_0

    .line 6348
    .end local v3           #topDiference:I
    :cond_4
    iget-object v5, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v2, v5, v6

    .line 6350
    .local v2, rightDifference:I
    if-eqz v2, :cond_3

    .line 6351
    neg-int v1, v2

    goto :goto_0

    .line 6360
    .end local v2           #rightDifference:I
    .restart local v3       #topDiference:I
    :cond_5
    iget-object v5, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v6, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int v0, v5, v6

    .line 6361
    .local v0, heightDiference:I
    if-eqz v0, :cond_6

    .line 6362
    neg-int v1, v0

    goto :goto_0

    .line 6365
    :cond_6
    iget-object v5, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int v4, v5, v6

    .line 6366
    .local v4, widthDiference:I
    if-eqz v4, :cond_7

    .line 6367
    neg-int v1, v4

    goto :goto_0

    .line 6371
    :cond_7
    iget-object v5, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v5

    iget-object v6, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v6

    sub-int v1, v5, v6

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 6271
    check-cast p1, Landroid/view/ViewGroup$ViewLocationHolder;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$ViewLocationHolder;->compareTo(Landroid/view/ViewGroup$ViewLocationHolder;)I

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 6309
    iget-boolean v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mIsPooled:Z

    if-eqz v0, :cond_0

    .line 6310
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Instance already recycled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6312
    :cond_0
    invoke-direct {p0}, Landroid/view/ViewGroup$ViewLocationHolder;->clear()V

    .line 6313
    sget-object v1, Landroid/view/ViewGroup$ViewLocationHolder;->sPoolLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6314
    :try_start_0
    sget v0, Landroid/view/ViewGroup$ViewLocationHolder;->sPoolSize:I

    const/16 v2, 0x20

    if-ge v0, v2, :cond_1

    .line 6315
    sget-object v0, Landroid/view/ViewGroup$ViewLocationHolder;->sPool:Landroid/view/ViewGroup$ViewLocationHolder;

    iput-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mNext:Landroid/view/ViewGroup$ViewLocationHolder;

    .line 6316
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mIsPooled:Z

    .line 6317
    sput-object p0, Landroid/view/ViewGroup$ViewLocationHolder;->sPool:Landroid/view/ViewGroup$ViewLocationHolder;

    .line 6318
    sget v0, Landroid/view/ViewGroup$ViewLocationHolder;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/ViewGroup$ViewLocationHolder;->sPoolSize:I

    .line 6320
    :cond_1
    monitor-exit v1

    .line 6321
    return-void

    .line 6320
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
