.class public abstract Landroid/text/method/BaseKeyListener;
.super Landroid/text/method/MetaKeyKeyListener;
.source "BaseKeyListener.java"

# interfaces
.implements Landroid/text/method/KeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/BaseKeyListener$1;
    }
.end annotation


# static fields
.field static final OLD_SEL_START:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/BaseKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/text/method/MetaKeyKeyListener;-><init>()V

    .line 146
    return-void
.end method

.method private backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z
    .locals 5
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"
    .parameter "isForwardDelete"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 67
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    and-int/lit16 v4, v4, -0xf4

    invoke-static {v4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v2

    .line 73
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 74
    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {p4}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x2

    invoke-static {p2, v4}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v4

    if-ne v4, v3, :cond_4

    .line 79
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->deleteLine(Landroid/view/View;Landroid/text/Editable;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v3

    .line 80
    goto :goto_0

    .line 85
    :cond_4
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 87
    .local v1, start:I
    if-nez p5, :cond_5

    invoke-virtual {p4}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {p2, v3}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v4

    if-ne v4, v3, :cond_7

    .line 89
    :cond_5
    invoke-static {p2, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 91
    .local v0, end:I
    if-ne v1, v0, :cond_6

    .line 92
    invoke-static {p2, v1}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 97
    :cond_6
    :goto_1
    if-eq v1, v0, :cond_0

    .line 98
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {p2, v2, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    move v2, v3

    .line 99
    goto :goto_0

    .line 95
    .end local v0           #end:I
    :cond_7
    invoke-static {p2, v1}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .restart local v0       #end:I
    goto :goto_1
.end method

.method private deleteLine(Landroid/view/View;Landroid/text/Editable;)Z
    .locals 5
    .parameter "view"
    .parameter "content"

    .prologue
    .line 120
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 121
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 122
    .local v1, layout:Landroid/text/Layout;
    if-eqz v1, :cond_0

    .line 123
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 124
    .local v2, line:I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 125
    .local v3, start:I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 126
    .local v0, end:I
    if-eq v0, v3, :cond_0

    .line 127
    invoke-interface {p2, v3, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 128
    const/4 v4, 0x1

    .line 132
    .end local v0           #end:I
    .end local v1           #layout:Landroid/text/Layout;
    .end local v2           #line:I
    .end local v3           #start:I
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z
    .locals 4
    .parameter "view"
    .parameter "content"

    .prologue
    .line 105
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 106
    .local v1, selectionStart:I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 107
    .local v0, selectionEnd:I
    if-ge v0, v1, :cond_0

    .line 108
    move v2, v0

    .line 109
    .local v2, temp:I
    move v0, v1

    .line 110
    move v1, v2

    .line 112
    .end local v2           #temp:I
    :cond_0
    if-eq v1, v0, :cond_1

    .line 113
    invoke-interface {p2, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 114
    const/4 v3, 0x1

    .line 116
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I
    .locals 3
    .parameter "caps"
    .parameter "autoText"

    .prologue
    .line 136
    const/4 v0, 0x1

    .line 137
    .local v0, contentType:I
    sget-object v1, Landroid/text/method/BaseKeyListener$1;->$SwitchMap$android$text$method$TextKeyListener$Capitalize:[I

    invoke-virtual {p0}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 148
    :goto_0
    if-eqz p1, :cond_0

    .line 149
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 151
    :cond_0
    return v0

    .line 139
    :pswitch_0
    or-int/lit16 v0, v0, 0x1000

    .line 140
    goto :goto_0

    .line 142
    :pswitch_1
    or-int/lit16 v0, v0, 0x2000

    .line 143
    goto :goto_0

    .line 145
    :pswitch_2
    or-int/lit16 v0, v0, 0x4000

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 49
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 61
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 157
    sparse-switch p3, :sswitch_data_0

    .line 165
    const/4 v0, 0x0

    .line 169
    .local v0, handled:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 170
    invoke-static {p2}, Landroid/text/method/BaseKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 173
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/MetaKeyKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 159
    .end local v0           #handled:Z
    :sswitch_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 160
    .restart local v0       #handled:Z
    goto :goto_0

    .line 162
    .end local v0           #handled:Z
    :sswitch_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 163
    .restart local v0       #handled:Z
    goto :goto_0

    .line 157
    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_0
        0x70 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "view"
    .parameter "content"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 181
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-eqz v5, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v4

    .line 187
    :cond_1
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 188
    .local v1, selectionStart:I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 189
    .local v0, selectionEnd:I
    if-ge v0, v1, :cond_2

    .line 190
    move v2, v0

    .line 191
    .local v2, temp:I
    move v0, v1

    .line 192
    move v1, v2

    .line 195
    .end local v2           #temp:I
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, text:Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 200
    invoke-interface {p2, v1, v0, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 201
    const/4 v4, 0x1

    goto :goto_0
.end method
