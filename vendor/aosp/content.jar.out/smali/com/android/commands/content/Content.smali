.class public Lcom/android/commands/content/Content;
.super Ljava/lang/Object;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/content/Content$UpdateCommand;,
        Lcom/android/commands/content/Content$QueryCommand;,
        Lcom/android/commands/content/Content$DeleteCommand;,
        Lcom/android/commands/content/Content$InsertCommand;,
        Lcom/android/commands/content/Content$Command;,
        Lcom/android/commands/content/Content$Tokenizer;,
        Lcom/android/commands/content/Content$Parser;
    }
.end annotation


# static fields
.field private static final USAGE:Ljava/lang/String; = "usage: adb shell content [subcommand] [options]\n\nusage: adb shell content insert --uri <URI> --bind <BINDING> [--bind <BINDING>...]\n  <URI> a content provider URI.\n  <BINDING> binds a typed value to a column and is formatted:\n  <COLUMN_NAME>:<TYPE>:<COLUMN_VALUE> where:\n  <TYPE> specifies data type such as:\n  b - boolean, s - string, i - integer, l - long, f - float, d - double\n  Note: Omit the value for passing an empty string, e.g column:s:\n  Example:\n  # Add \"new_setting\" secure setting with value \"new_value\".\n  adb shell content insert --uri content://settings/secure --bind name:s:new_setting --bind value:s:new_value\n\nusage: adb shell content update --uri <URI> [--where <WHERE>]\n  <WHERE> is a SQL style where clause in quotes (You have to escape single quotes - see example below).\n  Example:\n  # Change \"new_setting\" secure setting to \"newer_value\".\n  adb shell content update --uri content://settings/secure --bind value:s:newer_value --where \"name=\'new_setting\'\"\n\nusage: adb shell content delete --uri <URI> --bind <BINDING> [--bind <BINDING>...] [--where <WHERE>]\n  Example:\n  # Remove \"new_setting\" secure setting.\n  adb shell content delete --uri content://settings/secure --where \"name=\'new_setting\'\"\n\nusage: adb shell content query --uri <URI> [--projection <PROJECTION>] [--where <WHERE>] [--sort <SORT_ORDER>]\n  <PROJECTION> is a list of colon separated column names and is formatted:\n  <COLUMN_NAME>[:<COLUMN_NAME>...]\n  <SORT_OREDER> is the order in which rows in the result should be sorted.\n  Example:\n  # Select \"name\" and \"value\" columns from secure settings where \"name\" is equal to \"new_setting\" and sort the result by name in ascending order.\n  adb shell content query --uri content://settings/secure --projection name:value --where \"name=\'new_setting\'\" --sort \"name ASC\"\n\n"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 441
    new-instance v1, Lcom/android/commands/content/Content$Parser;

    invoke-direct {v1, p0}, Lcom/android/commands/content/Content$Parser;-><init>([Ljava/lang/String;)V

    .line 442
    .local v1, parser:Lcom/android/commands/content/Content$Parser;
    invoke-virtual {v1}, Lcom/android/commands/content/Content$Parser;->parseCommand()Lcom/android/commands/content/Content$Command;

    move-result-object v0

    .line 443
    .local v0, command:Lcom/android/commands/content/Content$Command;
    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {v0}, Lcom/android/commands/content/Content$Command;->execute()V

    .line 446
    :cond_0
    return-void
.end method
