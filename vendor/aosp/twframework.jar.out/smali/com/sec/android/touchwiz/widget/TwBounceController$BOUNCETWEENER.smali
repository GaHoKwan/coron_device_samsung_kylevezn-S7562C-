.class public final enum Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;
.super Ljava/lang/Enum;
.source "TwBounceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwBounceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BOUNCETWEENER"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;

.field public static final enum BOUNCE_EASE_IN_OUT:Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;

.field public static final enum BOUNCE_EASE_IN_OUT2:Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;

.field public static final enum EXPO_DEFAULT:Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;

.field public static final enum QUINT_EASE_IN_OUT:Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;

.field public static final enum SIN_EASE_IN_OUT:Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;

.field public static final enum SIN_EASE_IN_OUT_1BOUNCE:Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;


# instance fields
.field public mMaxDragDur:I

.field public mMaxFlingDur:I

.field public mMaxGlowScale:F

.field public mMinDragDur:I

.field public mMinFlingDur:I

.field private mName:Ljava/lang/String;

.field private mTweener:Lcom/sec/android/touchwiz/widget/TwBounceController$Tweener;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 414
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;

    const-string v1, "EXPO_DEFAULT"

    const/4 v2, 0x0

    const-string v3, "Exponential Default"

    new-instance v4, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER$1;

    invoke-direct {v4}, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER$1;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/touchwiz/widget/TwBounceController$Tweener;)V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;->EXPO_DEFAULT:Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;

    .line 437
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;

    const-string v1, "BOUNCE_EASE_IN_OUT"

    const/4 v2, 0x1

    const-string v3, "Bounce Ease In Out"

    new-instance v4, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER$2;

    invoke-direct {v4}, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER$2;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/touchwiz/widget/TwBounceController$Tweener;)V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;->BOUNCE_EASE_IN_OUT:Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;

    .line 474
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;

    const-string v1, "BOUNCE_EASE_IN_OUT2"

    const/4 v2, 0x2

    const-string v3, "Bounce Ease In Out 2"

    new-instance v4, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER$3;

    invoke-direct {v4}, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER$3;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/touchwiz/widget/TwBounceController$Tweener;)V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;->BOUNCE_EASE_IN_OUT2:Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;

    .line 500
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;

    const-string v1, "SIN_EASE_IN_OUT"

    const/4 v2, 0x3

    const-string v3, "Sin Ease In Out"

    new-instance v4, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER$4;

    invoke-direct {v4}, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER$4;-><init>()V

    const/high16 v5, 0x4080

    const/16 v6, 0x190

    const/16 v7, 0x190

    const/16 v8, 0x320

    const/16 v9, 0x320

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/touchwiz/widget/TwBounceController$Tweener;FIIII)V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;->SIN_EASE_IN_OUT:Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;

    .line 518
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;

    const-string v1, "QUINT_EASE_IN_OUT"

    const/4 v2, 0x4

    const-string v3, "Quint Ease In Out"

    new-instance v4, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER$5;

    invoke-direct {v4}, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER$5;-><init>()V

    const/high16 v5, 0x40c0

    const/16 v6, 0x190

    const/16 v7, 0x190

    const/16 v8, 0x258

    const/16 v9, 0x258

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/touchwiz/widget/TwBounceController$Tweener;FIIII)V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;->QUINT_EASE_IN_OUT:Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;

    .line 539
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;

    const-string v1, "SIN_EASE_IN_OUT_1BOUNCE"

    const/4 v2, 0x5

    const-string v3, "Sin Ease In Out 1Bounce"

    new-instance v4, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER$6;

    invoke-direct {v4}, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER$6;-><init>()V

    const/high16 v5, 0x4080

    const/16 v6, 0x2bc

    const/16 v7, 0x2bc

    const/16 v8, 0x320

    const/16 v9, 0x320

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/touchwiz/widget/TwBounceController$Tweener;FIIII)V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;->SIN_EASE_IN_OUT_1BOUNCE:Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;

    .line 413
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;->EXPO_DEFAULT:Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;->BOUNCE_EASE_IN_OUT:Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;->BOUNCE_EASE_IN_OUT2:Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;->SIN_EASE_IN_OUT:Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;->QUINT_EASE_IN_OUT:Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;->SIN_EASE_IN_OUT_1BOUNCE:Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;->$VALUES:[Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/touchwiz/widget/TwBounceController$Tweener;)V
    .locals 3
    .parameter
    .parameter
    .parameter "name"
    .parameter "tweener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/android/touchwiz/widget/TwBounceController$Tweener;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v2, 0x258

    const/16 v1, 0x190

    .line 592
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 593
    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;->mName:Ljava/lang/String;

    .line 594
    iput-object p4, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;->mTweener:Lcom/sec/android/touchwiz/widget/TwBounceController$Tweener;

    .line 596
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;->mMaxGlowScale:F

    .line 597
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;->mMinDragDur:I

    .line 598
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;->mMaxDragDur:I

    .line 599
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;->mMinFlingDur:I

    .line 600
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;->mMaxFlingDur:I

    .line 601
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/touchwiz/widget/TwBounceController$Tweener;FIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter "name"
    .parameter "tweener"
    .parameter "mgs"
    .parameter "mindd"
    .parameter "maxdd"
    .parameter "minfd"
    .parameter "maxfd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/android/touchwiz/widget/TwBounceController$Tweener;",
            "FIIII)V"
        }
    .end annotation

    .prologue
    .line 604
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 605
    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;->mName:Ljava/lang/String;

    .line 606
    iput-object p4, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;->mTweener:Lcom/sec/android/touchwiz/widget/TwBounceController$Tweener;

    .line 608
    iput p5, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;->mMaxGlowScale:F

    .line 609
    iput p6, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;->mMinDragDur:I

    .line 610
    iput p7, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;->mMaxDragDur:I

    .line 611
    iput p8, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;->mMinFlingDur:I

    .line 612
    iput p9, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;->mMaxFlingDur:I

    .line 613
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;
    .locals 1
    .parameter "name"

    .prologue
    .line 413
    const-class v0, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;
    .locals 1

    .prologue
    .line 413
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;->$VALUES:[Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTweener()Lcom/sec/android/touchwiz/widget/TwBounceController$Tweener;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;->mTweener:Lcom/sec/android/touchwiz/widget/TwBounceController$Tweener;

    return-object v0
.end method
