.class public Lde/gdata/mobilesecurity/mms/json/AppPutRequest;
.super Lde/gdata/mobilesecurity/mms/json/base/app/PutRequest;
.source "SourceFile"


# static fields
.field private static volatile a:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/AppPutRequest;->a:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 20

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Lde/gdata/mobilesecurity/mms/json/base/app/PutRequest;-><init>()V

    .line 42
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 45
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 47
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 48
    const/4 v3, 0x2

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.intent.category.LAUNCHER"

    aput-object v4, v9, v3

    const/4 v3, 0x1

    const-string v4, "android.intent.category.HOME"

    aput-object v4, v9, v3

    array-length v10, v9

    const/4 v3, 0x0

    move v5, v3

    :goto_0
    if-ge v5, v10, :cond_0

    aget-object v3, v9, v5

    .line 49
    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    const/4 v12, 0x0

    invoke-direct {v4, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 50
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const/4 v4, 0x0

    invoke-virtual {v7, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 53
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 54
    invoke-virtual {v3, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, "/"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v13, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v14, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v13, "/de.gdata.mobilesecurity."

    const-string v14, "/."

    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 57
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lde/gdata/mobilesecurity/mms/json/AppPutRequest;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    .line 59
    invoke-virtual {v3, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 60
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 61
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

    .line 62
    :cond_2
    const/16 v15, 0x20

    const/16 v16, 0x20

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v4, v15, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 63
    :cond_3
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    sget-object v16, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v17, 0x64

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1, v15}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 65
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 66
    const/4 v15, 0x2

    invoke-static {v4, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 69
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x40

    invoke-virtual/range {v15 .. v17}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    iget-object v15, v15, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 72
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 74
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 76
    array-length v0, v15

    move/from16 v17, v0

    const/4 v3, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v3, v0, :cond_1

    aget-object v18, v15, v3

    .line 77
    new-instance v19, Lde/gdata/mobilesecurity/mms/json/base/app/Item;

    invoke-direct/range {v19 .. v19}, Lde/gdata/mobilesecurity/mms/json/base/app/Item;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lde/gdata/mobilesecurity/mms/json/base/app/Item;->withName(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/app/Item;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lde/gdata/mobilesecurity/mms/json/base/app/Item;->withIdentifier(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/app/Item;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mms/json/base/app/Item;->withVersion(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/app/Item;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lde/gdata/mobilesecurity/mms/json/base/app/Item;->withSize(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/app/Item;

    move-result-object v19

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/Signature;->hashCode()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mms/json/base/app/Item;->withHashCode(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/app/Item;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/mms/json/base/app/Item;->withPngIcon(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/app/Item;

    move-result-object v18

    .line 80
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 82
    :catch_0
    move-exception v3

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error while retrieving data for app put request: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 48
    :cond_4
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto/16 :goto_0

    .line 89
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lde/gdata/mobilesecurity/mms/json/AppPutRequest;->withItems(Ljava/util/List;)Lde/gdata/mobilesecurity/mms/json/base/app/PutRequest;

    .line 90
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 99
    new-instance v0, Lde/gdata/mobilesecurity/mms/json/a;

    invoke-direct {v0, p0, p1, p2}, Lde/gdata/mobilesecurity/mms/json/a;-><init>(Lde/gdata/mobilesecurity/mms/json/AppPutRequest;Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    monitor-enter p0

    .line 130
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    sget-object v0, Lde/gdata/mobilesecurity/mms/json/AppPutRequest;->a:Ljava/lang/Integer;

    return-object v0

    .line 133
    :catch_0
    move-exception v0

    .line 134
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

    .line 136
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
    .line 30
    sput-object p0, Lde/gdata/mobilesecurity/mms/json/AppPutRequest;->a:Ljava/lang/Integer;

    return-object p0
.end method
