.class public Landroid/media/RingtoneManager;
.super Ljava/lang/Object;
.source "RingtoneManager.java"


# static fields
.field public static final ACTION_RINGTONE_PICKER:Ljava/lang/String; = "android.intent.action.RINGTONE_PICKER"

.field private static final DRM_COLUMNS:[Ljava/lang/String; = null

.field public static final EXTRA_RINGTONE_DEFAULT_URI:Ljava/lang/String; = "android.intent.extra.ringtone.DEFAULT_URI"

.field public static final EXTRA_RINGTONE_EXISTING_URI:Ljava/lang/String; = "android.intent.extra.ringtone.EXISTING_URI"

.field public static final EXTRA_RINGTONE_INCLUDE_DRM:Ljava/lang/String; = "android.intent.extra.ringtone.INCLUDE_DRM"

.field public static final EXTRA_RINGTONE_PICKED_URI:Ljava/lang/String; = "android.intent.extra.ringtone.PICKED_URI"

.field public static final EXTRA_RINGTONE_SHOW_DEFAULT:Ljava/lang/String; = "android.intent.extra.ringtone.SHOW_DEFAULT"

.field public static final EXTRA_RINGTONE_SHOW_SILENT:Ljava/lang/String; = "android.intent.extra.ringtone.SHOW_SILENT"

.field public static final EXTRA_RINGTONE_SHOW_SIM_CARD_ID:Ljava/lang/String; = "android.intent.extra.ringtone.SIM_CARD_ID"

.field public static final EXTRA_RINGTONE_TITLE:Ljava/lang/String; = "android.intent.extra.ringtone.TITLE"

.field public static final EXTRA_RINGTONE_TYPE:Ljava/lang/String; = "android.intent.extra.ringtone.TYPE"

.field public static final ID_COLUMN_INDEX:I = 0x0

.field private static final INTERNAL_COLUMNS:[Ljava/lang/String; = null

.field private static final MEDIA_COLUMNS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "RingtoneManager"

.field public static final TITLE_COLUMN_INDEX:I = 0x1

.field public static final TYPE_ALARM:I = 0x4

.field public static final TYPE_ALL:I = 0x7

.field public static final TYPE_NOTIFICATION:I = 0x2

.field public static final TYPE_NOTIFICATION_2:I = 0x10

.field public static final TYPE_RINGTONE:I = 0x1

.field public static final TYPE_RINGTONE_2:I = 0x8

.field public static final URI_COLUMN_INDEX:I = 0x2


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private final mFilterColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIncludeDrm:Z

.field private mPreviousRingtone:Landroid/media/Ringtone;

.field private mStopPreviousRingtone:Z

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 216
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "title_key"

    aput-object v1, v0, v6

    sput-object v0, Landroid/media/RingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    .line 222
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "title AS title_key"

    aput-object v1, v0, v6

    sput-object v0, Landroid/media/RingtoneManager;->DRM_COLUMNS:[Ljava/lang/String;

    .line 228
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "title_key"

    aput-object v1, v0, v6

    sput-object v0, Landroid/media/RingtoneManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v1, 0x1

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput v1, p0, Landroid/media/RingtoneManager;->mType:I

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 265
    iput-boolean v1, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 277
    iput-object p1, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    .line 278
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    invoke-virtual {p0, v0}, Landroid/media/RingtoneManager;->setType(I)V

    .line 279
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput v1, p0, Landroid/media/RingtoneManager;->mType:I

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 265
    iput-boolean v1, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 289
    iput-object p1, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    .line 290
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    invoke-virtual {p0, v0}, Landroid/media/RingtoneManager;->setType(I)V

    .line 291
    return-void
.end method

.method private static checkDefaultRingtoneProperUri(Landroid/content/Context;I)V
    .locals 22
    .parameter "context"
    .parameter "type"

    .prologue
    .line 741
    invoke-static/range {p1 .. p1}, Landroid/media/RingtoneManager;->getDefaultSoundUriField(I)Ljava/lang/String;

    move-result-object v17

    .line 742
    .local v17, soundUri:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/media/RingtoneManager;->getDefaultSoundConstantPathField(I)Ljava/lang/String;

    move-result-object v16

    .line 744
    .local v16, soundPath:Ljava/lang/String;
    if-eqz v17, :cond_0

    if-nez v16, :cond_1

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 747
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 748
    .local v20, uriString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 750
    .local v15, pathString:Ljava/lang/String;
    if-eqz v20, :cond_0

    .line 752
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 753
    const-string v2, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkDefaultRingtoneProperUri : InternalMediaAudio uriString not null    type:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 756
    :cond_2
    if-nez v15, :cond_3

    .line 757
    const-string v2, "RingtoneManager"

    const-string v4, "checkDefaultRingtoneProperUri : Settings of SoundConstantPath null "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 760
    :cond_3
    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 761
    .local v3, uri:Landroid/net/Uri;
    const/4 v12, 0x0

    .line 762
    .local v12, cursor1:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 766
    .local v13, cursor2:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_data"

    aput-object v7, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 769
    if-eqz v12, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    .line 770
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 771
    const-string v2, "_data"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 774
    .local v18, str:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 775
    const-string v2, "RingtoneManager"

    const-string v4, "checkDefaultRingtoneProperUri : path and URI match to each other "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 811
    :cond_4
    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 780
    .end local v18           #str:Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v2, "RingtoneManager"

    const-string v4, "checkDefaultRingtoneProperUri : patch and URI DONT match"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 784
    .local v5, uriSearch2:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "_id"

    aput-object v7, v6, v2

    const-string v7, "_data=?"

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v15, v8, v2

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 787
    if-eqz v13, :cond_7

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_7

    .line 788
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 789
    const-string v2, "_id"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 792
    .local v10, _id:J
    const-string v2, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkDefaultRingtoneProperUri : we\'ve found same path and another index :  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 795
    .local v19, uriForDefaultRingtone:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Landroid/media/RingtoneManager;->getDefaultSoundUriField(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v4, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 798
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 799
    .local v21, values:Landroid/content/ContentValues;
    const-string v2, "is_ringtone"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 800
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 810
    .end local v10           #_id:J
    .end local v19           #uriForDefaultRingtone:Landroid/net/Uri;
    .end local v21           #values:Landroid/content/ContentValues;
    :goto_1
    if-eqz v12, :cond_6

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 811
    :cond_6
    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 804
    :cond_7
    :try_start_2
    const-string v2, "RingtoneManager"

    const-string v4, "checkDefaultRingtoneProperUri : we havn\'t found same path "

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 806
    .end local v5           #uriSearch2:Landroid/net/Uri;
    :catch_0
    move-exception v14

    .line 807
    .local v14, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkDefaultRingtoneProperUri : Excepiton : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const-string v2, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uriString : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", pathString : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 810
    if-eqz v12, :cond_8

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 811
    :cond_8
    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 810
    .end local v14           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v12, :cond_9

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 811
    :cond_9
    if-eqz v13, :cond_a

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v2
.end method

.method private static constructBooleanTrueWhereClause(Ljava/util/List;Z)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter "includeDrm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 582
    .local p0, columns:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const/4 v2, 0x0

    .line 616
    :goto_0
    return-object v2

    .line 584
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 586
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 587
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 590
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=1 or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 593
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 595
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 598
    :cond_2
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    .end local v0           #i:I
    :cond_3
    if-nez p1, :cond_5

    .line 604
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 605
    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    :cond_4
    const-string v2, "is_drm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    const-string v2, "=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    :cond_5
    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    const-string v2, "_size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    const-string v2, "!=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static convertSettingForType(II)I
    .locals 4
    .parameter "type"
    .parameter "simId"

    .prologue
    const/16 v1, 0x10

    const/16 v0, 0x8

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 933
    if-ne p1, v2, :cond_2

    .line 934
    if-ne p0, v2, :cond_1

    move p0, v0

    .line 949
    .end local p0
    :cond_0
    :goto_0
    return p0

    .line 936
    .restart local p0
    :cond_1
    if-ne p0, v3, :cond_0

    move p0, v1

    .line 937
    goto :goto_0

    .line 944
    :cond_2
    if-ne p0, v0, :cond_3

    move p0, v2

    .line 945
    goto :goto_0

    .line 946
    :cond_3
    if-ne p0, v1, :cond_0

    move p0, v3

    .line 947
    goto :goto_0
.end method

.method public static getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 6
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 690
    const-string v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getActualDefaultRingtoneUri  type    :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->checkDefaultRingtoneProperUri(Landroid/content/Context;I)V

    .line 697
    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, setting:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 700
    :cond_0
    :goto_0
    return-object v2

    .line 699
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 700
    .local v1, uriString:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method private static getDefaultSoundConstantPathField(I)Ljava/lang/String;
    .locals 3
    .parameter "type"

    .prologue
    .line 706
    const-string v0, "_CONSTANT_PATH"

    .line 707
    .local v0, constantPath:Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 719
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 709
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ringtone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 711
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ringtone_2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 713
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notification_sound"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 715
    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alarm_alert"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 717
    :sswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notification_sound_2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 707
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x8 -> :sswitch_1
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method private static getDefaultSoundUriField(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 724
    sparse-switch p0, :sswitch_data_0

    .line 736
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 726
    :sswitch_0
    const-string/jumbo v0, "ringtone"

    goto :goto_0

    .line 728
    :sswitch_1
    const-string/jumbo v0, "ringtone_2"

    goto :goto_0

    .line 730
    :sswitch_2
    const-string/jumbo v0, "notification_sound"

    goto :goto_0

    .line 732
    :sswitch_3
    const-string v0, "alarm_alert"

    goto :goto_0

    .line 734
    :sswitch_4
    const-string/jumbo v0, "notification_sound_2"

    goto :goto_0

    .line 724
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x8 -> :sswitch_1
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getDefaultType(Landroid/net/Uri;)I
    .locals 2
    .parameter "defaultRingtoneUri"

    .prologue
    const/4 v0, -0x1

    .line 974
    if-nez p0, :cond_1

    .line 989
    :cond_0
    :goto_0
    return v0

    .line 976
    :cond_1
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 977
    const/4 v0, 0x1

    goto :goto_0

    .line 978
    :cond_2
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 979
    const/4 v0, 0x2

    goto :goto_0

    .line 980
    :cond_3
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 981
    const/4 v0, 0x4

    goto :goto_0

    .line 983
    :cond_4
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 984
    const/16 v0, 0x8

    goto :goto_0

    .line 985
    :cond_5
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI_2:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 986
    const/16 v0, 0x10

    goto :goto_0
.end method

.method public static getDefaultUri(I)Landroid/net/Uri;
    .locals 1
    .parameter "type"

    .prologue
    .line 1003
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 1004
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 1016
    :goto_0
    return-object v0

    .line 1005
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 1006
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1007
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 1008
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1010
    :cond_2
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_3

    .line 1011
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    goto :goto_0

    .line 1012
    :cond_3
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_4

    .line 1013
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI_2:Landroid/net/Uri;

    goto :goto_0

    .line 1016
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDrmRingtones()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 535
    sget-object v1, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/media/RingtoneManager;->DRM_COLUMNS:[Ljava/lang/String;

    const-string/jumbo v5, "title"

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getInternalRingtones()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 527
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/media/RingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    iget-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    iget-boolean v3, p0, Landroid/media/RingtoneManager;->mIncludeDrm:Z

    invoke-static {v0, v3}, Landroid/media/RingtoneManager;->constructBooleanTrueWhereClause(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "title_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getMediaRingtones()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 542
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 544
    .local v6, status:Ljava/lang/String;
    const-string/jumbo v0, "mounted"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "mounted_ro"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/media/RingtoneManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    iget-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    iget-boolean v3, p0, Landroid/media/RingtoneManager;->mIncludeDrm:Z

    invoke-static {v0, v3}, Landroid/media/RingtoneManager;->constructBooleanTrueWhereClause(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "title_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    :cond_1
    return-object v4
.end method

.method public static getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;
    .locals 1
    .parameter "context"
    .parameter "ringtoneUri"

    .prologue
    .line 645
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/media/RingtoneManager;->getRingtoneBaidu(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;

    move-result-object v0

    return-object v0
.end method

.method private static getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;
    .locals 6
    .parameter "context"
    .parameter "ringtoneUri"
    .parameter "streamType"

    .prologue
    const/4 v2, 0x0

    .line 660
    :try_start_0
    new-instance v1, Landroid/media/Ringtone;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Landroid/media/Ringtone;-><init>(Landroid/content/Context;Z)V

    .line 661
    .local v1, r:Landroid/media/Ringtone;
    if-ltz p2, :cond_0

    .line 662
    invoke-virtual {v1, p2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 664
    :cond_0
    invoke-virtual {v1, p1}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 665
    const-string v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to setUri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", return null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 673
    .end local v1           #r:Landroid/media/Ringtone;
    :cond_1
    :goto_0
    return-object v1

    .line 669
    :catch_0
    move-exception v0

    .line 670
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to open ringtone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 673
    goto :goto_0
.end method

.method private static getSettingForType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 912
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 913
    const-string/jumbo v0, "ringtone"

    .line 925
    :goto_0
    return-object v0

    .line 914
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 915
    const-string/jumbo v0, "notification_sound"

    goto :goto_0

    .line 916
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 917
    const-string v0, "alarm_alert"

    goto :goto_0

    .line 919
    :cond_2
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_3

    .line 920
    const-string/jumbo v0, "ringtone_2"

    goto :goto_0

    .line 921
    :cond_3
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_4

    .line 922
    const-string/jumbo v0, "notification_sound_2"

    goto :goto_0

    .line 925
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 445
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getValidRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .parameter "context"

    .prologue
    .line 496
    new-instance v0, Landroid/media/RingtoneManager;

    invoke-direct {v0, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 498
    .local v0, rm:Landroid/media/RingtoneManager;
    invoke-direct {v0}, Landroid/media/RingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 500
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 501
    invoke-direct {v0}, Landroid/media/RingtoneManager;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 504
    :cond_0
    if-nez v1, :cond_1

    .line 505
    invoke-direct {v0}, Landroid/media/RingtoneManager;->getDrmRingtones()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 508
    :cond_1
    return-object v1
.end method

.method private static getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 2
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 512
    if-eqz p1, :cond_1

    .line 513
    const/4 v0, 0x0

    .line 515
    .local v0, uri:Landroid/net/Uri;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    invoke-static {p1}, Landroid/media/RingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    .line 518
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 522
    .end local v0           #uri:Landroid/net/Uri;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDefault(Landroid/net/Uri;)Z
    .locals 2
    .parameter "ringtoneUri"

    .prologue
    .line 961
    invoke-static {p0}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 624
    iget-object v0, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 627
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public static setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 16
    .parameter "context"
    .parameter "type"
    .parameter "ringtoneUri"

    .prologue
    .line 830
    invoke-static/range {p1 .. p1}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v13

    .line 831
    .local v13, setting:Ljava/lang/String;
    if-nez v13, :cond_1

    .line 909
    :cond_0
    :goto_0
    return-void

    .line 833
    :cond_1
    const-string v0, "CTC"

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CHM"

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CHC"

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 836
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sound_profile_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 839
    .local v12, profileMode:I
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_4

    .line 840
    const-string v6, "com.android.settings"

    .line 841
    .local v6, AUTHORITY:Ljava/lang/String;
    const-string/jumbo v8, "profile"

    .line 842
    .local v8, PROFILE_TABLE:Ljava/lang/String;
    const-string v0, "content://com.android.settings/profile"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 843
    .local v7, PROFILE_CONTENT_URI:Landroid/net/Uri;
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 845
    .local v15, values:Landroid/content/ContentValues;
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_6

    .line 846
    const-string/jumbo v1, "profile_ringtone"

    if-eqz p2, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v15, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    :cond_3
    :goto_2
    add-int/lit8 v0, v12, 0x1

    int-to-long v0, v0

    invoke-static {v7, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 853
    .local v9, _uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v9, v15, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 858
    .end local v6           #AUTHORITY:Ljava/lang/String;
    .end local v7           #PROFILE_CONTENT_URI:Landroid/net/Uri;
    .end local v8           #PROFILE_TABLE:Ljava/lang/String;
    .end local v9           #_uri:Landroid/net/Uri;
    .end local v12           #profileMode:I
    .end local v15           #values:Landroid/content/ContentValues;
    :cond_4
    if-nez p2, :cond_a

    .line 859
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v13, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 846
    .restart local v6       #AUTHORITY:Ljava/lang/String;
    .restart local v7       #PROFILE_CONTENT_URI:Landroid/net/Uri;
    .restart local v8       #PROFILE_TABLE:Ljava/lang/String;
    .restart local v12       #profileMode:I
    .restart local v15       #values:Landroid/content/ContentValues;
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 847
    :cond_6
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_8

    .line 848
    const-string/jumbo v1, "profile_gsm_ringtone"

    if-eqz p2, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v15, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    .line 849
    :cond_8
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3

    .line 850
    const-string/jumbo v1, "profile_notification_tone"

    if-eqz p2, :cond_9

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v15, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    goto :goto_4

    .line 865
    .end local v6           #AUTHORITY:Ljava/lang/String;
    .end local v7           #PROFILE_CONTENT_URI:Landroid/net/Uri;
    .end local v8           #PROFILE_TABLE:Ljava/lang/String;
    .end local v12           #profileMode:I
    .end local v15           #values:Landroid/content/ContentValues;
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v13, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 874
    const/4 v10, 0x0

    .line 875
    .local v10, cursor:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 877
    .local v14, val:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 879
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Landroid/media/RingtoneManager;->getDefaultSoundConstantPathField(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 880
    const-string v0, "RingtoneManager"

    const-string v1, "RingtoneConstantPath: for internal is null..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 884
    :cond_c
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 887
    if-eqz v10, :cond_d

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 888
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 889
    const-string v0, "_data"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 892
    const-string v0, "RingtoneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setActualDefaultRingtoneUri: ringtoneConstantPathFieldName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Landroid/media/RingtoneManager;->getDefaultSoundConstantPathField(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v14}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    :cond_d
    if-eqz v10, :cond_0

    .line 901
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 897
    :catch_0
    move-exception v11

    .line 898
    .local v11, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "RingtoneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setActualDefaultRingtoneUri : Excepiton : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 900
    if-eqz v10, :cond_0

    .line 901
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 900
    .end local v11           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_e

    .line 901
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v0
.end method

.method private setFilterColumnsList(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 554
    iget-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 555
    .local v0, columns:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 558
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_1

    .line 559
    :cond_0
    const-string v1, "is_ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    :cond_1
    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_2

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_3

    .line 564
    :cond_2
    const-string v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 568
    const-string v1, "is_alarm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    :cond_4
    return-void
.end method


# virtual methods
.method public getCursor()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 400
    iget-object v3, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->requery()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 401
    iget-object v3, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    .line 408
    :goto_0
    return-object v3

    .line 404
    :cond_0
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v1

    .line 405
    .local v1, internalCursor:Landroid/database/Cursor;
    iget-boolean v3, p0, Landroid/media/RingtoneManager;->mIncludeDrm:Z

    if-eqz v3, :cond_1

    invoke-direct {p0}, Landroid/media/RingtoneManager;->getDrmRingtones()Landroid/database/Cursor;

    move-result-object v0

    .line 406
    .local v0, drmCursor:Landroid/database/Cursor;
    :goto_1
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v2

    .line 408
    .local v2, mediaCursor:Landroid/database/Cursor;
    new-instance v3, Lcom/android/internal/database/SortCursor;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/database/Cursor;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const-string/jumbo v5, "title_key"

    invoke-direct {v3, v4, v5}, Lcom/android/internal/database/SortCursor;-><init>([Landroid/database/Cursor;Ljava/lang/String;)V

    iput-object v3, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 405
    .end local v0           #drmCursor:Landroid/database/Cursor;
    .end local v2           #mediaCursor:Landroid/database/Cursor;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getIncludeDrm()Z
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Landroid/media/RingtoneManager;->mIncludeDrm:Z

    return v0
.end method

.method public getRingtone(I)Landroid/media/Ringtone;
    .locals 3
    .parameter "position"

    .prologue
    .line 420
    iget-boolean v0, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 424
    :cond_0
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/media/RingtoneManager;->getRingtoneBaidu(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    .line 425
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method public getRingtonePosition(Landroid/net/Uri;)I
    .locals 9
    .parameter "ringtoneUri"

    .prologue
    const/4 v6, -0x1

    .line 457
    if-nez p1, :cond_1

    move v3, v6

    .line 485
    :cond_0
    :goto_0
    return v3

    .line 459
    :cond_1
    invoke-virtual {p0}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 460
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 462
    .local v2, cursorCount:I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_2

    move v3, v6

    .line 463
    goto :goto_0

    .line 467
    :cond_2
    const/4 v0, 0x0

    .line 468
    .local v0, currentUri:Landroid/net/Uri;
    const/4 v4, 0x0

    .line 469
    .local v4, previousUriString:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_5

    .line 470
    const/4 v7, 0x2

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 471
    .local v5, uriString:Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 472
    :cond_3
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 475
    :cond_4
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 480
    const/4 v7, 0x1

    invoke-interface {v1, v7}, Landroid/database/Cursor;->move(I)Z

    .line 482
    move-object v4, v5

    .line 469
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v5           #uriString:Ljava/lang/String;
    :cond_5
    move v3, v6

    .line 485
    goto :goto_0
.end method

.method public getRingtoneUri(I)Landroid/net/Uri;
    .locals 1
    .parameter "position"

    .prologue
    .line 437
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 438
    :cond_0
    const/4 v0, 0x0

    .line 441
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Landroid/media/RingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getStopPreviousRingtone()Z
    .locals 1

    .prologue
    .line 351
    iget-boolean v0, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    return v0
.end method

.method public inferStreamType()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    sparse-switch v0, :sswitch_data_0

    .line 329
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 322
    :sswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 326
    :sswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 319
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public setIncludeDrm(Z)V
    .locals 0
    .parameter "includeDrm"

    .prologue
    .line 379
    iput-boolean p1, p0, Landroid/media/RingtoneManager;->mIncludeDrm:Z

    .line 380
    return-void
.end method

.method public setStopPreviousRingtone(Z)V
    .locals 0
    .parameter "stopPreviousRingtone"

    .prologue
    .line 344
    iput-boolean p1, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 345
    return-void
.end method

.method public setType(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 303
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 304
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Setting filter columns should be done before querying for ringtones."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_0
    iput p1, p0, Landroid/media/RingtoneManager;->mType:I

    .line 309
    invoke-direct {p0, p1}, Landroid/media/RingtoneManager;->setFilterColumnsList(I)V

    .line 310
    return-void
.end method

.method public stopPreviousRingtone()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 361
    :cond_0
    return-void
.end method

.method private static getRingtoneBaidu(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;
    .locals 11
    .parameter "context"
    .parameter "ringtoneUri"
    .parameter "streamType"

    .prologue
    const/4 v0, 0x1

    new-instance v9, Landroid/media/Ringtone;

    invoke-direct {v9, p0, v0}, Landroid/media/Ringtone;-><init>(Landroid/content/Context;Z)V

    .local v9, r:Landroid/media/Ringtone;
    if-ltz p2, :cond_0

    invoke-virtual {v9, p2}, Landroid/media/Ringtone;->setStreamType(I)V

    :cond_0
    const/4 v6, 0x0

    .local v6, cursor:Landroid/database/Cursor;
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .local v2, MEDIA_COLUMNS_CHECK:[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_3
    :goto_0
    :try_start_1
    invoke-virtual {v9, p1}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v9           #r:Landroid/media/Ringtone;
    :goto_1
    return-object v9

    .restart local v9       #r:Landroid/media/Ringtone;
    :catch_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_4
    throw v0

    :catch_1
    move-exception v8

    .local v8, ex:Ljava/lang/Exception;
    const-string v0, "RingtoneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open ringtone "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :try_start_2
    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    new-instance v10, Landroid/media/Ringtone;

    const/4 v0, 0x1

    invoke-direct {v10, p0, v0}, Landroid/media/Ringtone;-><init>(Landroid/content/Context;Z)V

    .local v10, r2:Landroid/media/Ringtone;
    if-ltz p2, :cond_5

    invoke-virtual {v10, p2}, Landroid/media/Ringtone;->setStreamType(I)V

    :cond_5
    invoke-virtual {v10, p1}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v9, v10

    goto :goto_1

    .end local v10           #r2:Landroid/media/Ringtone;
    :catch_2
    move-exception v7

    .local v7, e:Ljava/lang/Exception;
    const-string v0, "RingtoneManager"

    const-string v1, "Failed to fall back to default ringtone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
