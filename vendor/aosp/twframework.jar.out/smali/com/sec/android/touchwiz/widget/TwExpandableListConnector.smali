.class public Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;
.super Landroid/widget/BaseAdapter;
.source "TwExpandableListConnector.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$MyDataSetObserver;
    }
.end annotation


# static fields
.field private static final DEBUG_TW_EXP_LIST:Z = false

.field public static SPEED:F = 0.0f

.field static final SYNC_MAX_DURATION_MILLIS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "TwExpandableListConnector"

.field public static final groupIndicatorIcon:I = 0x9000000


# instance fields
.field final BASE_SPEED:F

.field private DEBUG_TW_EXP_CONNECTOR:Z

.field childItemAnimationEnabled:Z

.field isIndicatorViewSuppliedByAdapter:Z

.field public mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

.field private final mDataSetObserver:Landroid/database/DataSetObserver;

.field private mExpGroupMetadataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

.field mGroupIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

.field private mMaxExpGroupCount:I

.field private mTotalExpChildrenCount:I

.field private mUpcomingCollapsedGroupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;",
            ">;"
        }
    .end annotation
.end field

.field mgroupFlatPos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/high16 v0, 0x3f00

    sput v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->SPEED:F

    return-void
.end method

.method public constructor <init>(Landroid/widget/ExpandableListAdapter;)V
    .locals 3
    .parameter "expandableListAdapter"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 69
    const v0, 0x7fffffff

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mMaxExpGroupCount:I

    .line 72
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$MyDataSetObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$MyDataSetObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 78
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->BASE_SPEED:F

    .line 82
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->childItemAnimationEnabled:Z

    .line 86
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isIndicatorViewSuppliedByAdapter:Z

    .line 597
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->DEBUG_TW_EXP_CONNECTOR:Z

    .line 1430
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mGroupIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mUpcomingCollapsedGroupList:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 97
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/widget/ExpandableListAdapter;Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V
    .locals 3
    .parameter "expandableListAdapter"
    .parameter "listView"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 69
    const v0, 0x7fffffff

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mMaxExpGroupCount:I

    .line 72
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$MyDataSetObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$MyDataSetObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 78
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->BASE_SPEED:F

    .line 82
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->childItemAnimationEnabled:Z

    .line 86
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isIndicatorViewSuppliedByAdapter:Z

    .line 597
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->DEBUG_TW_EXP_CONNECTOR:Z

    .line 1430
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mGroupIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 102
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mUpcomingCollapsedGroupList:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 106
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    return-void
.end method

.method private isUpcomingCollapseGroup(I)Z
    .locals 4
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 1512
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mUpcomingCollapsedGroupList:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 1522
    :cond_0
    :goto_0
    return v2

    .line 1515
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mUpcomingCollapsedGroupList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1516
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mUpcomingCollapsedGroupList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 1517
    .local v0, grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    if-ne v3, p1, :cond_2

    .line 1518
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mUpcomingCollapsedGroupList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1519
    const/4 v2, 0x1

    goto :goto_0

    .line 1515
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private refreshCollapseGroupMetadataListItem(II)V
    .locals 9
    .parameter "itemIndex"
    .parameter "groupPos"

    .prologue
    .line 600
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 601
    .local v2, egml:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 602
    .local v3, egmlSize:I
    const/4 v0, 0x0

    .line 603
    .local v0, curFlPos:I
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mTotalExpChildrenCount:I

    .line 604
    const/4 v4, 0x0

    .line 606
    .local v4, gChildrenCount:I
    const/4 v6, 0x0

    .line 608
    .local v6, lastGPos:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v3, :cond_3

    .line 611
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    .line 613
    .local v1, curGm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    iget v7, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v7, p2, :cond_1

    .line 614
    move v4, p1

    .line 623
    :goto_1
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mTotalExpChildrenCount:I

    .line 629
    iget v7, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v7, v6

    add-int/2addr v0, v7

    .line 630
    iget v6, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    .line 633
    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->flPos:I

    .line 634
    add-int/2addr v0, v4

    .line 635
    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    .line 637
    iget v7, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v7, p2, :cond_0

    .line 638
    iget v7, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->flPos:I

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mgroupFlatPos:I

    .line 608
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 616
    :cond_1
    iget v7, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-nez v7, :cond_2

    .line 617
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v8, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v7, v8}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v4

    goto :goto_1

    .line 619
    :cond_2
    iget v7, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget v8, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->flPos:I

    sub-int v4, v7, v8

    goto :goto_1

    .line 641
    .end local v1           #curGm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    :cond_3
    return-void
.end method

.method private refreshExpGroupMetadataList(ZZ)V
    .locals 13
    .parameter "forceChildrenCountRefresh"
    .parameter "syncGroupPositions"

    .prologue
    const/4 v12, -0x1

    .line 704
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 705
    .local v2, egml:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 706
    .local v3, egmlSize:I
    const/4 v0, 0x0

    .line 709
    .local v0, curFlPos:I
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mTotalExpChildrenCount:I

    .line 711
    if-eqz p2, :cond_3

    .line 713
    const/4 v8, 0x0

    .line 715
    .local v8, positionsChanged:Z
    add-int/lit8 v5, v3, -0x1

    .local v5, i:I
    :goto_0
    if-ltz v5, :cond_2

    .line 716
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    .line 717
    .local v1, curGm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    iget-wide v9, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gId:J

    iget v11, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->findGroupPosition(JI)I

    move-result v7

    .line 718
    .local v7, newGPos:I
    iget v9, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    if-eq v7, v9, :cond_1

    .line 719
    if-ne v7, v12, :cond_0

    .line 721
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 722
    add-int/lit8 v3, v3, -0x1

    .line 725
    :cond_0
    iput v7, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    .line 726
    if-nez v8, :cond_1

    .line 727
    const/4 v8, 0x1

    .line 715
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 731
    .end local v1           #curGm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    .end local v7           #newGPos:I
    :cond_2
    if-eqz v8, :cond_3

    .line 733
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 738
    .end local v5           #i:I
    .end local v8           #positionsChanged:Z
    :cond_3
    const/4 v6, 0x0

    .line 739
    .local v6, lastGPos:I
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_1
    if-ge v5, v3, :cond_6

    .line 741
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    .line 747
    .restart local v1       #curGm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    iget v9, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-eq v9, v12, :cond_4

    if-eqz p1, :cond_5

    .line 748
    :cond_4
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v10, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v9, v10}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v4

    .line 758
    .local v4, gChildrenCount:I
    :goto_2
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v9, v4

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mTotalExpChildrenCount:I

    .line 765
    iget v9, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v9, v6

    add-int/2addr v0, v9

    .line 766
    iget v6, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    .line 769
    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->flPos:I

    .line 770
    add-int/2addr v0, v4

    .line 771
    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    .line 739
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 754
    .end local v4           #gChildrenCount:I
    :cond_5
    iget v9, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget v10, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->flPos:I

    sub-int v4, v9, v10

    .restart local v4       #gChildrenCount:I
    goto :goto_2

    .line 773
    .end local v1           #curGm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    .end local v4           #gChildrenCount:I
    :cond_6
    return-void
.end method

.method private refreshExpGroupMetadataListItem(II)V
    .locals 9
    .parameter "itemIndex"
    .parameter "groupPos"

    .prologue
    .line 647
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 648
    .local v2, egml:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 649
    .local v3, egmlSize:I
    const/4 v0, 0x0

    .line 650
    .local v0, curFlPos:I
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mTotalExpChildrenCount:I

    .line 651
    const/4 v4, 0x0

    .line 653
    .local v4, gChildrenCount:I
    const/4 v6, 0x0

    .line 655
    .local v6, lastGPos:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v3, :cond_3

    .line 657
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    .line 659
    .local v1, curGm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    iget v7, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v7, p2, :cond_1

    .line 660
    move v4, p1

    .line 671
    :goto_1
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mTotalExpChildrenCount:I

    .line 677
    iget v7, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v7, v6

    add-int/2addr v0, v7

    .line 678
    iget v6, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    .line 681
    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->flPos:I

    .line 682
    add-int/2addr v0, v4

    .line 683
    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    .line 685
    iget v7, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v7, p2, :cond_0

    .line 686
    iget v7, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->flPos:I

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mgroupFlatPos:I

    .line 655
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 663
    :cond_1
    iget v7, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-nez v7, :cond_2

    .line 664
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v8, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v7, v8}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v4

    goto :goto_1

    .line 666
    :cond_2
    iget v7, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget v8, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->flPos:I

    sub-int v4, v7, v8

    goto :goto_1

    .line 689
    .end local v1           #curGm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    :cond_3
    return-void
.end method

.method private warpViewWithLinearLayout(Landroid/view/View;Landroid/view/View;IZZILcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Landroid/view/View;
    .locals 22
    .parameter "originalView"
    .parameter "scrapView"
    .parameter "animationState"
    .parameter "expanded"
    .parameter "group"
    .parameter "grpPos"
    .parameter "posMetadata"

    .prologue
    .line 1553
    if-nez p1, :cond_1

    .line 1554
    const/4 v15, 0x0

    .line 1763
    :cond_0
    :goto_0
    return-object v15

    .line 1556
    :cond_1
    const/4 v6, 0x0

    .line 1557
    .local v6, backGroundDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1559
    const/4 v9, 0x0

    .line 1561
    .local v9, groupIndicator:Landroid/graphics/drawable/Drawable;
    if-eqz p4, :cond_5

    .line 1562
    if-eqz p5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mGroupIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 1563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mGroupIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    check-cast v20, Landroid/graphics/drawable/StateListDrawable;

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1592
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isExpandOrCollapseAll:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 1593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isUpcomingCollapseGroup(I)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 1595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mGroupIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    check-cast v20, Landroid/graphics/drawable/StateListDrawable;

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1635
    :cond_3
    :goto_2
    if-eqz p5, :cond_d

    .line 1637
    const/high16 v20, 0x900

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 1638
    .local v11, imgView:Landroid/widget/ImageView;
    if-eqz v11, :cond_c

    .line 1643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v19

    .line 1644
    .local v19, lpos:I
    if-lez v19, :cond_b

    .line 1645
    invoke-virtual {v11, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1649
    :goto_3
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isIndicatorViewSuppliedByAdapter:Z

    .line 1661
    .end local v11           #imgView:Landroid/widget/ImageView;
    .end local v19           #lpos:I
    :goto_4
    if-nez p2, :cond_f

    .line 1662
    const/16 v18, 0x0

    .line 1664
    .local v18, lpRowLayoutParam:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    new-instance v18, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .end local v18           #lpRowLayoutParam:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    const/16 v20, -0x1

    const/16 v21, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;-><init>(II)V

    .line 1671
    .restart local v18       #lpRowLayoutParam:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    new-instance v15, Landroid/widget/FrameLayout;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1672
    .local v15, llRowViewLayout:Landroid/widget/FrameLayout;
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1674
    invoke-virtual {v15, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1676
    new-instance v17, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;-><init>(II)V

    .line 1679
    .local v17, lpOriginalViewLayoutParam:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    new-instance v14, Landroid/widget/LinearLayout;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1680
    .local v14, llOriginalViewLayout:Landroid/widget/LinearLayout;
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1681
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1682
    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1683
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1684
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1685
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1687
    invoke-virtual {v15, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1691
    if-eqz p5, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isIndicatorViewSuppliedByAdapter:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 1695
    new-instance v11, Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1697
    .restart local v11       #imgView:Landroid/widget/ImageView;
    new-instance v16, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;-><init>(II)V

    .line 1699
    .local v16, lpImgLayParam:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1703
    .local v13, llImgLinearLayout:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v19

    .line 1704
    .restart local v19       #lpos:I
    if-lez v19, :cond_e

    .line 1705
    invoke-virtual {v11, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1710
    :goto_5
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1711
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1712
    const/16 v20, 0x13

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1713
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1714
    if-eqz v9, :cond_4

    .line 1715
    invoke-virtual {v13, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1716
    :cond_4
    invoke-virtual {v15, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1574
    .end local v11           #imgView:Landroid/widget/ImageView;
    .end local v13           #llImgLinearLayout:Landroid/widget/LinearLayout;
    .end local v14           #llOriginalViewLayout:Landroid/widget/LinearLayout;
    .end local v15           #llRowViewLayout:Landroid/widget/FrameLayout;
    .end local v16           #lpImgLayParam:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .end local v17           #lpOriginalViewLayoutParam:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .end local v18           #lpRowLayoutParam:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .end local v19           #lpos:I
    :cond_5
    if-eqz p5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mGroupIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 1575
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isShown()Z

    move-result v20

    if-nez v20, :cond_6

    .line 1576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mGroupIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    check-cast v20, Landroid/graphics/drawable/StateListDrawable;

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto/16 :goto_1

    .line 1583
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mGroupIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    check-cast v20, Landroid/graphics/drawable/StateListDrawable;

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto/16 :goto_1

    .line 1600
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    move/from16 v20, v0

    if-nez v20, :cond_3

    .line 1601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 1602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1603
    .local v5, allreadyExpNumber:I
    const/4 v8, 0x0

    .line 1604
    .local v8, flag:Z
    const/4 v10, 0x0

    .local v10, i:I
    :goto_6
    if-ge v10, v5, :cond_8

    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p6

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 1607
    const/4 v8, 0x1

    .line 1611
    :cond_8
    if-eqz p5, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mGroupIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 1612
    if-eqz v8, :cond_a

    .line 1613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mGroupIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    check-cast v20, Landroid/graphics/drawable/StateListDrawable;

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto/16 :goto_2

    .line 1604
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 1620
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mGroupIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    check-cast v20, Landroid/graphics/drawable/StateListDrawable;

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto/16 :goto_2

    .line 1647
    .end local v5           #allreadyExpNumber:I
    .end local v8           #flag:Z
    .end local v10           #i:I
    .restart local v11       #imgView:Landroid/widget/ImageView;
    .restart local v19       #lpos:I
    :cond_b
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 1651
    .end local v19           #lpos:I
    :cond_c
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isIndicatorViewSuppliedByAdapter:Z

    goto/16 :goto_4

    .line 1657
    .end local v11           #imgView:Landroid/widget/ImageView;
    :cond_d
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isIndicatorViewSuppliedByAdapter:Z

    goto/16 :goto_4

    .line 1707
    .restart local v11       #imgView:Landroid/widget/ImageView;
    .restart local v13       #llImgLinearLayout:Landroid/widget/LinearLayout;
    .restart local v14       #llOriginalViewLayout:Landroid/widget/LinearLayout;
    .restart local v15       #llRowViewLayout:Landroid/widget/FrameLayout;
    .restart local v16       #lpImgLayParam:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .restart local v17       #lpOriginalViewLayoutParam:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .restart local v18       #lpRowLayoutParam:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .restart local v19       #lpos:I
    :cond_e
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .end local v11           #imgView:Landroid/widget/ImageView;
    .end local v13           #llImgLinearLayout:Landroid/widget/LinearLayout;
    .end local v14           #llOriginalViewLayout:Landroid/widget/LinearLayout;
    .end local v15           #llRowViewLayout:Landroid/widget/FrameLayout;
    .end local v16           #lpImgLayParam:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .end local v17           #lpOriginalViewLayoutParam:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .end local v18           #lpRowLayoutParam:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .end local v19           #lpos:I
    :cond_f
    move-object/from16 v7, p2

    .line 1722
    check-cast v7, Landroid/widget/FrameLayout;

    .line 1724
    .local v7, composedViewLL:Landroid/widget/FrameLayout;
    const/4 v4, 0x0

    .line 1728
    .local v4, TextLinearLayoutInsideGroupItem:Landroid/widget/LinearLayout;
    if-eqz p5, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isIndicatorViewSuppliedByAdapter:Z

    move/from16 v20, v0

    if-nez v20, :cond_11

    .line 1732
    const/4 v3, 0x0

    .line 1733
    .local v3, ImgLinearLayoutInsideGroupItem:Landroid/widget/LinearLayout;
    const/4 v12, 0x0

    .line 1735
    .local v12, imgViewInsideSubLinearLayout:Landroid/widget/ImageView;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #ImgLinearLayoutInsideGroupItem:Landroid/widget/LinearLayout;
    check-cast v3, Landroid/widget/LinearLayout;

    .line 1736
    .restart local v3       #ImgLinearLayoutInsideGroupItem:Landroid/widget/LinearLayout;
    if-eqz v3, :cond_10

    .line 1737
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #imgViewInsideSubLinearLayout:Landroid/widget/ImageView;
    check-cast v12, Landroid/widget/ImageView;

    .line 1739
    .restart local v12       #imgViewInsideSubLinearLayout:Landroid/widget/ImageView;
    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1740
    new-instance v12, Landroid/widget/ImageView;

    .end local v12           #imgViewInsideSubLinearLayout:Landroid/widget/ImageView;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1741
    .restart local v12       #imgViewInsideSubLinearLayout:Landroid/widget/ImageView;
    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1743
    :cond_10
    if-eqz v9, :cond_11

    if-eqz v12, :cond_11

    .line 1746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v19

    .line 1747
    .restart local v19       #lpos:I
    if-lez v19, :cond_12

    .line 1748
    invoke-virtual {v12, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1752
    :goto_7
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1758
    .end local v3           #ImgLinearLayoutInsideGroupItem:Landroid/widget/LinearLayout;
    .end local v12           #imgViewInsideSubLinearLayout:Landroid/widget/ImageView;
    .end local v19           #lpos:I
    :cond_11
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #TextLinearLayoutInsideGroupItem:Landroid/widget/LinearLayout;
    check-cast v4, Landroid/widget/LinearLayout;

    .line 1759
    .restart local v4       #TextLinearLayoutInsideGroupItem:Landroid/widget/LinearLayout;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1760
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1762
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    move-object v15, v7

    .line 1763
    goto/16 :goto_0

    .line 1750
    .restart local v3       #ImgLinearLayoutInsideGroupItem:Landroid/widget/LinearLayout;
    .restart local v12       #imgViewInsideSubLinearLayout:Landroid/widget/ImageView;
    .restart local v19       #lpos:I
    :cond_12
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7
.end method


# virtual methods
.method public addUpcomingCollpaseGroup(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1498
    .local p1, groups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;>;"
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mUpcomingCollapsedGroupList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1499
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mUpcomingCollapsedGroupList:Ljava/util/ArrayList;

    .line 1501
    :cond_0
    if-nez p1, :cond_2

    .line 1509
    :cond_1
    return-void

    .line 1504
    :cond_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mUpcomingCollapsedGroupList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1505
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1506
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mUpcomingCollapsedGroupList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1505
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method collapseGroup(I)Z
    .locals 4
    .parameter "groupPos"

    .prologue
    const/4 v3, -0x1

    .line 781
    const/4 v2, 0x2

    invoke-static {v2, p1, v3, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtain(IIII)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 783
    .local v0, pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    if-nez v0, :cond_0

    .line 784
    const/4 v1, 0x0

    .line 788
    :goto_0
    return v1

    .line 786
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->collapseGroup(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Z

    move-result v1

    .line 787
    .local v1, retValue:Z
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0
.end method

.method collapseGroup(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Z
    .locals 4
    .parameter "posMetadata"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 816
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    .line 848
    :cond_0
    :goto_0
    return v0

    .line 826
    :cond_1
    iget-object v2, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    if-eqz v2, :cond_0

    .line 828
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->childItemAnimationEnabled:Z

    if-eqz v2, :cond_2

    .line 831
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->startCollapsing(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)V

    :goto_1
    move v0, v1

    .line 848
    goto :goto_0

    .line 835
    :cond_2
    iget-object v2, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    invoke-direct {p0, v0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->refreshCollapseGroupMetadataListItem(II)V

    .line 838
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 841
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 843
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 846
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v2, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v0, v2}, Landroid/widget/ExpandableListAdapter;->onGroupCollapsed(I)V

    goto :goto_1
.end method

.method createGroup(IZ)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .locals 1
    .parameter "id"
    .parameter "visible"

    .prologue
    .line 1945
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;IZ)V

    return-object v0
.end method

.method expandGroup(I)Z
    .locals 4
    .parameter "groupPos"

    .prologue
    const/4 v3, -0x1

    .line 965
    const/4 v2, 0x2

    invoke-static {v2, p1, v3, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtain(IIII)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 967
    .local v0, pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->expandGroup(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Z

    move-result v1

    .line 968
    .local v1, retValue:Z
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    .line 969
    return v1
.end method

.method expandGroup(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Z
    .locals 9
    .parameter "posMetadata"

    .prologue
    const/4 v4, 0x1

    const/4 v8, -0x1

    const/4 v3, 0x0

    .line 977
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    if-eq v5, v4, :cond_0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_1

    .line 1039
    :cond_0
    :goto_0
    return v3

    .line 988
    :cond_1
    iget-object v5, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    if-gez v5, :cond_2

    .line 990
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Need group"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 993
    :cond_2
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mMaxExpGroupCount:I

    if-eqz v5, :cond_0

    .line 997
    iget-object v5, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    if-nez v5, :cond_0

    .line 999
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mMaxExpGroupCount:I

    if-lt v5, v6, :cond_3

    .line 1005
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    .line 1006
    .local v0, collapsedGm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1008
    .local v1, collapsedIndex:I
    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->collapseGroup(I)Z

    .line 1011
    iget v5, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    if-le v5, v1, :cond_3

    .line 1012
    iget v5, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 1016
    .end local v0           #collapsedGm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    .end local v1           #collapsedIndex:I
    :cond_3
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->childItemAnimationEnabled:Z

    if-eqz v5, :cond_4

    .line 1019
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->startExpansion(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)V

    :goto_1
    move v3, v4

    .line 1039
    goto :goto_0

    .line 1022
    :cond_4
    iget-object v5, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v7, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v7, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    invoke-interface {v6, v7}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v6

    invoke-static {v8, v8, v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->obtain(IIIJ)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    move-result-object v2

    .line 1026
    .local v2, expandedGm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget v6, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    invoke-virtual {v5, v6, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1029
    invoke-direct {p0, v3, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 1032
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1035
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v5, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v3, v5}, Landroid/widget/ExpandableListAdapter;->onGroupExpanded(I)V

    goto :goto_1
.end method

.method findCollapsingGroups()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 1469
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1471
    .local v2, listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v4}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 1472
    .local v0, adapterGroupCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1473
    const/4 v4, 0x2

    invoke-static {v4, v1, v5, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtain(IIII)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v3

    .line 1476
    .local v3, pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1478
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1472
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1481
    .end local v3           #pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1486
    .end local v2           #listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    :goto_1
    return-object v2

    .restart local v2       #listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method findExpandingGroups()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 1442
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1443
    .local v1, listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v3}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mMaxExpGroupCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    .line 1447
    const/4 v3, 0x2

    invoke-static {v3, v0, v4, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtain(IIII)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 1450
    .local v2, posMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iput v0, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 1451
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1452
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1443
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1455
    .end local v2           #posMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1460
    .end local v1           #listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    :goto_1
    return-object v1

    .restart local v1       #listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method findFirstExpandingGroup(Ljava/util/ArrayList;III)V
    .locals 11
    .parameter
    .parameter "listHeight"
    .parameter "viewHeight"
    .parameter "childItemHeight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .local p1, listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2028
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2029
    .local v1, count:I
    const/4 v0, 0x1

    .line 2031
    .local v0, areAllAboveGroupsExpanded:Z
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->fullyExpandedGroups:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 2032
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->fullyExpandedGroups:Ljava/util/ArrayList;

    .line 2034
    :cond_0
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 2035
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    .line 2037
    :cond_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_6

    .line 2038
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 2039
    .local v2, group:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    iget v6, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    invoke-virtual {p0, v6, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getVisibileGroupPresentInExpandingList(ILjava/util/ArrayList;)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v4

    .line 2042
    .local v4, pData:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    if-eqz v4, :cond_4

    .line 2043
    iput v8, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    .line 2044
    iput-boolean v9, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    .line 2045
    iput-boolean v9, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isTranslating:Z

    .line 2052
    if-eqz v0, :cond_2

    .line 2053
    iput-boolean v8, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isTranslating:Z

    .line 2054
    const/4 v0, 0x0

    .line 2056
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v6

    iget v7, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    invoke-interface {v6, v7}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v6

    iput v6, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->totalChildren:I

    .line 2037
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2059
    :cond_4
    iput-boolean v8, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    .line 2060
    const/4 v6, 0x2

    iget v7, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    invoke-static {v6, v7, v10, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtain(IIII)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v5

    .line 2062
    .local v5, posMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    if-eqz v5, :cond_3

    .line 2063
    iget-object v4, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    .line 2070
    invoke-virtual {p0, p2, p3, p4, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getLastChildPositionForExpandedGroup(IIILcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)I

    move-result v6

    iput v6, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    .line 2073
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->fullyExpandedGroups:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2075
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2077
    if-eqz v0, :cond_5

    .line 2078
    iput-boolean v8, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isTranslating:Z

    .line 2082
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v6

    iget v7, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    invoke-interface {v6, v7}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v6

    iput v6, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->totalChildren:I

    goto :goto_1

    .line 2080
    :cond_5
    iput-boolean v9, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isTranslating:Z

    goto :goto_2

    .line 2087
    .end local v2           #group:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .end local v4           #pData:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    .end local v5           #posMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_6
    return-void
.end method

.method findGroupPosition(JI)I
    .locals 16
    .parameter "groupIdToMatch"
    .parameter "seedGroupPosition"

    .prologue
    .line 1342
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v12}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v2

    .line 1344
    .local v2, count:I
    if-nez v2, :cond_0

    .line 1345
    const/4 v12, -0x1

    .line 1427
    :goto_0
    return v12

    .line 1349
    :cond_0
    const-wide/high16 v12, -0x8000

    cmp-long v12, p1, v12

    if-nez v12, :cond_1

    .line 1350
    const/4 v12, -0x1

    goto :goto_0

    .line 1354
    :cond_1
    const/4 v12, 0x0

    move/from16 v0, p3

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 1355
    add-int/lit8 v12, v2, -0x1

    move/from16 v0, p3

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 1370
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x64

    add-long v3, v12, v14

    .line 1375
    .local v3, endTime:J
    move/from16 v5, p3

    .line 1378
    .local v5, first:I
    move/from16 v8, p3

    .line 1381
    .local v8, last:I
    const/4 v9, 0x0

    .line 1391
    .local v9, next:Z
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    .line 1392
    .local v1, adapter:Landroid/widget/ExpandableListAdapter;
    if-nez v1, :cond_4

    .line 1393
    const/4 v12, -0x1

    goto :goto_0

    .line 1411
    .local v6, hitFirst:Z
    .local v7, hitLast:Z
    .local v10, rowId:J
    :cond_2
    if-nez v6, :cond_3

    if-eqz v9, :cond_9

    if-nez v7, :cond_9

    .line 1413
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 1414
    move/from16 p3, v8

    .line 1416
    const/4 v9, 0x0

    .line 1396
    .end local v6           #hitFirst:Z
    .end local v7           #hitLast:Z
    .end local v10           #rowId:J
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    cmp-long v12, v12, v3

    if-gtz v12, :cond_6

    .line 1397
    move/from16 v0, p3

    invoke-interface {v1, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v10

    .line 1398
    .restart local v10       #rowId:J
    cmp-long v12, v10, p1

    if-nez v12, :cond_5

    move/from16 v12, p3

    .line 1400
    goto :goto_0

    .line 1403
    :cond_5
    add-int/lit8 v12, v2, -0x1

    if-ne v8, v12, :cond_7

    const/4 v7, 0x1

    .line 1404
    .restart local v7       #hitLast:Z
    :goto_2
    if-nez v5, :cond_8

    const/4 v6, 0x1

    .line 1406
    .restart local v6       #hitFirst:Z
    :goto_3
    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    .line 1427
    .end local v6           #hitFirst:Z
    .end local v7           #hitLast:Z
    .end local v10           #rowId:J
    :cond_6
    const/4 v12, -0x1

    goto :goto_0

    .line 1403
    .restart local v10       #rowId:J
    :cond_7
    const/4 v7, 0x0

    goto :goto_2

    .line 1404
    .restart local v7       #hitLast:Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    .line 1417
    .restart local v6       #hitFirst:Z
    :cond_9
    if-nez v7, :cond_a

    if-nez v9, :cond_4

    if-nez v6, :cond_4

    .line 1419
    :cond_a
    add-int/lit8 v5, v5, -0x1

    .line 1420
    move/from16 p3, v5

    .line 1422
    const/4 v9, 0x1

    goto :goto_1
.end method

.method getAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getChildItemAnimationFlag()Z
    .locals 1

    .prologue
    .line 1494
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->childItemAnimationEnabled:Z

    return v0
.end method

.method public getChildWithinGroupPos(I)I
    .locals 1
    .parameter "flatPos"

    .prologue
    .line 286
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->childPos:I

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 435
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 436
    .local v0, groupCount:I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v1, v0

    goto :goto_0
.end method

.method getExpandedGroupMetadataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 1291
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 1292
    .local v0, adapter:Landroid/widget/ExpandableListAdapter;
    instance-of v1, v0, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    .line 1293
    check-cast v0, Landroid/widget/Filterable;

    .end local v0           #adapter:Landroid/widget/ExpandableListAdapter;
    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    .line 1295
    :goto_0
    return-object v1

    .restart local v0       #adapter:Landroid/widget/ExpandableListAdapter;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getFlatPosForChildPos(II)I
    .locals 3
    .parameter "groupPos"
    .parameter "childPos"

    .prologue
    const/4 v1, -0x1

    .line 806
    const/4 v2, 0x1

    invoke-static {v2, p1, p2, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtain(IIII)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 808
    .local v0, pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    if-nez v0, :cond_0

    .line 812
    :goto_0
    return v1

    .line 810
    :cond_0
    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v1, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    .line 811
    .local v1, retVal:I
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0
.end method

.method getFlatPosForGroupPos(I)I
    .locals 4
    .parameter "groupPos"

    .prologue
    const/4 v3, -0x1

    .line 795
    const/4 v2, 0x2

    invoke-static {v2, p1, v3, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtain(IIII)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 797
    .local v0, pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v1, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    .line 798
    .local v1, retVal:I
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    .line 799
    return v1
.end method

.method getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    .locals 25
    .parameter "pos"

    .prologue
    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    .line 303
    .local v20, egml:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 306
    .local v23, numExpGroups:I
    const/4 v13, 0x0

    .line 307
    .local v13, leftExpGroupIndex:I
    add-int/lit8 v19, v23, -0x1

    .line 308
    .local v19, rightExpGroupIndex:I
    const/16 v22, 0x0

    .line 311
    .local v22, midExpGroupIndex:I
    if-nez v23, :cond_9

    .line 317
    move-object/from16 v0, p1

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->childPos:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->obtain(IIIILcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v2

    move/from16 v7, v22

    .line 401
    .end local v22           #midExpGroupIndex:I
    .local v7, midExpGroupIndex:I
    :goto_0
    return-object v2

    .line 326
    :cond_0
    :goto_1
    move/from16 v0, v19

    if-gt v13, v0, :cond_5

    .line 327
    sub-int v2, v19, v13

    div-int/lit8 v2, v2, 0x2

    add-int v7, v2, v13

    .line 328
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    .line 330
    .local v6, midExpGm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    move-object/from16 v0, p1

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    iget v3, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    if-le v2, v3, :cond_1

    .line 334
    add-int/lit8 v13, v7, 0x1

    goto :goto_1

    .line 335
    :cond_1
    move-object/from16 v0, p1

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    iget v3, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    if-ge v2, v3, :cond_2

    .line 339
    add-int/lit8 v19, v7, -0x1

    goto :goto_1

    .line 340
    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    iget v3, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v2, v3, :cond_0

    .line 345
    move-object/from16 v0, p1

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 347
    iget v2, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->childPos:I

    invoke-static/range {v2 .. v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->obtain(IIIILcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto :goto_0

    .line 349
    :cond_3
    move-object/from16 v0, p1

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 351
    iget v2, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->childPos:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->childPos:I

    invoke-static/range {v2 .. v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->obtain(IIIILcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto :goto_0

    .line 354
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 363
    .end local v6           #midExpGm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    :cond_5
    move-object/from16 v0, p1

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    .line 365
    const/4 v2, 0x0

    goto :goto_0

    .line 373
    :cond_6
    if-le v13, v7, :cond_7

    .line 383
    add-int/lit8 v2, v13, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    .line 384
    .local v21, leftExpGm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    move-object/from16 v0, v21

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    move-object/from16 v0, v21

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v3, v4

    add-int v8, v2, v3

    .line 386
    .local v8, flPos:I
    move-object/from16 v0, p1

    iget v9, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v10, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->childPos:I

    const/4 v12, 0x0

    invoke-static/range {v8 .. v13}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->obtain(IIIILcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto/16 :goto_0

    .line 388
    .end local v8           #flPos:I
    .end local v21           #leftExpGm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    :cond_7
    move/from16 v0, v19

    if-ge v0, v7, :cond_8

    .line 396
    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    .line 397
    .local v24, rightExpGm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    move-object/from16 v0, v24

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, v24

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    sub-int/2addr v3, v4

    sub-int v8, v2, v3

    .line 398
    .restart local v8       #flPos:I
    move-object/from16 v0, p1

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->childPos:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move v14, v8

    invoke-static/range {v14 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->obtain(IIIILcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto/16 :goto_0

    .line 401
    .end local v8           #flPos:I
    .end local v24           #rightExpGm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    .end local v7           #midExpGroupIndex:I
    .restart local v22       #midExpGroupIndex:I
    :cond_9
    move/from16 v7, v22

    .end local v22           #midExpGroupIndex:I
    .restart local v7       #midExpGroupIndex:I
    goto/16 :goto_1
.end method

.method public getGroupPos(I)I
    .locals 1
    .parameter "flatPos"

    .prologue
    .line 282
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .parameter "flatListPos"

    .prologue
    .line 443
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 446
    .local v0, posMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 447
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    invoke-interface {v2, v3}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    .line 456
    .local v1, retValue:Ljava/lang/Object;
    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    .line 458
    return-object v1

    .line 448
    .end local v1           #retValue:Ljava/lang/Object;
    :cond_0
    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 449
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->childPos:I

    invoke-interface {v2, v3, v4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    .restart local v1       #retValue:Ljava/lang/Object;
    goto :goto_0

    .line 453
    .end local v1           #retValue:Ljava/lang/Object;
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Flat list position is of unknown type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getItemId(I)J
    .locals 10
    .parameter "flatListPos"

    .prologue
    .line 462
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v4

    .line 463
    .local v4, posMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v8, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v8, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    invoke-interface {v7, v8}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v2

    .line 466
    .local v2, groupId:J
    iget-object v7, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v7, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 467
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v7, v2, v3}, Landroid/widget/ExpandableListAdapter;->getCombinedGroupId(J)J

    move-result-wide v5

    .line 477
    .local v5, retValue:J
    :goto_0
    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    .line 479
    return-wide v5

    .line 468
    .end local v5           #retValue:J
    :cond_0
    iget-object v7, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v7, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 469
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v8, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v8, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    iget-object v9, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->childPos:I

    invoke-interface {v7, v8, v9}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    .line 471
    .local v0, childId:J
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v7, v2, v3, v0, v1}, Landroid/widget/ExpandableListAdapter;->getCombinedChildId(JJ)J

    move-result-wide v5

    .line 472
    .restart local v5       #retValue:J
    goto :goto_0

    .line 474
    .end local v0           #childId:J
    .end local v5           #retValue:J
    :cond_1
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Flat list position is of unknown type"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public getItemViewType(I)I
    .locals 6
    .parameter "flatListPos"

    .prologue
    const/4 v5, 0x2

    .line 552
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v4

    iget-object v2, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    .line 555
    .local v2, pos:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v4, v4, Landroid/widget/HeterogeneousExpandableList;

    if-eqz v4, :cond_1

    .line 556
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    check-cast v0, Landroid/widget/HeterogeneousExpandableList;

    .line 557
    .local v0, adapter:Landroid/widget/HeterogeneousExpandableList;
    iget v4, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    if-ne v4, v5, :cond_0

    .line 558
    iget v4, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    invoke-interface {v0, v4}, Landroid/widget/HeterogeneousExpandableList;->getGroupType(I)I

    move-result v3

    .line 571
    .end local v0           #adapter:Landroid/widget/HeterogeneousExpandableList;
    .local v3, retValue:I
    :goto_0
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->recycle()V

    .line 573
    return v3

    .line 560
    .end local v3           #retValue:I
    .restart local v0       #adapter:Landroid/widget/HeterogeneousExpandableList;
    :cond_0
    iget v4, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    iget v5, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->childPos:I

    invoke-interface {v0, v4, v5}, Landroid/widget/HeterogeneousExpandableList;->getChildType(II)I

    move-result v1

    .line 561
    .local v1, childType:I
    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v4

    add-int v3, v4, v1

    .restart local v3       #retValue:I
    goto :goto_0

    .line 564
    .end local v0           #adapter:Landroid/widget/HeterogeneousExpandableList;
    .end local v1           #childType:I
    .end local v3           #retValue:I
    :cond_1
    iget v4, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    if-ne v4, v5, :cond_2

    .line 565
    const/4 v3, 0x0

    .restart local v3       #retValue:I
    goto :goto_0

    .line 567
    .end local v3           #retValue:I
    :cond_2
    const/4 v3, 0x1

    .restart local v3       #retValue:I
    goto :goto_0
.end method

.method getLastChildFlatPositionForExpandedGroup(IIIII)I
    .locals 4
    .parameter "lastChildFlPos"
    .parameter "groupFlatPosition"
    .parameter "listHeight"
    .parameter "viewHeight"
    .parameter "childHeight"

    .prologue
    .line 1978
    invoke-virtual {p0, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 1980
    .local v0, pm1:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_0
    const/4 v1, 0x0

    .line 1981
    .local v1, totalHeight:I
    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    mul-int/2addr v2, p4

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    sub-int v3, p1, v3

    mul-int/2addr v3, p5

    add-int v1, v2, v3

    .line 1983
    if-gt v1, p3, :cond_1

    .line 1984
    sub-int v2, p1, p2

    .line 1991
    :goto_0
    return v2

    .line 1986
    :cond_1
    if-lez p1, :cond_2

    .line 1987
    add-int/lit8 p1, p1, -0x1

    .line 1990
    :cond_2
    if-gtz p1, :cond_0

    move v2, p1

    .line 1991
    goto :goto_0
.end method

.method getLastChildPositionForExpandedGroup(IIILcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)I
    .locals 6
    .parameter "listHeight"
    .parameter "viewHeight"
    .parameter "childHeight"
    .parameter "posMetadata"

    .prologue
    .line 1998
    if-eqz p4, :cond_0

    iget-object v0, p4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    if-nez v0, :cond_1

    .line 1999
    :cond_0
    const/4 v0, 0x0

    .line 2008
    :goto_0
    return v0

    :cond_1
    iget-object v0, p4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v0, p4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->flPos:I

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getLastChildFlatPositionForExpandedGroup(IIIII)I

    move-result v0

    goto :goto_0
.end method

.method getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    .locals 20
    .parameter "flPos"

    .prologue
    .line 146
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 147
    .local v13, egml:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 150
    .local v17, numExpGroups:I
    const/4 v15, 0x0

    .line 151
    .local v15, leftExpGroupIndex:I
    add-int/lit8 v19, v17, -0x1

    .line 152
    .local v19, rightExpGroupIndex:I
    const/16 v16, 0x0

    .line 155
    .local v16, midExpGroupIndex:I
    if-nez v17, :cond_7

    .line 161
    const/4 v2, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v1, p1

    move/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->obtain(IIIILcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v1

    move/from16 v6, v16

    .line 277
    .end local v16           #midExpGroupIndex:I
    .local v6, midExpGroupIndex:I
    :goto_0
    return-object v1

    .line 177
    :cond_0
    :goto_1
    move/from16 v0, v19

    if-gt v15, v0, :cond_4

    .line 178
    sub-int v1, v19, v15

    div-int/lit8 v1, v1, 0x2

    add-int v6, v1, v15

    .line 179
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    .line 181
    .local v5, midExpGm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    iget v1, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move/from16 v0, p1

    if-le v0, v1, :cond_1

    .line 186
    add-int/lit8 v15, v6, 0x1

    goto :goto_1

    .line 187
    :cond_1
    iget v1, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->flPos:I

    move/from16 v0, p1

    if-ge v0, v1, :cond_2

    .line 192
    add-int/lit8 v19, v6, -0x1

    goto :goto_1

    .line 193
    :cond_2
    iget v1, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->flPos:I

    move/from16 v0, p1

    if-ne v0, v1, :cond_3

    .line 198
    const/4 v2, 0x2

    iget v3, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    const/4 v4, -0x1

    move/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->obtain(IIIILcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v1

    goto :goto_0

    .line 200
    :cond_3
    iget v1, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move/from16 v0, p1

    if-gt v0, v1, :cond_0

    .line 211
    iget v1, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->flPos:I

    add-int/lit8 v1, v1, 0x1

    sub-int v4, p1, v1

    .line 212
    .local v4, childPos:I
    const/4 v2, 0x1

    iget v3, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    move/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->obtain(IIIILcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v1

    goto :goto_0

    .line 227
    .end local v4           #childPos:I
    .end local v5           #midExpGm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    :cond_4
    const/4 v12, 0x0

    .line 230
    .local v12, insertPosition:I
    const/4 v9, 0x0

    .line 237
    .local v9, groupPos:I
    if-le v15, v6, :cond_5

    .line 245
    add-int/lit8 v1, v15, -0x1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    .line 247
    .local v14, leftExpGm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    move v12, v15

    .line 253
    iget v1, v14, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    sub-int v1, p1, v1

    iget v2, v14, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    add-int v9, v1, v2

    .line 277
    .end local v14           #leftExpGm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    :goto_2
    const/4 v8, 0x2

    const/4 v10, -0x1

    const/4 v11, 0x0

    move/from16 v7, p1

    invoke-static/range {v7 .. v12}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->obtain(IIIILcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v1

    goto :goto_0

    .line 254
    :cond_5
    move/from16 v0, v19

    if-ge v0, v6, :cond_6

    .line 261
    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    .line 263
    .local v18, rightExpGm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    move/from16 v12, v19

    .line 271
    move-object/from16 v0, v18

    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    move-object/from16 v0, v18

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->flPos:I

    sub-int v2, v2, p1

    sub-int v9, v1, v2

    .line 272
    goto :goto_2

    .line 274
    .end local v18           #rightExpGm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown state"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v6           #midExpGroupIndex:I
    .end local v9           #groupPos:I
    .end local v12           #insertPosition:I
    .restart local v16       #midExpGroupIndex:I
    :cond_7
    move/from16 v6, v16

    .end local v16           #midExpGroupIndex:I
    .restart local v6       #midExpGroupIndex:I
    goto/16 :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .parameter "flatListPos"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 485
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v8

    .line 488
    .local v8, posMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    const/4 v15, 0x0

    .line 489
    .local v15, convertViewLL:Landroid/widget/FrameLayout;
    const/16 v16, 0x0

    .line 490
    .local v16, subLinearLayoutInsideconvertViewLL:Landroid/widget/LinearLayout;
    const/4 v13, 0x0

    .line 492
    .local v13, OriginalViewInsideSubLinearLayout:Landroid/view/View;
    if-eqz p2, :cond_4

    move-object/from16 v0, p2

    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_4

    move-object/from16 v15, p2

    .line 493
    check-cast v15, Landroid/widget/FrameLayout;

    .line 494
    if-eqz v15, :cond_0

    .line 495
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .end local v16           #subLinearLayoutInsideconvertViewLL:Landroid/widget/LinearLayout;
    check-cast v16, Landroid/widget/LinearLayout;

    .line 496
    .restart local v16       #subLinearLayoutInsideconvertViewLL:Landroid/widget/LinearLayout;
    :cond_0
    if-eqz v16, :cond_3

    .line 497
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 507
    :goto_0
    iget-object v1, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    .line 508
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v3, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v4

    move-object/from16 v0, p3

    invoke-interface {v1, v3, v4, v13, v0}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 510
    .local v2, retValue:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 511
    instance-of v1, v2, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    move-object v1, v2

    .line 512
    check-cast v1, Landroid/widget/LinearLayout;

    .line 519
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v4, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v5

    const/4 v6, 0x1

    iget-object v1, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v7, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->warpViewWithLinearLayout(Landroid/view/View;Landroid/view/View;IZZILcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Landroid/view/View;

    move-result-object v2

    .line 542
    :goto_1
    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    .line 543
    if-eqz v2, :cond_2

    .line 544
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 547
    :cond_2
    return-object v2

    .line 500
    .end local v2           #retValue:Landroid/view/View;
    :cond_3
    move-object/from16 v13, p2

    goto :goto_0

    .line 505
    :cond_4
    move-object/from16 v13, p2

    goto :goto_0

    .line 524
    :cond_5
    iget-object v1, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_8

    .line 525
    const/4 v12, 0x0

    .line 526
    .local v12, isLastChild:Z
    iget-object v1, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    if-eqz v1, :cond_6

    .line 527
    iget-object v1, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move/from16 v0, p1

    if-ne v1, v0, :cond_7

    const/4 v12, 0x1

    .line 529
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v10, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    iget-object v1, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v11, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->childPos:I

    move-object/from16 v14, p3

    invoke-interface/range {v9 .. v14}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 533
    .restart local v2       #retValue:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v4, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v5

    const/4 v6, 0x0

    iget-object v1, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v7, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->warpViewWithLinearLayout(Landroid/view/View;Landroid/view/View;IZZILcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Landroid/view/View;

    move-result-object v2

    .line 537
    goto :goto_1

    .line 527
    .end local v2           #retValue:Landroid/view/View;
    :cond_7
    const/4 v12, 0x0

    goto :goto_2

    .line 539
    .end local v12           #isLastChild:Z
    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Flat list position is of unknown type"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getViewTypeCount()I
    .locals 3

    .prologue
    .line 578
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v1, v1, Landroid/widget/HeterogeneousExpandableList;

    if-eqz v1, :cond_0

    .line 579
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    check-cast v0, Landroid/widget/HeterogeneousExpandableList;

    .line 580
    .local v0, adapter:Landroid/widget/HeterogeneousExpandableList;
    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v1

    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getChildTypeCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 582
    .end local v0           #adapter:Landroid/widget/HeterogeneousExpandableList;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method getVisibileGroupPresentInExpandingList(ILjava/util/ArrayList;)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    .locals 4
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;",
            ">;)",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;"
        }
    .end annotation

    .prologue
    .line 2015
    .local p2, listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    const/4 v2, 0x0

    .line 2016
    .local v2, pData:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2017
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2018
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    if-ne v3, p1, :cond_1

    .line 2019
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    iget-object v2, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    .line 2023
    :cond_0
    return-object v2

    .line 2017
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 1326
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 1327
    .local v0, adapter:Landroid/widget/ExpandableListAdapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->isEmpty()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 5
    .parameter "flatListPos"

    .prologue
    .line 412
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v2

    iget-object v0, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    .line 415
    .local v0, pos:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 416
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->childPos:I

    invoke-interface {v2, v3, v4}, Landroid/widget/ExpandableListAdapter;->isChildSelectable(II)Z

    move-result v1

    .line 422
    .local v1, retValue:Z
    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->recycle()V

    .line 424
    return v1

    .line 419
    .end local v1           #retValue:Z
    :cond_0
    const/4 v1, 0x1

    .restart local v1       #retValue:Z
    goto :goto_0
.end method

.method public isGroupExpanded(I)Z
    .locals 3
    .parameter "groupPosition"

    .prologue
    .line 1268
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 1269
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    .line 1271
    .local v0, groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v2, p1, :cond_0

    .line 1272
    const/4 v2, 0x1

    .line 1276
    .end local v0           #groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    :goto_1
    return v2

    .line 1268
    .restart local v0       #groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1276
    .end local v0           #groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setChildItemAnimationFlag(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1490
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->childItemAnimationEnabled:Z

    .line 1491
    return-void
.end method

.method public setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2
    .parameter "expandableListAdapter"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 119
    :cond_0
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    .line 120
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 121
    return-void
.end method

.method setExpandedGroupMetadataList(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1305
    .local p1, expandedGroupMetadataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;>;"
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-nez v2, :cond_1

    .line 1322
    :cond_0
    :goto_0
    return-void

    .line 1311
    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    .line 1312
    .local v1, numGroups:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_2

    .line 1313
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    if-ge v2, v1, :cond_0

    .line 1312
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1320
    :cond_2
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 1321
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    goto :goto_0
.end method

.method public setFinishedCollapseAnimationItemIndex()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1205
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-boolean v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isItemAnimationOver:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-boolean v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isTranslationOver:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-boolean v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isIndicatorAnimationOver:Z

    if-eqz v1, :cond_0

    .line 1207
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mCollapsingGroup:I

    invoke-static {v1, v2, v3, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtain(IIII)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 1209
    .local v0, posMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    if-nez v0, :cond_1

    .line 1225
    .end local v0           #posMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_0
    :goto_0
    return-void

    .line 1214
    .restart local v0       #posMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mCollapsingGroup:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->refreshCollapseGroupMetadataListItem(II)V

    .line 1215
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->finishAnimation()V

    .line 1216
    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    if-eqz v1, :cond_0

    .line 1217
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1221
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v1, v2}, Landroid/widget/ExpandableListAdapter;->onGroupCollapsed(I)V

    goto :goto_0
.end method

.method setFinishedCollapsingAllAnimation()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 1240
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 1241
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 1242
    .local v1, grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    iget v4, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v0

    .line 1243
    .local v0, gflatPos:I
    const/4 v4, 0x2

    invoke-static {v4, v0, v6, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtain(IIII)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v3

    .line 1247
    .local v3, posMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    if-eqz v4, :cond_0

    .line 1248
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget-object v5, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1250
    :cond_0
    const/4 v4, 0x0

    invoke-direct {p0, v4, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->refreshCollapseGroupMetadataListItem(II)V

    .line 1254
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/ExpandableListAdapter;->onGroupCollapsed(I)V

    .line 1240
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1256
    .end local v0           #gflatPos:I
    .end local v1           #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .end local v3           #posMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->finishAnimation()V

    .line 1258
    return-void
.end method

.method setFinishedExpansionAllAnimation()V
    .locals 4

    .prologue
    .line 1228
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1229
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1230
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 1231
    .local v0, grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    iget-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    if-eqz v2, :cond_0

    .line 1232
    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->totalChildren:I

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->refreshExpGroupMetadataListItem(II)V

    .line 1229
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1235
    .end local v0           #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .end local v1           #i:I
    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->finishAnimation()V

    .line 1236
    return-void
.end method

.method public setFinishedExpansionAnimationItemIndex()V
    .locals 2

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isItemAnimationOver:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isTranslationOver:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isIndicatorAnimationOver:Z

    if-eqz v0, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfItems:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mExpandingGroup:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->refreshExpGroupMetadataListItem(II)V

    .line 1193
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->finishAnimation()V

    .line 1195
    :cond_0
    return-void
.end method

.method setGroupIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "groupIndicator"

    .prologue
    .line 1433
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mGroupIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 1434
    return-void
.end method

.method public setMaxExpGroupCount(I)V
    .locals 0
    .parameter "maxExpGroupCount"

    .prologue
    .line 1283
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mMaxExpGroupCount:I

    .line 1284
    return-void
.end method

.method public setspeedFactor(F)V
    .locals 1
    .parameter "factor"

    .prologue
    .line 129
    const/high16 v0, 0x3f00

    mul-float/2addr v0, p1

    sput v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->SPEED:F

    .line 130
    return-void
.end method

.method startCollapsing(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)V
    .locals 5
    .parameter "posMetadata"

    .prologue
    const/4 v4, 0x1

    .line 909
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    packed-switch v0, :pswitch_data_0

    .line 926
    :pswitch_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->DEBUG_TW_EXP_CONNECTOR:Z

    if-eqz v0, :cond_0

    .line 927
    const-string v0, "TwExpandableListConnector"

    const-string v1, "mAnimationState didnt match any of the case"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    .line 931
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v1, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mCollapsingGroup:I

    .line 932
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mCollapsingGroup:I

    invoke-interface {v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfItems:I

    .line 934
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    if-eqz v0, :cond_1

    .line 935
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v2, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfItems:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->findNumberOfCollapseAnimatingItems(II)I

    move-result v1

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfAnimationItems:I

    .line 940
    :goto_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfAnimationItems:I

    if-nez v0, :cond_2

    .line 944
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isItemAnimationOver:Z

    .line 945
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isTranslationOver:Z

    .line 946
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isIndicatorAnimationOver:Z

    .line 947
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setFinishedCollapseAnimationItemIndex()V

    .line 957
    :goto_2
    return-void

    .line 913
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    const/4 v1, 0x4

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    goto :goto_2

    .line 921
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    goto :goto_0

    .line 938
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfItems:I

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfAnimationItems:I

    goto :goto_1

    .line 951
    :cond_2
    iget-object v0, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    if-eqz v0, :cond_3

    .line 952
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v1, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mLastItem:I

    .line 953
    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfAnimationItems:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mCollapsingGroup:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->refreshCollapseGroupMetadataListItem(II)V

    .line 955
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 909
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method startCollapsingAll(Ljava/util/ArrayList;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 855
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    packed-switch v6, :pswitch_data_0

    .line 877
    :pswitch_0
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->DEBUG_TW_EXP_CONNECTOR:Z

    if-eqz v6, :cond_0

    .line 878
    const-string v6, "TwExpandableListConnector"

    const-string v7, "mAnimationState didnt match any of the case"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput v9, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    .line 881
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput-boolean v9, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isExpandOrCollapseAll:Z

    .line 882
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 905
    :goto_1
    return-void

    .line 860
    :pswitch_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    const/4 v7, 0x4

    iput v7, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    goto :goto_1

    .line 869
    :pswitch_2
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    if-eq v6, v9, :cond_0

    .line 870
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput v8, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    goto :goto_0

    .line 885
    :cond_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    iget v0, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    .line 886
    .local v0, firstOfVisibleGroup:I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v7, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    iget v4, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    .line 889
    .local v4, lastOfVisibleGroup:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 890
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    .line 891
    .local v5, posMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v1, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    .line 893
    .local v1, gpmdata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    iget-object v6, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    if-lt v6, v0, :cond_3

    iget-object v6, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    if-gt v6, v4, :cond_3

    .line 895
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    iget-object v7, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v7, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 896
    .local v2, group:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    iget v6, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    iget v7, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    invoke-direct {p0, v6, v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->refreshCollapseGroupMetadataListItem(II)V

    .line 889
    .end local v2           #group:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 897
    :cond_3
    if-eqz v1, :cond_2

    .line 898
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 899
    iget-wide v6, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gId:J

    long-to-int v6, v6

    invoke-direct {p0, v8, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->refreshCollapseGroupMetadataListItem(II)V

    goto :goto_3

    .line 903
    .end local v1           #gpmdata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    .end local v5           #posMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_4
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 855
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method startExpansion(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)V
    .locals 6
    .parameter "posMetadata"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 1122
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    packed-switch v1, :pswitch_data_0

    .line 1147
    :goto_0
    :pswitch_0
    iget-object v1, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v3, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    invoke-interface {v2, v3}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v2

    invoke-static {v4, v4, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->obtain(IIIJ)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    move-result-object v0

    .line 1151
    .local v0, expandedGm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput v5, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    .line 1152
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    iput v2, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mExpandingGroup:I

    .line 1153
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mExpandingGroup:I

    invoke-interface {v2, v3}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v2

    iput v2, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfItems:I

    .line 1156
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    if-eqz v1, :cond_0

    .line 1157
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfItems:I

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->findNumberOfExpandAnimatingItems(I)I

    move-result v2

    iput v2, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfAnimationItems:I

    .line 1163
    :goto_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget v2, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1166
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfAnimationItems:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mExpandingGroup:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->refreshExpGroupMetadataListItem(II)V

    .line 1170
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1173
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v1, v2}, Landroid/widget/ExpandableListAdapter;->onGroupExpanded(I)V

    .line 1175
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iput v2, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mLastItem:I

    .line 1177
    .end local v0           #expandedGm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    :goto_2
    return-void

    .line 1126
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    const/4 v2, 0x4

    iput v2, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    .line 1129
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput-boolean v3, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isItemAnimationOver:Z

    .line 1130
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput-boolean v3, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isTranslationOver:Z

    .line 1131
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput-boolean v3, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isIndicatorAnimationOver:Z

    .line 1133
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setFinishedExpansionAnimationItemIndex()V

    .line 1135
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->startExpansion(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)V

    goto :goto_2

    .line 1141
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput v5, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    goto :goto_0

    .line 1160
    .restart local v0       #expandedGm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfItems:I

    iput v2, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfAnimationItems:I

    goto :goto_1

    .line 1122
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method startExpansionAll(Ljava/util/ArrayList;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    const/4 v9, 0x1

    const/4 v10, -0x1

    const/4 v8, 0x0

    .line 1046
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v7, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    packed-switch v7, :pswitch_data_0

    .line 1068
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput v8, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    .line 1069
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput-boolean v9, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isExpandOrCollapseAll:Z

    .line 1070
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v7, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 1118
    :goto_1
    return-void

    .line 1050
    :pswitch_1
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    const/4 v8, 0x4

    iput v8, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    goto :goto_1

    .line 1059
    :pswitch_2
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v7, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    if-eq v7, v9, :cond_0

    .line 1060
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput v8, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    goto :goto_0

    .line 1073
    :cond_1
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v7, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    iget v2, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    .line 1074
    .local v2, firstOfVisibleGroup:I
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v7, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v8, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    iget v5, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    .line 1081
    .local v5, lastOfVisibleGroup:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 1086
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    .line 1087
    .local v6, posMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v7, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v7, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v9, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    invoke-interface {v8, v9}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v8

    invoke-static {v10, v10, v7, v8, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->obtain(IIIJ)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    move-result-object v1

    .line 1093
    .local v1, expandedGm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget v8, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    invoke-virtual {v7, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1095
    iget v7, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    if-lt v7, v2, :cond_2

    iget v7, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    if-gt v7, v5, :cond_2

    .line 1100
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v7, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    iget v8, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v8, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 1102
    .local v3, group:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    iget v7, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    iget v8, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    invoke-direct {p0, v7, v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->refreshExpGroupMetadataListItem(II)V

    .line 1114
    .end local v3           #group:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    :goto_3
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v8, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v7, v8}, Landroid/widget/ExpandableListAdapter;->onGroupExpanded(I)V

    .line 1081
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1108
    :cond_2
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v8, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v7, v8}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v0

    .line 1110
    .local v0, childrenCount:I
    iget v7, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    invoke-direct {p0, v0, v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->refreshExpGroupMetadataListItem(II)V

    goto :goto_3

    .line 1117
    .end local v0           #childrenCount:I
    .end local v1           #expandedGm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    .end local v6           #posMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_3
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 1046
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public unwarpViews(Landroid/view/View;)Landroid/view/View;
    .locals 5
    .parameter "convertView"

    .prologue
    const/4 v4, 0x0

    .line 1526
    const/4 v1, 0x0

    .line 1527
    .local v1, convertViewLL:Landroid/widget/FrameLayout;
    const/4 v2, 0x0

    .line 1528
    .local v2, subLinearLayoutInsideconvertViewLL:Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    .line 1530
    .local v0, OriginalViewInsideSubLinearLayout:Landroid/view/View;
    if-eqz p1, :cond_2

    instance-of v3, p1, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_2

    move-object v1, p1

    .line 1531
    check-cast v1, Landroid/widget/FrameLayout;

    .line 1532
    if-eqz v1, :cond_0

    .line 1533
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #subLinearLayoutInsideconvertViewLL:Landroid/widget/LinearLayout;
    check-cast v2, Landroid/widget/LinearLayout;

    .line 1534
    .restart local v2       #subLinearLayoutInsideconvertViewLL:Landroid/widget/LinearLayout;
    :cond_0
    if-eqz v2, :cond_1

    .line 1535
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1546
    :goto_0
    return-object v0

    .line 1538
    :cond_1
    move-object v0, p1

    goto :goto_0

    .line 1543
    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method updateVisibleGroups(ILjava/util/ArrayList;II)I
    .locals 8
    .parameter "index"
    .parameter
    .parameter "listHeight"
    .parameter "viewHeight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;",
            ">;II)I"
        }
    .end annotation

    .prologue
    .line 2091
    .local p2, listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v5, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2092
    .local v1, count:I
    if-ge p1, v1, :cond_0

    .line 2093
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v5, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 2094
    .local v0, addedgroup:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v5, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->fullyExpandedGroups:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v5, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->fullyExpandedGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2096
    const/4 p1, 0x0

    .line 2114
    .end local v0           #addedgroup:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .end local p1
    :cond_0
    return p1

    .line 2097
    .restart local v0       #addedgroup:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .restart local p1
    :cond_1
    move v3, p1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_0

    .line 2098
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v5, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 2099
    .local v2, group:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v5, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->fullyExpandedGroups:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v5, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->fullyExpandedGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2097
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2102
    :cond_3
    iget v5, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    invoke-virtual {p0, v5, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getVisibileGroupPresentInExpandingList(ILjava/util/ArrayList;)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v4

    .line 2104
    .local v4, pData:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    if-eqz v4, :cond_2

    .line 2105
    iget v5, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v6

    iget v7, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    invoke-interface {v6, v7}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 2106
    iget v5, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    goto :goto_1

    .line 2108
    :cond_4
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v5, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->fullyExpandedGroups:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 2109
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v5, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->fullyExpandedGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
