.class public Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TickerScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/TickerScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TickerStockListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLayout:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/TickerScrollView;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 686
    .local p4, objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;>;"
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockListAdapter;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    .line 687
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 684
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockListAdapter;->mContext:Landroid/content/Context;

    .line 688
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockListAdapter;->mContext:Landroid/content/Context;

    .line 689
    iput p3, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockListAdapter;->mLayout:I

    .line 690
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 28
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 692
    const/16 v22, 0x0

    .line 693
    .local v22, row:Landroid/view/View;
    if-nez p2, :cond_3

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "layout_inflater"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 695
    .local v12, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockListAdapter;->mLayout:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v22

    .line 699
    .end local v12           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;

    .line 700
    .local v23, tickerNewsData:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->getStockName()Ljava/lang/String;

    move-result-object v18

    .line 701
    .local v18, name:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->getStockPrice()Ljava/lang/String;

    move-result-object v19

    .line 702
    .local v19, price:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->getStockChange()Ljava/lang/String;

    move-result-object v4

    .line 703
    .local v4, change:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->getStockChangeRate()Ljava/lang/String;

    move-result-object v21

    .line 704
    .local v21, rate:Ljava/lang/String;
    const v24, 0x1020341

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 705
    .local v16, mStockName:Landroid/widget/TextView;
    const v24, 0x1020342

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 706
    .local v17, mStockPrice:Landroid/widget/TextView;
    const v24, 0x1020344

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 707
    .local v14, mStockChange:Landroid/widget/TextView;
    const v24, 0x1020345

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 708
    .local v15, mStockChangeRate:Landroid/widget/TextView;
    const/4 v13, 0x0

    .line 710
    .local v13, isNum:Z
    new-instance v20, Ljava/text/DecimalFormat;

    const-string v24, "#,##0.##"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 711
    .local v20, priceFormat:Ljava/text/DecimalFormat;
    const/4 v11, 0x0

    .line 713
    .local v11, formattedPrice:Ljava/lang/String;
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v24, "#,##0.##"

    move-object/from16 v0, v24

    invoke-direct {v7, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 714
    .local v7, changePriceFormat:Ljava/text/DecimalFormat;
    const/4 v10, 0x0

    .line 716
    .local v10, formattedChangePrice:Ljava/lang/String;
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v24, "0.00"

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 717
    .local v5, changePercentFormat:Ljava/text/DecimalFormat;
    const/4 v9, 0x0

    .line 720
    .local v9, formattedChangePercent:Ljava/lang/String;
    :try_start_0
    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 721
    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 727
    :goto_1
    :try_start_1
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 728
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 729
    const/4 v13, 0x1

    .line 736
    :goto_2
    :try_start_2
    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 737
    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 738
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "%"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v9

    .line 743
    :goto_3
    if-eqz v13, :cond_0

    .line 744
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    .line 745
    .local v6, changePrice:Ljava/lang/Double;
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v24

    if-eqz v24, :cond_6

    .line 746
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_4

    .line 747
    const/16 v24, -0x1

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 748
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 749
    const/16 v24, -0x1

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 790
    .end local v6           #changePrice:Ljava/lang/Double;
    :cond_0
    :goto_4
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 791
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 793
    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 796
    const v24, 0x1020340

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    const/high16 v25, -0x100

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setBackgroundColor(I)V

    .line 799
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v24

    if-eqz v24, :cond_2

    .line 800
    const v24, 0x1020343

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 803
    :cond_2
    return-object v22

    .line 697
    .end local v4           #change:Ljava/lang/String;
    .end local v5           #changePercentFormat:Ljava/text/DecimalFormat;
    .end local v7           #changePriceFormat:Ljava/text/DecimalFormat;
    .end local v9           #formattedChangePercent:Ljava/lang/String;
    .end local v10           #formattedChangePrice:Ljava/lang/String;
    .end local v11           #formattedPrice:Ljava/lang/String;
    .end local v13           #isNum:Z
    .end local v14           #mStockChange:Landroid/widget/TextView;
    .end local v15           #mStockChangeRate:Landroid/widget/TextView;
    .end local v16           #mStockName:Landroid/widget/TextView;
    .end local v17           #mStockPrice:Landroid/widget/TextView;
    .end local v18           #name:Ljava/lang/String;
    .end local v19           #price:Ljava/lang/String;
    .end local v20           #priceFormat:Ljava/text/DecimalFormat;
    .end local v21           #rate:Ljava/lang/String;
    .end local v23           #tickerNewsData:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;
    :cond_3
    move-object/from16 v22, p2

    goto/16 :goto_0

    .line 722
    .restart local v4       #change:Ljava/lang/String;
    .restart local v5       #changePercentFormat:Ljava/text/DecimalFormat;
    .restart local v7       #changePriceFormat:Ljava/text/DecimalFormat;
    .restart local v9       #formattedChangePercent:Ljava/lang/String;
    .restart local v10       #formattedChangePrice:Ljava/lang/String;
    .restart local v11       #formattedPrice:Ljava/lang/String;
    .restart local v13       #isNum:Z
    .restart local v14       #mStockChange:Landroid/widget/TextView;
    .restart local v15       #mStockChangeRate:Landroid/widget/TextView;
    .restart local v16       #mStockName:Landroid/widget/TextView;
    .restart local v17       #mStockPrice:Landroid/widget/TextView;
    .restart local v18       #name:Ljava/lang/String;
    .restart local v19       #price:Ljava/lang/String;
    .restart local v20       #priceFormat:Ljava/text/DecimalFormat;
    .restart local v21       #rate:Ljava/lang/String;
    .restart local v23       #tickerNewsData:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;
    :catch_0
    move-exception v8

    .line 723
    .local v8, e:Ljava/lang/Exception;
    move-object/from16 v11, v19

    goto/16 :goto_1

    .line 730
    .end local v8           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 731
    .restart local v8       #e:Ljava/lang/Exception;
    move-object v10, v4

    .line 732
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 739
    .end local v8           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v8

    .line 740
    .restart local v8       #e:Ljava/lang/Exception;
    move-object/from16 v9, v21

    goto/16 :goto_3

    .line 750
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v6       #changePrice:Ljava/lang/Double;
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_5

    .line 751
    const v24, -0xb70100

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 752
    const v24, 0x10804b6

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 753
    const v24, -0xb70100

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 754
    :cond_5
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-lez v24, :cond_0

    .line 755
    const/high16 v24, -0x17

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 756
    const v24, 0x10804bc

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 757
    const/high16 v24, -0x17

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 759
    :cond_6
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v24

    if-eqz v24, :cond_9

    .line 760
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_7

    .line 761
    const v24, -0x5e5e5f

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 762
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 763
    const v24, -0x5e5e5f

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 764
    :cond_7
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_8

    .line 765
    const v24, -0xb87220

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 766
    const v24, 0x10804b5

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 767
    const v24, -0xb87220

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 768
    :cond_8
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-lez v24, :cond_0

    .line 769
    const/high16 v24, -0x17

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 770
    const v24, 0x10804bb

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 771
    const/high16 v24, -0x17

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 774
    :cond_9
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_a

    .line 775
    const/16 v24, -0x1

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 776
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 777
    const/16 v24, -0x1

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 778
    :cond_a
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_b

    .line 779
    const/high16 v24, -0x17

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 780
    const v24, 0x10804b4

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 781
    const/high16 v24, -0x17

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 782
    :cond_b
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-lez v24, :cond_0

    .line 783
    const v24, -0xb70100

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 784
    const v24, 0x10804ba

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 785
    const v24, -0xb70100

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4
.end method
