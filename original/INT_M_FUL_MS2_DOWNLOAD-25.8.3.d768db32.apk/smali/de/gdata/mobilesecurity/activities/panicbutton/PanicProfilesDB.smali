.class public Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field public static DB_INSTANCE:Landroid/database/sqlite/SQLiteDatabase;

.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->DB_INSTANCE:Landroid/database/sqlite/SQLiteDatabase;

    .line 76
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "content"

    aput-object v1, v0, v5

    const-string v1, "contact"

    aput-object v1, v0, v6

    const-string v1, "header"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "profileid"

    aput-object v2, v0, v1

    sput-object v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->a:[Ljava/lang/String;

    .line 78
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "color"

    aput-object v1, v0, v5

    const-string v1, "widgetid"

    aput-object v1, v0, v6

    sput-object v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 28
    const-string v0, "PanicProfiles"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 29
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 268
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    .line 269
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->getId()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->getAllPanicActionsById(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 271
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    :cond_0
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->deletePanicProfile(Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;)V

    goto :goto_0

    .line 276
    :cond_1
    return-object v1
.end method


# virtual methods
.method public addPanicAction(Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;)V
    .locals 4

    .prologue
    .line 82
    const-string v0, "addAction"

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 85
    const-string v1, "title"

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v1, "content"

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "contact"

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getContact()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "header"

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v1, "profileid"

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getProfileId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 91
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "panicactions"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 95
    return-void
.end method

.method public addPanicProfile(Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;)J
    .locals 4

    .prologue
    .line 98
    const-string v0, "addAction"

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 102
    const-string v1, "title"

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "color"

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->getColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    const-string v1, "widgetid"

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->getWidgetId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "panicprofiles"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 108
    return-wide v0
.end method

.method public deletePanicAction(Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;)V
    .locals 6

    .prologue
    .line 312
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "panicactions"

    const-string v2, "id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 314
    const-string v0, "deletePanicAction"

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void
.end method

.method public deletePanicProfile(Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;)V
    .locals 6

    .prologue
    .line 320
    if-eqz p1, :cond_0

    .line 321
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "panicprofiles"

    const-string v2, "id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 324
    const-string v0, "deletePanicProfile"

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_0
    return-void
.end method

.method public getAllPanicActions(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 181
    const-string v1, "SELECT  * FROM panicactions"

    .line 183
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 186
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    :cond_0
    new-instance v2, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;-><init>()V

    .line 189
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->setId(I)V

    .line 190
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->setTitle(Landroid/content/Context;Ljava/lang/String;)V

    .line 191
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->setContent(Ljava/lang/String;)V

    .line 192
    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->setContact(Ljava/lang/String;)V

    .line 193
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 197
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 199
    return-object v0
.end method

.method public getAllPanicActionsById(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT  * FROM panicactions WHERE profileid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 210
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    :cond_0
    new-instance v2, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;-><init>()V

    .line 213
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->setId(I)V

    .line 214
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->setTitle(Landroid/content/Context;Ljava/lang/String;)V

    .line 215
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->setContent(Ljava/lang/String;)V

    .line 216
    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->setContact(Ljava/lang/String;)V

    .line 217
    const/4 v3, 0x4

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->setHeader(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 222
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 224
    return-object v0
.end method

.method public getAllPanicProfiles(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 242
    const-string v1, "SELECT  * FROM panicprofiles"

    .line 244
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 247
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 249
    :cond_0
    new-instance v2, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;-><init>()V

    .line 250
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->setId(I)V

    .line 251
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->setTitle(Ljava/lang/String;)V

    .line 252
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->setColor(I)V

    .line 253
    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->setWidgetId(I)V

    .line 254
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 258
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 259
    invoke-direct {p0, p1, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 260
    return-object v0
.end method

.method public getDB()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->DB_INSTANCE:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->DB_INSTANCE:Landroid/database/sqlite/SQLiteDatabase;

    .line 48
    :cond_0
    sget-object v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->DB_INSTANCE:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public getPanicAction(Landroid/content/Context;I)Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 113
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "panicactions"

    sget-object v2, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->a:[Ljava/lang/String;

    const-string v3, " id = ?"

    new-array v4, v10, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 124
    :cond_0
    new-instance v1, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;-><init>()V

    .line 125
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->setId(I)V

    .line 126
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->setTitle(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->setContent(Ljava/lang/String;)V

    .line 128
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->setContact(Ljava/lang/String;)V

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAction("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 132
    return-object v1
.end method

.method public getPanicProfile(I)Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 136
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "panicprofiles"

    sget-object v2, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->b:[Ljava/lang/String;

    const-string v3, " id = ?"

    new-array v4, v10, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 147
    :cond_0
    new-instance v1, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;-><init>()V

    .line 148
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->setId(I)V

    .line 149
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->setTitle(Ljava/lang/String;)V

    .line 150
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->setColor(I)V

    .line 151
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->setWidgetId(I)V

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAction("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 155
    return-object v1
.end method

.method public getPanicProfileByWidgetId(I)Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT  * FROM panicprofiles WHERE widgetid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 164
    if-eqz v1, :cond_1

    .line 165
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 166
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 167
    new-instance v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;-><init>()V

    .line 168
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->setId(I)V

    .line 169
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->setTitle(Ljava/lang/String;)V

    .line 170
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->setColor(I)V

    .line 171
    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->setWidgetId(I)V

    .line 173
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 175
    :cond_1
    return-object v0
.end method

.method public hasAlreadyCallAction(Landroid/content/Context;I)Z
    .locals 4

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 229
    invoke-virtual {p0, p1, p2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->getAllPanicActionsById(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 231
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    .line 232
    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getPanicActionType(Landroid/content/Context;)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 233
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 235
    goto :goto_0

    .line 236
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 34
    const-string v0, "CREATE TABLE panicactions ( id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, content TEXT, contact TEXT, header TEXT, profileid int)"

    .line 37
    const-string v1, "CREATE TABLE panicprofiles ( id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, color int, widgetid int)"

    .line 40
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 54
    const-string v0, "DROP TABLE IF EXISTS panicactions"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    const-string v0, "DROP TABLE IF EXISTS panicprofiles"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 58
    return-void
.end method

.method public updatePanicAction(Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;)I
    .locals 7

    .prologue
    .line 281
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 282
    const-string v1, "title"

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v1, "content"

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v1, "contact"

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getContact()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v1, "header"

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "panicactions"

    const-string v3, "id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 291
    return v0
.end method

.method public updatePanicProfile(Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;)I
    .locals 7

    .prologue
    .line 298
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 299
    const-string v1, "title"

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v1, "color"

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->getColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 301
    const-string v1, "widgetid"

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->getWidgetId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "panicprofiles"

    const-string v3, "id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 307
    return v0
.end method
