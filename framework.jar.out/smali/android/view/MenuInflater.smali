.class public Landroid/view/MenuInflater;
.super Ljava/lang/Object;
.source "MenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MenuInflater$MenuState;,
        Landroid/view/MenuInflater$InflatedOnMenuItemClickListener;
    }
.end annotation


# static fields
.field private static final ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "MenuInflater"

.field private static final NO_ID:I = 0x0

.field private static final XML_GROUP:Ljava/lang/String; = "group"

.field private static final XML_ITEM:Ljava/lang/String; = "item"

.field private static final XML_MENU:Ljava/lang/String; = "menu"


# instance fields
.field private final mActionProviderConstructorArguments:[Ljava/lang/Object;

.field private final mActionViewConstructorArguments:[Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mRealOwner:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/MenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 62
    sget-object v0, Landroid/view/MenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    sput-object v0, Landroid/view/MenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    .line 78
    iput-object p1, p0, Landroid/view/MenuInflater;->mRealOwner:Ljava/lang/Object;

    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/MenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "realOwner"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Landroid/view/MenuInflater;->mRealOwner:Ljava/lang/Object;

    .line 92
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/MenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    .line 94
    return-void
.end method

.method static synthetic access$100(Landroid/view/MenuInflater;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Landroid/view/MenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/MenuInflater;)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/view/MenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Landroid/view/MenuInflater;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/view/MenuInflater;->mRealOwner:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Landroid/view/MenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$600(Landroid/view/MenuInflater;)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    return-object v0
.end method

.method private parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .locals 10
    .parameter "parser"
    .parameter "attrs"
    .parameter "menu"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v2, Landroid/view/MenuInflater$MenuState;

    invoke-direct {v2, p0, p3}, Landroid/view/MenuInflater$MenuState;-><init>(Landroid/view/MenuInflater;Landroid/view/Menu;)V

    .line 129
    .local v2, menuState:Landroid/view/MenuInflater$MenuState;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 131
    .local v0, eventType:I
    const/4 v1, 0x0

    .line 132
    .local v1, lookingForEndOfUnknownTag:Z
    const/4 v6, 0x0

    .line 136
    .local v6, unknownTagName:Ljava/lang/String;
    :cond_0
    const/4 v7, 0x2

    if-ne v0, v7, :cond_3

    .line 137
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 138
    .local v5, tagName:Ljava/lang/String;
    const-string/jumbo v7, "menu"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 140
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 149
    .end local v5           #tagName:Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    .line 150
    .local v3, reachedEndOfMenu:Z
    :goto_1
    if-nez v3, :cond_b

    .line 151
    packed-switch v0, :pswitch_data_0

    .line 201
    :cond_1
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_1

    .line 144
    .end local v3           #reachedEndOfMenu:Z
    .restart local v5       #tagName:Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expecting menu, got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 146
    .end local v5           #tagName:Ljava/lang/String;
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 147
    const/4 v7, 0x1

    if-ne v0, v7, :cond_0

    goto :goto_0

    .line 153
    .restart local v3       #reachedEndOfMenu:Z
    :pswitch_0
    if-nez v1, :cond_1

    .line 157
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 158
    .restart local v5       #tagName:Ljava/lang/String;
    const-string v7, "group"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 159
    invoke-virtual {v2, p2}, Landroid/view/MenuInflater$MenuState;->readGroup(Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 160
    :cond_4
    const-string v7, "item"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 161
    invoke-virtual {v2, p2}, Landroid/view/MenuInflater$MenuState;->readItem(Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 162
    :cond_5
    const-string/jumbo v7, "menu"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 164
    invoke-virtual {v2}, Landroid/view/MenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;

    move-result-object v4

    .line 167
    .local v4, subMenu:Landroid/view/SubMenu;
    invoke-direct {p0, p1, p2, v4}, Landroid/view/MenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    goto :goto_2

    .line 169
    .end local v4           #subMenu:Landroid/view/SubMenu;
    :cond_6
    const/4 v1, 0x1

    .line 170
    move-object v6, v5

    .line 172
    goto :goto_2

    .line 175
    .end local v5           #tagName:Ljava/lang/String;
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 176
    .restart local v5       #tagName:Ljava/lang/String;
    if-eqz v1, :cond_7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 177
    const/4 v1, 0x0

    .line 178
    const/4 v6, 0x0

    goto :goto_2

    .line 179
    :cond_7
    const-string v7, "group"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 180
    invoke-virtual {v2}, Landroid/view/MenuInflater$MenuState;->resetGroup()V

    goto :goto_2

    .line 181
    :cond_8
    const-string v7, "item"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 184
    invoke-virtual {v2}, Landroid/view/MenuInflater$MenuState;->hasAddedItem()Z

    move-result v7

    if-nez v7, :cond_1

    .line 185
    #getter for: Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;
    invoke-static {v2}, Landroid/view/MenuInflater$MenuState;->access$000(Landroid/view/MenuInflater$MenuState;)Landroid/view/ActionProvider;

    move-result-object v7

    if-eqz v7, :cond_9

    #getter for: Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;
    invoke-static {v2}, Landroid/view/MenuInflater$MenuState;->access$000(Landroid/view/MenuInflater$MenuState;)Landroid/view/ActionProvider;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 187
    invoke-virtual {v2}, Landroid/view/MenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;

    goto/16 :goto_2

    .line 189
    :cond_9
    invoke-virtual {v2}, Landroid/view/MenuInflater$MenuState;->addItem()V

    goto/16 :goto_2

    .line 192
    :cond_a
    const-string/jumbo v7, "menu"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 193
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 198
    .end local v5           #tagName:Ljava/lang/String;
    :pswitch_2
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Unexpected end of document"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 203
    :cond_b
    return-void

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public inflate(ILandroid/view/Menu;)V
    .locals 5
    .parameter "menuRes"
    .parameter "menu"

    .prologue
    .line 106
    const/4 v2, 0x0

    .line 108
    .local v2, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v3, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 109
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 111
    .local v0, attrs:Landroid/util/AttributeSet;
    invoke-direct {p0, v2, v0, p2}, Landroid/view/MenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 119
    :cond_0
    return-void

    .line 112
    .end local v0           #attrs:Landroid/util/AttributeSet;
    :catch_0
    move-exception v1

    .line 113
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v3, Landroid/view/InflateException;

    const-string v4, "Error inflating menu XML"

    invoke-direct {v3, v4, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw v3

    .line 114
    :catch_1
    move-exception v1

    .line 115
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    new-instance v3, Landroid/view/InflateException;

    const-string v4, "Error inflating menu XML"

    invoke-direct {v3, v4, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
