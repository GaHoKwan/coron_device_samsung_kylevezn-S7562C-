.class public abstract Landroid/preference/DialogPreference;
.super Landroid/preference/Preference;
.source "DialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/PreferenceManager$OnActivityDestroyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/DialogPreference$SavedState;
    }
.end annotation


# instance fields
.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogIcon:Landroid/graphics/drawable/Drawable;

.field private mDialogLayoutResId:I

.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonText:Ljava/lang/CharSequence;

.field private mWhichButtonClicked:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 101
    const v0, 0x1010091

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    sget-object v2, Lcom/android/internal/R$styleable;->DialogPreference:[I

    invoke-virtual {p1, p2, v2, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 77
    iget-object v2, p0, Landroid/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    if-nez v2, :cond_2

    .line 80
    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 84
    :cond_0
    :goto_0
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 85
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 86
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 87
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 88
    const/4 v2, 0x5

    iget v3, p0, Landroid/preference/DialogPreference;->mDialogLayoutResId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/preference/DialogPreference;->mDialogLayoutResId:I

    .line 90
    sget-boolean v2, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v2, :cond_1

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 92
    .local v1, res:Landroid/content/res/Resources;
    iget-object v2, p0, Landroid/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->addPreferenceString(Ljava/lang/CharSequence;I)V

    .line 93
    iget-object v2, p0, Landroid/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->addPreferenceString(Ljava/lang/CharSequence;I)V

    .line 94
    iget-object v2, p0, Landroid/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->addPreferenceString(Ljava/lang/CharSequence;I)V

    .line 96
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    return-void

    .line 81
    :cond_2
    sget-boolean v2, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v2, :cond_0

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->addPreferenceString(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 336
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 339
    .local v0, window:Landroid/view/Window;
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 340
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 344
    :goto_0
    return-void

    .line 342
    :cond_0
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getDialogIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDialogLayoutResource()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Landroid/preference/DialogPreference;->mDialogLayoutResId:I

    return v0
.end method

.method public getDialogMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDialogTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Landroid/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPositiveButtonText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Landroid/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected needInputMethod()Z
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityDestroy()V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 371
    const v3, 0x102000b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 373
    .local v0, dialogMessageView:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 374
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v1

    .line 375
    .local v1, message:Ljava/lang/CharSequence;
    const/16 v2, 0x8

    .line 377
    .local v2, newVisibility:I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 378
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 379
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    :cond_0
    const/4 v2, 0x0

    .line 385
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 386
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 389
    .end local v1           #message:Ljava/lang/CharSequence;
    .end local v2           #newVisibility:I
    :cond_2
    return-void
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 277
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 392
    iput p2, p0, Landroid/preference/DialogPreference;->mWhichButtonClicked:I

    .line 393
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 355
    iget v2, p0, Landroid/preference/DialogPreference;->mDialogLayoutResId:I

    if-nez v2, :cond_0

    .line 360
    :goto_0
    return-object v1

    .line 359
    :cond_0
    iget-object v2, p0, Landroid/preference/DialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 360
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v2, p0, Landroid/preference/DialogPreference;->mDialogLayoutResId:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 0
    .parameter "positiveResult"

    .prologue
    .line 411
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 397
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->unregisterOnActivityDestroyListener(Landroid/preference/PreferenceManager$OnActivityDestroyListener;)V

    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    .line 400
    iget v0, p0, Landroid/preference/DialogPreference;->mWhichButtonClicked:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 401
    return-void

    .line 400
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .parameter "builder"

    .prologue
    .line 271
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 449
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/preference/DialogPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 451
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 460
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 455
    check-cast v0, Landroid/preference/DialogPreference$SavedState;

    .line 456
    .local v0, myState:Landroid/preference/DialogPreference$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 457
    iget-boolean v1, v0, Landroid/preference/DialogPreference$SavedState;->isDialogShowing:Z

    if-eqz v1, :cond_1

    .line 458
    iget-object v1, v0, Landroid/preference/DialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 436
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 437
    .local v1, superState:Landroid/os/Parcelable;
    iget-object v2, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 444
    :goto_0
    return-object v0

    .line 441
    :cond_1
    new-instance v0, Landroid/preference/DialogPreference$SavedState;

    invoke-direct {v0, v1}, Landroid/preference/DialogPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 442
    .local v0, myState:Landroid/preference/DialogPreference$SavedState;
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/preference/DialogPreference$SavedState;->isDialogShowing:Z

    .line 443
    iget-object v2, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Landroid/preference/DialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public setDialogIcon(I)V
    .locals 1
    .parameter "dialogIconRes"

    .prologue
    .line 175
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 176
    return-void
.end method

.method public setDialogIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dialogIcon"

    .prologue
    .line 165
    iput-object p1, p0, Landroid/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 166
    return-void
.end method

.method public setDialogLayoutResource(I)V
    .locals 0
    .parameter "dialogLayoutResId"

    .prologue
    .line 250
    iput p1, p0, Landroid/preference/DialogPreference;->mDialogLayoutResId:I

    .line 251
    return-void
.end method

.method public setDialogMessage(I)V
    .locals 1
    .parameter "dialogMessageResId"

    .prologue
    .line 148
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 149
    return-void
.end method

.method public setDialogMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "dialogMessage"

    .prologue
    .line 140
    iput-object p1, p0, Landroid/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 141
    return-void
.end method

.method public setDialogTitle(I)V
    .locals 1
    .parameter "dialogTitleResId"

    .prologue
    .line 118
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 119
    return-void
.end method

.method public setDialogTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "dialogTitle"

    .prologue
    .line 110
    iput-object p1, p0, Landroid/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 111
    return-void
.end method

.method public setNegativeButtonText(I)V
    .locals 1
    .parameter "negativeButtonTextResId"

    .prologue
    .line 229
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 230
    return-void
.end method

.method public setNegativeButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "negativeButtonText"

    .prologue
    .line 221
    iput-object p1, p0, Landroid/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 222
    return-void
.end method

.method public setPositiveButtonText(I)V
    .locals 1
    .parameter "positiveButtonTextResId"

    .prologue
    .line 201
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    .line 202
    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "positiveButtonText"

    .prologue
    .line 193
    iput-object p1, p0, Landroid/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 194
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 288
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 290
    .local v1, context:Landroid/content/Context;
    const/4 v3, -0x2

    iput v3, p0, Landroid/preference/DialogPreference;->mWhichButtonClicked:I

    .line 292
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Landroid/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Landroid/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Landroid/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Landroid/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iput-object v3, p0, Landroid/preference/DialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 298
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    .line 299
    .local v0, contentView:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 300
    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 301
    iget-object v3, p0, Landroid/preference/DialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 306
    :goto_0
    iget-object v3, p0, Landroid/preference/DialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v3}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 308
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceManager;->registerOnActivityDestroyListener(Landroid/preference/PreferenceManager$OnActivityDestroyListener;)V

    .line 311
    iget-object v3, p0, Landroid/preference/DialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    .line 312
    .local v2, dialog:Landroid/app/Dialog;
    if-eqz p1, :cond_0

    .line 313
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 315
    :cond_0
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->needInputMethod()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 316
    invoke-direct {p0, v2}, Landroid/preference/DialogPreference;->requestInputMethod(Landroid/app/Dialog;)V

    .line 318
    :cond_1
    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 319
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 320
    return-void

    .line 303
    .end local v2           #dialog:Landroid/app/Dialog;
    :cond_2
    iget-object v3, p0, Landroid/preference/DialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Landroid/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
