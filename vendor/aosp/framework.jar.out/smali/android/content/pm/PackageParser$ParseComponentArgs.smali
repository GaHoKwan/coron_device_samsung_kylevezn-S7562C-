.class Landroid/content/pm/PackageParser$ParseComponentArgs;
.super Landroid/content/pm/PackageParser$ParsePackageItemArgs;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParseComponentArgs"
.end annotation


# instance fields
.field final descriptionRes:I

.field final enabledRes:I

.field flags:I

.field final processRes:I

.field final sepProcesses:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIII[Ljava/lang/String;III)V
    .locals 0
    .parameter "_owner"
    .parameter "_outError"
    .parameter "_nameRes"
    .parameter "_labelRes"
    .parameter "_iconRes"
    .parameter "_logoRes"
    .parameter "_sepProcesses"
    .parameter "_processRes"
    .parameter "_descriptionRes"
    .parameter "_enabledRes"

    .prologue
    .line 205
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser$ParsePackageItemArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIII)V

    .line 206
    iput-object p7, p0, Landroid/content/pm/PackageParser$ParseComponentArgs;->sepProcesses:[Ljava/lang/String;

    .line 207
    iput p8, p0, Landroid/content/pm/PackageParser$ParseComponentArgs;->processRes:I

    .line 208
    iput p9, p0, Landroid/content/pm/PackageParser$ParseComponentArgs;->descriptionRes:I

    .line 209
    iput p10, p0, Landroid/content/pm/PackageParser$ParseComponentArgs;->enabledRes:I

    .line 210
    return-void
.end method
