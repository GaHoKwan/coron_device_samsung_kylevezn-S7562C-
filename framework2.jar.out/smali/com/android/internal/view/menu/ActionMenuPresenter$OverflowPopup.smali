.class Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;
.super Lcom/android/internal/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowPopup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 5
    .parameter
    .parameter "context"
    .parameter "menu"
    .parameter "anchorView"
    .parameter "overflowOnly"

    .prologue
    .line 854
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 855
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 856
    iget-object v4, p1, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPopupPresenterCallback:Lcom/android/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, v4}, Lcom/android/internal/view/menu/MenuPopupHelper;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 859
    #getter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->mIsParentThemeDeviceDefault:Z
    invoke-static {p1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$100(Lcom/android/internal/view/menu/ActionMenuPresenter;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 860
    const/4 v3, 0x0

    .line 861
    .local v3, preserveIconSpacing:Z
    invoke-virtual {p3}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v1

    .line 862
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 863
    invoke-virtual {p3, v2}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 864
    .local v0, childItem:Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 865
    const/4 v3, 0x1

    .line 869
    .end local v0           #childItem:Landroid/view/MenuItem;
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 872
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #preserveIconSpacing:Z
    :cond_1
    return-void

    .line 862
    .restart local v0       #childItem:Landroid/view/MenuItem;
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v3       #preserveIconSpacing:Z
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 876
    invoke-super {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->onDismiss()V

    .line 878
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    .line 881
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    invoke-static {v0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$302(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;)Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    .line 882
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 896
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    #getter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverFlowMenuListener:Lcom/android/internal/view/menu/ActionMenuPresenter$OverFlowMenuListener;
    invoke-static {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$400(Lcom/android/internal/view/menu/ActionMenuPresenter;)Lcom/android/internal/view/menu/ActionMenuPresenter$OverFlowMenuListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    #getter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverFlowMenuListener:Lcom/android/internal/view/menu/ActionMenuPresenter$OverFlowMenuListener;
    invoke-static {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$400(Lcom/android/internal/view/menu/ActionMenuPresenter;)Lcom/android/internal/view/menu/ActionMenuPresenter$OverFlowMenuListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverFlowMenuListener;->onOverFlowMenuItemClciked()V

    .line 900
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/internal/view/menu/MenuPopupHelper;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 901
    return-void
.end method
