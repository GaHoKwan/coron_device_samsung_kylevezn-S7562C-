.class public final enum Landroid/text/TextUtils$TruncateAt;
.super Ljava/lang/Enum;
.source "TextUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TruncateAt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/text/TextUtils$TruncateAt;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/text/TextUtils$TruncateAt;

.field public static final enum END:Landroid/text/TextUtils$TruncateAt;

.field public static final enum END_SMALL:Landroid/text/TextUtils$TruncateAt;

.field public static final enum MARQUEE:Landroid/text/TextUtils$TruncateAt;

.field public static final enum MIDDLE:Landroid/text/TextUtils$TruncateAt;

.field public static final enum START:Landroid/text/TextUtils$TruncateAt;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1001
    new-instance v0, Landroid/text/TextUtils$TruncateAt;

    const-string v1, "START"

    invoke-direct {v0, v1, v2}, Landroid/text/TextUtils$TruncateAt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    .line 1002
    new-instance v0, Landroid/text/TextUtils$TruncateAt;

    const-string v1, "MIDDLE"

    invoke-direct {v0, v1, v3}, Landroid/text/TextUtils$TruncateAt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    .line 1003
    new-instance v0, Landroid/text/TextUtils$TruncateAt;

    const-string v1, "END"

    invoke-direct {v0, v1, v4}, Landroid/text/TextUtils$TruncateAt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 1004
    new-instance v0, Landroid/text/TextUtils$TruncateAt;

    const-string v1, "MARQUEE"

    invoke-direct {v0, v1, v5}, Landroid/text/TextUtils$TruncateAt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 1008
    new-instance v0, Landroid/text/TextUtils$TruncateAt;

    const-string v1, "END_SMALL"

    invoke-direct {v0, v1, v6}, Landroid/text/TextUtils$TruncateAt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    .line 1000
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    aput-object v1, v0, v2

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    aput-object v1, v0, v3

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    aput-object v1, v0, v4

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    aput-object v1, v0, v5

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    aput-object v1, v0, v6

    sput-object v0, Landroid/text/TextUtils$TruncateAt;->$VALUES:[Landroid/text/TextUtils$TruncateAt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1000
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;
    .locals 1
    .parameter "name"

    .prologue
    .line 1000
    const-class v0, Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public static values()[Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .prologue
    .line 1000
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->$VALUES:[Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method
