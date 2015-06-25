.class public Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final INSERT_INTO_LOCKEDLOCATIONS_TABLE:Ljava/lang/String; = "INSERT OR REPLACE INTO lockedlocations (name, schedule, starttime, endtime, profiletype, active, location) VALUES (?, ?, ?, ?, ?, ?, ?)"

.field public static final SAVE_INTO_LOCKEDLOCATIONS_TABLE:Ljava/lang/String; = "INSERT OR REPLACE INTO lockedlocations (id, name, schedule, starttime, endtime, profiletype, active, location) VALUES (?, ?, ?, ?, ?, ?, ?, ?)"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Long;

.field private e:Ljava/lang/Long;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:I

.field private j:Lde/gdata/mobilesecurity/activities/filter/LocationBean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 351
    new-instance v0, Lde/gdata/mobilesecurity/activities/usagecontrol/w;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/w;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 405
    new-instance v0, Lde/gdata/mobilesecurity/activities/usagecontrol/x;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/x;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "bane"

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->a:Ljava/lang/String;

    .line 28
    iput v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->b:I

    .line 32
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->d:Ljava/lang/Long;

    .line 33
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->e:Ljava/lang/Long;

    .line 35
    const-string v0, "0000000"

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->f:Ljava/lang/String;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->g:Z

    .line 37
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->h:Z

    .line 40
    iput v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->i:I

    .line 57
    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->a:Ljava/lang/String;

    .line 58
    iput p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->b:I

    .line 59
    iput-object p4, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->d:Ljava/lang/Long;

    .line 60
    iput-object p5, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->e:Ljava/lang/Long;

    .line 61
    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->f:Ljava/lang/String;

    .line 62
    iput-object p6, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->c:Ljava/lang/String;

    .line 63
    iput-boolean p7, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->g:Z

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v2, "bane"

    iput-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->a:Ljava/lang/String;

    .line 28
    iput v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->b:I

    .line 32
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->d:Ljava/lang/Long;

    .line 33
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->e:Ljava/lang/Long;

    .line 35
    const-string v2, "0000000"

    iput-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->f:Ljava/lang/String;

    .line 36
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->g:Z

    .line 37
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->h:Z

    .line 40
    iput v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->i:I

    .line 381
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    .line 382
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 384
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->b:I

    .line 385
    aget-object v3, v2, v0

    iput-object v3, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->a:Ljava/lang/String;

    .line 386
    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->d:Ljava/lang/Long;

    .line 387
    const/4 v3, 0x3

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->e:Ljava/lang/Long;

    .line 388
    const/4 v3, 0x4

    aget-object v3, v2, v3

    iput-object v3, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->f:Ljava/lang/String;

    .line 389
    const/4 v3, 0x5

    aget-object v3, v2, v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->g:Z

    .line 390
    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->i:I

    .line 392
    return-void

    :cond_0
    move v0, v1

    .line 389
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ZLjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "bane"

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->a:Ljava/lang/String;

    .line 28
    iput v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->b:I

    .line 32
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->d:Ljava/lang/Long;

    .line 33
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->e:Ljava/lang/Long;

    .line 35
    const-string v0, "0000000"

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->f:Ljava/lang/String;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->g:Z

    .line 37
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->h:Z

    .line 40
    iput v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->i:I

    .line 46
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->a:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->d:Ljava/lang/Long;

    .line 48
    iput-object p4, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->e:Ljava/lang/Long;

    .line 49
    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->f:Ljava/lang/String;

    .line 50
    iput-object p6, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->c:Ljava/lang/String;

    .line 51
    iput-boolean p5, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->g:Z

    .line 52
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4

    .prologue
    .line 226
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 227
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 228
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 229
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 230
    return-object v0
.end method

.method private a(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static loadLockedLocations(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 313
    new-instance v2, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM lockedlocations WHERE profiletype LIKE \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 317
    const-string v3, "loadInBackground()"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 318
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 320
    if-eqz v11, :cond_2

    .line 321
    const-string v2, "id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 322
    const-string v2, "name"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 323
    const-string v2, "schedule"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 324
    const-string v2, "starttime"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 325
    const-string v2, "endtime"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 326
    const-string v2, "profiletype"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 327
    const-string v2, "active"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 328
    const-string v2, "location"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 331
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 332
    new-instance v2, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_0

    const/4 v9, 0x1

    :goto_1
    invoke-direct/range {v2 .. v9}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Z)V

    .line 335
    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->setmLocationId(I)V

    .line 336
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 332
    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    .line 339
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 341
    sget-object v2, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v10, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 343
    :cond_2
    const-string v2, "loadInBackground()"

    invoke-static {v2}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 345
    return-object v10
.end method


# virtual methods
.method public changeSchedulePosition(IZ)V
    .locals 2

    .prologue
    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->f:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    if-eqz p2, :cond_0

    const/16 v0, 0x31

    :goto_0
    invoke-virtual {v1, p1, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 184
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->f:Ljava/lang/String;

    .line 185
    return-void

    .line 183
    :cond_0
    const/16 v0, 0x30

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 369
    const/4 v0, 0x0

    .line 371
    if-eqz p1, :cond_0

    instance-of v1, p1, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    if-eqz v1, :cond_0

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    iget v2, p1, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 375
    :cond_0
    return v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->e:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->b:I

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->d:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->e:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsActivated()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->g:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getProfil()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getSchedule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStringDate()Ljava/lang/String;
    .locals 3

    .prologue
    .line 94
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd.MM.yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 95
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringEndTime()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x3c

    .line 87
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->e:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    div-long/2addr v0, v6

    div-long/2addr v0, v6

    div-long/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->e:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    mul-long/2addr v4, v6

    mul-long/2addr v4, v8

    sub-long/2addr v2, v4

    div-long/2addr v2, v8

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 90
    invoke-direct {p0, v0, v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->a(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringStartTime()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x3c

    .line 76
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    div-long/2addr v0, v6

    div-long/2addr v0, v6

    div-long/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    mul-long/2addr v4, v6

    mul-long/2addr v4, v8

    sub-long/2addr v2, v4

    div-long/2addr v2, v8

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 79
    invoke-direct {p0, v0, v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->a(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getmLocation(Landroid/content/Context;)Lde/gdata/mobilesecurity/activities/filter/LocationBean;
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->i:I

    invoke-static {p1, v0}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->loadLocationById(Landroid/content/Context;I)Lde/gdata/mobilesecurity/activities/filter/LocationBean;

    move-result-object v0

    return-object v0
.end method

.method public getmLocationId()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->i:I

    return v0
.end method

.method public hasLocation()Z
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getmLocationId()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertIntoDB(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 281
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    const-string v0, "INSERT OR REPLACE INTO lockedlocations (name, schedule, starttime, endtime, profiletype, active, location) VALUES (?, ?, ?, ?, ?, ?, ?)"

    invoke-static {p1, v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 284
    :try_start_0
    const-string v1, "INSERT OR REPLACE INTO lockedlocations (name, schedule, starttime, endtime, profiletype, active, location) VALUES (?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 286
    const/4 v0, 0x1

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 287
    const/4 v0, 0x2

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getSchedule()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 288
    const/4 v0, 0x3

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getStartTime()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 289
    const/4 v0, 0x4

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getEndTime()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 290
    const/4 v0, 0x5

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getProfil()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 291
    const/4 v3, 0x6

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getIsActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 292
    const/4 v0, 0x7

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getmLocationId()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v2, v0, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 294
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->b:I

    .line 295
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert id  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_1
    const-string v0, "LockedLocation"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 304
    :cond_0
    return-void

    .line 291
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Statement INSERT OR REPLACE INTO lockedlocations (name, schedule, starttime, endtime, profiletype, active, location) VALUES (?, ?, ?, ?, ?, ?, ?) caused an exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public isActiveRightNow()Z
    .locals 6

    .prologue
    .line 218
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 219
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 221
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getStartTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getEndTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActiveToday(I)Z
    .locals 3

    .prologue
    .line 210
    const/4 v0, 0x0

    .line 211
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->f:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    const/4 v0, 0x1

    .line 214
    :cond_0
    return v0
.end method

.method public isDeleted()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->h:Z

    return v0
.end method

.method public isEveryday()Z
    .locals 3

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->f:Ljava/lang/String;

    const-string v2, "1111111"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const/4 v0, 0x1

    .line 103
    :cond_0
    return v0
.end method

.method public isFullDay()Z
    .locals 6

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getEndTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getStartTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 109
    const/4 v0, 0x1

    .line 111
    :cond_0
    return v0
.end method

.method public saveIntoDB(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 244
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    const-string v0, "LockedLocation"

    invoke-static {p1, v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 247
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getId()I

    move-result v1

    if-lez v1, :cond_2

    .line 249
    :try_start_0
    const-string v1, "INSERT OR REPLACE INTO lockedlocations (id, name, schedule, starttime, endtime, profiletype, active, location) VALUES (?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 251
    const/4 v0, 0x1

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getId()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v2, v0, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 252
    const/4 v0, 0x2

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 253
    const/4 v0, 0x3

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getSchedule()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 254
    const/4 v0, 0x4

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getStartTime()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 255
    const/4 v0, 0x5

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getEndTime()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 256
    const/4 v0, 0x6

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getProfil()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 257
    const/4 v3, 0x7

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getIsActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 258
    const/16 v0, 0x8

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getmLocationId()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v2, v0, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 260
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 262
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update id  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_1
    const-string v0, "INSERT OR REPLACE INTO lockedlocations (id, name, schedule, starttime, endtime, profiletype, active, location) VALUES (?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 273
    :cond_0
    return-void

    .line 257
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Statement INSERT OR REPLACE INTO lockedlocations (id, name, schedule, starttime, endtime, profiletype, active, location) VALUES (?, ?, ?, ?, ?, ?, ?, ?) caused an exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 269
    :cond_2
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->insertIntoDB(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public setActivated(Z)V
    .locals 0

    .prologue
    .line 188
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->g:Z

    .line 189
    return-void
.end method

.method public setDeleted()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->h:Z

    .line 193
    return-void
.end method

.method public setFromTime(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->d:Ljava/lang/Long;

    .line 163
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->a:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setProfil(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->c:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setSchedule(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->f:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setTillTime(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->e:Ljava/lang/Long;

    .line 167
    return-void
.end method

.method public setmLocation(Lde/gdata/mobilesecurity/activities/filter/LocationBean;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->j:Lde/gdata/mobilesecurity/activities/filter/LocationBean;

    .line 179
    return-void
.end method

.method public setmLocationId(I)V
    .locals 0

    .prologue
    .line 174
    iput p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->i:I

    .line 175
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    .line 401
    const/4 v0, 0x7

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->a:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->d:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->e:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x4

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->f:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v2, 0x5

    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->g:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    aput-object v0, v1, v2

    const/4 v0, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 403
    return-void

    .line 401
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method
