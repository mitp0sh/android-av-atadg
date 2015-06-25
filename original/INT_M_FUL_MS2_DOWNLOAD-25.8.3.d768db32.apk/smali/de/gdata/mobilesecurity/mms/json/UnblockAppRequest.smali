.class public Lde/gdata/mobilesecurity/mms/json/UnblockAppRequest;
.super Lde/gdata/mobilesecurity/mms/json/base/requestunblockapp/PutRequest;
.source "SourceFile"


# static fields
.field private static volatile a:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/UnblockAppRequest;->a:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 21

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Lde/gdata/mobilesecurity/mms/json/base/requestunblockapp/PutRequest;-><init>()V

    .line 49
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 50
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 53
    const/4 v4, 0x2

    new-array v9, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "android.intent.category.LAUNCHER"

    aput-object v5, v9, v4

    const/4 v4, 0x1

    const-string v5, "android.intent.category.HOME"

    aput-object v5, v9, v4

    .line 55
    const-string v4, "SELECT profile, identifier, queued FROM mdmrequests WHERE type = \'2\' AND status = 4 AND action = \'63\';"

    .line 58
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 60
    if-eqz v10, :cond_7

    .line 61
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 62
    const/4 v4, 0x0

    .line 63
    const-string v3, "profile"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 64
    const-string v5, "identifier"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 65
    if-nez v3, :cond_4

    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 67
    :try_start_0
    const-string v3, "queued"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lde/gdata/mobilesecurity/util/MyDate;->fromString(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v6, v3

    .line 75
    :goto_2
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v8, v5, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 77
    array-length v13, v9

    const/4 v3, 0x0

    move v5, v3

    :goto_3
    if-ge v5, v13, :cond_0

    aget-object v3, v9, v5

    .line 78
    new-instance v4, Landroid/content/Intent;

    const-string v14, "android.intent.action.MAIN"

    const/4 v15, 0x0

    invoke-direct {v4, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 79
    iget-object v4, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const/4 v4, 0x0

    invoke-virtual {v8, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 82
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 83
    invoke-virtual {v3, v8}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 84
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 85
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    const/16 v16, 0x20

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    const/16 v16, 0x20

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    .line 86
    :cond_2
    const/16 v15, 0x20

    const/16 v16, 0x20

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v4, v15, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 87
    :cond_3
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 88
    sget-object v16, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v17, 0x64

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1, v15}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 89
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 90
    const/4 v15, 0x2

    invoke-static {v4, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v15

    .line 92
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x40

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v16, v0

    .line 95
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v4, 0x0

    :goto_4
    move/from16 v0, v17

    if-ge v4, v0, :cond_1

    aget-object v18, v16, v4

    .line 96
    new-instance v19, Lde/gdata/mobilesecurity/mms/json/base/requestunblockapp/Item;

    invoke-direct/range {v19 .. v19}, Lde/gdata/mobilesecurity/mms/json/base/requestunblockapp/Item;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lde/gdata/mobilesecurity/mms/json/base/requestunblockapp/Item;->withProfileId(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/requestunblockapp/Item;

    move-result-object v19

    const-string v20, "identifier"

    move-object/from16 v0, v20

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lde/gdata/mobilesecurity/mms/json/base/requestunblockapp/Item;->withIdentifier(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/requestunblockapp/Item;

    move-result-object v19

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lde/gdata/mobilesecurity/mms/json/base/requestunblockapp/Item;->withName(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/requestunblockapp/Item;

    move-result-object v19

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lde/gdata/mobilesecurity/mms/json/base/requestunblockapp/Item;->withVersion(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/requestunblockapp/Item;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lde/gdata/mobilesecurity/mms/json/base/requestunblockapp/Item;->withPngIcon(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/requestunblockapp/Item;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lde/gdata/mobilesecurity/mms/json/base/requestunblockapp/Item;->withDate(Ljava/util/Date;)Lde/gdata/mobilesecurity/mms/json/base/requestunblockapp/Item;

    move-result-object v19

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lde/gdata/mobilesecurity/mms/json/UnblockAppRequest;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lde/gdata/mobilesecurity/mms/json/base/requestunblockapp/Item;->withSize(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/requestunblockapp/Item;

    move-result-object v19

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/Signature;->hashCode()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mms/json/base/requestunblockapp/Item;->withHashCode(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/requestunblockapp/Item;

    move-result-object v18

    .line 104
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 65
    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_1

    .line 69
    :catch_0
    move-exception v3

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parsing date failed: ["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "queued"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "]."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    move-object v6, v4

    goto/16 :goto_2

    .line 77
    :cond_5
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto/16 :goto_3

    .line 108
    :catch_1
    move-exception v3

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while retrieving package info for app unlockThePhone request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 113
    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 114
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 117
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lde/gdata/mobilesecurity/mms/json/UnblockAppRequest;->withItems(Ljava/util/List;)Lde/gdata/mobilesecurity/mms/json/base/requestunblockapp/PutRequest;

    .line 118
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 158
    new-instance v0, Lde/gdata/mobilesecurity/mms/json/c;

    invoke-direct {v0, p0, p1, p2}, Lde/gdata/mobilesecurity/mms/json/c;-><init>(Lde/gdata/mobilesecurity/mms/json/UnblockAppRequest;Landroid/content/Context;Ljava/lang/String;)V

    .line 187
    monitor-enter p0

    .line 189
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 190
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    sget-object v0, Lde/gdata/mobilesecurity/mms/json/UnblockAppRequest;->a:Ljava/lang/Integer;

    return-object v0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method static synthetic a(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .prologue
    .line 37
    sput-object p0, Lde/gdata/mobilesecurity/mms/json/UnblockAppRequest;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method public static flagItemsToSend(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 125
    const-string v0, "UAR.flagItemsToSend"

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 127
    const-string v1, "UPDATE mdmrequests SET status = 4 WHERE type = \'2\' AND status = 0 AND action = \'63\';"

    .line 131
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 133
    const-string v0, "UAR.flagItemsToSend"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public static flagSuccess(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 141
    const-string v0, "UAR.flagSuccess"

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 143
    const-string v1, "UPDATE mdmrequests SET status = 1,  sent = current_timestamp WHERE type = \'2\' AND status = 4 AND action = \'63\';"

    .line 147
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 149
    const-string v0, "UAR.flagSuccess"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 150
    return-void
.end method
