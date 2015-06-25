.class public Lde/gdata/mobilesecurity/database/core/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field private static b:Lde/gdata/mobilesecurity/database/core/DatabaseHelper;

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:I

.field private static j:I


# instance fields
.field a:Landroid/content/Context;

.field private c:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->b:Lde/gdata/mobilesecurity/database/core/DatabaseHelper;

    .line 33
    const/16 v0, 0x19ef

    sput v0, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->d:I

    .line 38
    const/16 v0, 0xf

    sput v0, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->e:I

    .line 42
    const/4 v0, 0x1

    sput v0, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->f:I

    .line 44
    const v0, 0x1ff9f

    sput v0, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->g:I

    .line 52
    const/16 v0, 0x3ff

    sput v0, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->h:I

    .line 58
    const/16 v0, 0x3f

    sput v0, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->i:I

    .line 63
    const-string v0, "id"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    sput v0, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->j:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    const-string v0, "reports.db"

    const/16 v1, 0xb

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 30
    iput-object v2, p0, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 70
    iput-object v2, p0, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->a:Landroid/content/Context;

    .line 79
    iput-object p1, p0, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->a:Landroid/content/Context;

    .line 81
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 82
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 119
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->c:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 270
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 272
    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardInitialized(Z)V

    .line 273
    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardToddlerActive(Z)V

    .line 274
    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardTeenagerActive(Z)V

    .line 275
    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardConfiguring(Z)V

    .line 277
    const-string v1, "Default"

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setApplockConfig(Ljava/lang/String;)V

    .line 278
    const-string v1, "Default"

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAntiphishingConfig(Ljava/lang/String;)V

    .line 279
    const-string v1, "Default"

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAntitheftConfig(Ljava/lang/String;)V

    .line 280
    const-string v1, "Default"

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setScanConfig(Ljava/lang/String;)V

    .line 281
    const-string v1, "Default"

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setPrivacyConfig(Ljava/lang/String;)V

    .line 282
    const-string v1, "Default"

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setCallfilterConfig(Ljava/lang/String;)V

    .line 284
    const-string v1, "Private"

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setProfile(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppDeniedByDefault(Z)V

    .line 287
    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectedByDefault(Z)V

    .line 288
    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionActivated(Z)V

    .line 289
    iget-object v1, p0, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->a:Landroid/content/Context;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->a:Landroid/content/Context;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setSMSCommandPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->disableAllAntiTheftCommands()V

    .line 293
    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setCallFilterNeedsToMigrate(Z)V

    .line 294
    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setMMSNotFoundWarningShown(Z)V

    .line 295
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->resetOverallUsageTime()V

    .line 297
    sget v1, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->d:I

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setProfilePermissions(I)V

    .line 298
    sget v1, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->e:I

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setScanPermissions(I)V

    .line 299
    sget v1, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->f:I

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAntiphishingPermissions(I)V

    .line 300
    sget v1, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->g:I

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAntitheftPermissions(I)V

    .line 301
    sget v1, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->i:I

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setCallfilterPermissions(I)V

    .line 302
    sget v1, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->h:I

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setApplockPermissions(I)V

    .line 304
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMMSEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->a:Landroid/content/Context;

    invoke-static {v0}, Lde/gdata/mobilesecurity/mms/ManagementServerService;->scheduleUpdate(Landroid/content/Context;)V

    .line 305
    :cond_0
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE profiles SET permissions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " like \'Private\';"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE scanconfig SET permissions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "configuration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " like \'Default\';"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE antiphishingconfig SET permissions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "configuration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " like \'Default\';"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE antitheftconfig SET permissions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "configuration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " like \'Default\';"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE callfilterconfig SET permissions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "configuration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " like \'Default\';"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE applockconfig SET permissions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "configuration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " like \'Default\';"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 221
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 222
    sget v1, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->d:I

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setProfilePermissions(I)V

    .line 223
    sget v1, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->e:I

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setScanPermissions(I)V

    .line 224
    sget v1, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->f:I

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAntiphishingPermissions(I)V

    .line 225
    sget v1, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->g:I

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAntitheftPermissions(I)V

    .line 226
    sget v1, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->i:I

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setCallfilterPermissions(I)V

    .line 227
    sget v1, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->h:I

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setApplockPermissions(I)V

    .line 228
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x1

    .line 314
    if-ge p2, p3, :cond_7

    if-ne p3, v4, :cond_7

    .line 315
    const/4 v0, 0x6

    if-ge p2, v0, :cond_0

    .line 316
    const-string v0, "DROP TABLE IF EXISTS hashlist"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 317
    const-string v0, "DROP TABLE IF EXISTS blacklist"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 318
    const-string v0, "DROP TABLE IF EXISTS incomingblacklist"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 319
    const-string v0, "DROP TABLE IF EXISTS incomingwhitelist"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 320
    const-string v0, "DROP TABLE IF EXISTS outgoingblacklist"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 321
    const-string v0, "DROP TABLE IF EXISTS outgoingwhitelist"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 322
    const-string v0, "DROP TABLE IF EXISTS protectedapps"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 323
    const-string v0, "DROP TABLE IF EXISTS logblockings"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 325
    const-string v0, "incomingwhitelist"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/Schema;->getTableDefinition(Ljava/lang/String;)Lde/gdata/mobilesecurity/database/core/TableDefinition;

    move-result-object v0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getSql(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 326
    const-string v0, "incomingblacklist"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/Schema;->getTableDefinition(Ljava/lang/String;)Lde/gdata/mobilesecurity/database/core/TableDefinition;

    move-result-object v0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getSql(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 327
    const-string v0, "outgoingwhitelist"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/Schema;->getTableDefinition(Ljava/lang/String;)Lde/gdata/mobilesecurity/database/core/TableDefinition;

    move-result-object v0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getSql(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 328
    const-string v0, "outgoingblacklist"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/Schema;->getTableDefinition(Ljava/lang/String;)Lde/gdata/mobilesecurity/database/core/TableDefinition;

    move-result-object v0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getSql(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 329
    const-string v0, "incomingwhitelist"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/Schema;->getTableDefinition(Ljava/lang/String;)Lde/gdata/mobilesecurity/database/core/TableDefinition;

    move-result-object v0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getSql(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 330
    const-string v0, "incomingblacklist"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/Schema;->getTableDefinition(Ljava/lang/String;)Lde/gdata/mobilesecurity/database/core/TableDefinition;

    move-result-object v0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getSql(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 332
    const-string v0, "protectedapps"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/Schema;->getTableDefinition(Ljava/lang/String;)Lde/gdata/mobilesecurity/database/core/TableDefinition;

    move-result-object v0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getSql(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 333
    const-string v0, "logblockings"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/Schema;->getTableDefinition(Ljava/lang/String;)Lde/gdata/mobilesecurity/database/core/TableDefinition;

    move-result-object v0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getSql(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 335
    const-string v0, "reports"

    const-string v1, "msg_id"

    invoke-static {p1, v0, v1}, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v0, "reports"

    const-string v1, "msg_extra"

    invoke-static {p1, v0, v1}, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_0
    const/16 v0, 0x8

    if-lt p2, v0, :cond_1

    const-string v0, "protectedapps"

    const-string v1, "configuration"

    invoke-static {p1, v0, v1}, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->hasColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 340
    :cond_1
    const-string v0, "profiles"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/Schema;->getTableDefinition(Ljava/lang/String;)Lde/gdata/mobilesecurity/database/core/TableDefinition;

    move-result-object v0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getSql(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 341
    const-string v0, "scanconfig"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/Schema;->getTableDefinition(Ljava/lang/String;)Lde/gdata/mobilesecurity/database/core/TableDefinition;

    move-result-object v0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getSql(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 342
    const-string v0, "applockconfig"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/Schema;->getTableDefinition(Ljava/lang/String;)Lde/gdata/mobilesecurity/database/core/TableDefinition;

    move-result-object v0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getSql(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 343
    const-string v0, "antitheftconfig"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/Schema;->getTableDefinition(Ljava/lang/String;)Lde/gdata/mobilesecurity/database/core/TableDefinition;

    move-result-object v0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getSql(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 344
    const-string v0, "antiphishingconfig"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/Schema;->getTableDefinition(Ljava/lang/String;)Lde/gdata/mobilesecurity/database/core/TableDefinition;

    move-result-object v0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getSql(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 345
    const-string v0, "callfilterconfig"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/Schema;->getTableDefinition(Ljava/lang/String;)Lde/gdata/mobilesecurity/database/core/TableDefinition;

    move-result-object v0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getSql(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 347
    const-string v0, "incomingwhitelist"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/Schema;->getTableDefinition(Ljava/lang/String;)Lde/gdata/mobilesecurity/database/core/TableDefinition;

    move-result-object v0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getSql(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 348
    const-string v0, "incomingblacklist"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/Schema;->getTableDefinition(Ljava/lang/String;)Lde/gdata/mobilesecurity/database/core/TableDefinition;

    move-result-object v0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getSql(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 349
    const-string v0, "outgoingwhitelist"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/Schema;->getTableDefinition(Ljava/lang/String;)Lde/gdata/mobilesecurity/database/core/TableDefinition;

    move-result-object v0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getSql(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 350
    const-string v0, "outgoingblacklist"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/Schema;->getTableDefinition(Ljava/lang/String;)Lde/gdata/mobilesecurity/database/core/TableDefinition;

    move-result-object v0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getSql(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 352
    const-string v0, "eula"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/Schema;->getTableDefinition(Ljava/lang/String;)Lde/gdata/mobilesecurity/database/core/TableDefinition;

    move-result-object v0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getSql(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 353
    const-string v0, "mdmrequests"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/Schema;->getTableDefinition(Ljava/lang/String;)Lde/gdata/mobilesecurity/database/core/TableDefinition;

    move-result-object v0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getSql(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 355
    const-string v0, "mdmpolicies"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/Schema;->getTableDefinition(Ljava/lang/String;)Lde/gdata/mobilesecurity/database/core/TableDefinition;

    move-result-object v0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getSql(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 356
    const-string v0, "mdmpolicyreaction_item"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/Schema;->getTableDefinition(Ljava/lang/String;)Lde/gdata/mobilesecurity/database/core/TableDefinition;

    move-result-object v0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getSql(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 357
    const-string v0, "mdmpolicyitems"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/Schema;->getTableDefinition(Ljava/lang/String;)Lde/gdata/mobilesecurity/database/core/TableDefinition;

    move-result-object v0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getSql(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 359
    const-string v0, "reports"

    const-string v1, "profile"

    invoke-static {p1, v0, v1}, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :try_start_0
    const-string v0, "reports"

    const-string v1, "status"

    invoke-static {p1, v0, v1}, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_0
    const-string v0, "protectedapps"

    const-string v1, "packageurl"

    invoke-static {p1, v0, v1}, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v0, "protectedapps"

    const-string v1, "permissions"

    invoke-static {p1, v0, v1}, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v0, "protectedapps"

    const-string v1, "lockmode"

    invoke-static {p1, v0, v1}, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v0, "protectedapps"

    const-string v1, "installmode"

    invoke-static {p1, v0, v1}, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v0, "protectedapps"

    const-string v1, "status"

    invoke-static {p1, v0, v1}, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v0, "protectedapps"

    const-string v1, "hashcode"

    invoke-static {p1, v0, v1}, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v0, "protectedapps"

    const-string v1, "configuration"

    invoke-static {p1, v0, v1}, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->hasColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 374
    const-string v0, "protectedapps"

    const-string v1, "protectedapps"

    invoke-static {v1}, Lde/gdata/mobilesecurity/database/core/Schema;->getTableDefinition(Ljava/lang/String;)Lde/gdata/mobilesecurity/database/core/TableDefinition;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->migrateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lde/gdata/mobilesecurity/database/core/TableDefinition;)V

    .line 377
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 380
    :cond_2
    const-string v0, "protectedapps"

    const-string v1, "timeunlocked"

    invoke-static {p1, v0, v1}, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT OR REPLACE INTO  profiles SELECT MAX(id),\'Private\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile$Types;->PRIVATE:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0212

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\'Default\',\'Default\',\'Default\',\'Default\',\'Default\',\'Default\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   FROM profiles WHERE profile = \'Private\';"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 390
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 391
    sget v1, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->d:I

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setProfilePermissions(I)V

    .line 392
    sget v1, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->e:I

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setScanPermissions(I)V

    .line 393
    sget v1, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->f:I

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAntiphishingPermissions(I)V

    .line 394
    sget v1, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->g:I

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAntitheftPermissions(I)V

    .line 395
    sget v1, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->i:I

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setCallfilterPermissions(I)V

    .line 396
    sget v1, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->h:I

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setApplockPermissions(I)V

    .line 398
    new-instance v0, Lde/gdata/mobilesecurity/mms/ProfileSelector;

    iget-object v1, p0, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/mms/ProfileSelector;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x1f

    invoke-virtual {v0, p1, v1}, Lde/gdata/mobilesecurity/mms/ProfileSelector;->storePreferencesInProfile(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 401
    :cond_3
    const/16 v0, 0x9

    if-ge p2, v0, :cond_4

    .line 403
    const-string v0, "protectedapps"

    const-string v1, "timeunlocked"

    invoke-static {p1, v0, v1}, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_4
    const/16 v0, 0xa

    if-ge p2, v0, :cond_6

    .line 406
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 408
    const-string v0, "lockedlocations"

    const-string v1, "_id"

    invoke-static {p1, v0, v1}, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->hasColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 409
    const-string v0, "DROP TABLE IF EXISTS lockedlocations;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 413
    :cond_5
    const-string v0, "reports"

    const-string v1, "reports"

    invoke-static {v1}, Lde/gdata/mobilesecurity/database/core/Schema;->getTableDefinition(Ljava/lang/String;)Lde/gdata/mobilesecurity/database/core/TableDefinition;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->migrateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lde/gdata/mobilesecurity/database/core/TableDefinition;)V

    .line 415
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setCallFilterNeedsToMigrate(Z)V

    .line 417
    :cond_6
    if-ge p2, v4, :cond_7

    .line 418
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 421
    :cond_7
    return-void

    .line 362
    :catch_0
    move-exception v0

    .line 363
    invoke-static {}, Ljava/lang/Math;->random()D

    goto/16 :goto_0
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 425
    const-string v0, "callwhitelist"

    invoke-static {p1, v0}, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->isTableCreated(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    const-string v0, "INSERT INTO incomingwhitelist (id, configuration, name, displaynumber, phonenumber, messagetypes, permissions, timepattern, starttime, endtime, status) SELECT id, profile, name, displaynumber, phonenumber,         permissions, 15, timepattern, starttime, endtime, 0   FROM callwhitelist;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 434
    const-string v0, "DROP TABLE callwhitelist;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 436
    :cond_0
    const-string v0, "callblacklist"

    invoke-static {p1, v0}, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->isTableCreated(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    const-string v0, "INSERT INTO incomingblacklist (id, configuration, name, displaynumber, phonenumber, messagetypes, permissions, timepattern, starttime, endtime, status, replytext) SELECT id, profile, name, displaynumber, phonenumber,         denials, 15, timepattern, starttime, endtime, 0, replytext   FROM callblacklist;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 445
    const-string v0, "DROP TABLE callblacklist;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 449
    :cond_1
    const-string v0, "logblockings"

    const-string v1, "profile"

    invoke-static {p1, v0, v1}, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->hasColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 450
    const-string v0, "ALTER TABLE logblockings RENAME TO temp_data;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 451
    const-string v0, "logblockings"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/Schema;->getTableDefinition(Ljava/lang/String;)Lde/gdata/mobilesecurity/database/core/TableDefinition;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getSql(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 453
    const-string v0, "INSERT INTO logblockings (id, configuration, name, phonenumber, messagetype, direction, timestamp, smstext) SELECT id, profile, name, phonenumber, CASE COALESCE(smstext,\'\')         WHEN \'\' THEN 2 ELSE 1 END, 1, timestamp, smstext   FROM temp_data;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 460
    const-string v0, "DROP TABLE temp_data;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 462
    :cond_2
    return-void
.end method

.method public static close(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Database operations completed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public static getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get database instance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 106
    invoke-static {p0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getInstance(Landroid/content/Context;)Lde/gdata/mobilesecurity/database/core/DatabaseHelper;

    move-result-object v0

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    .line 108
    invoke-static {p0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getInstance(Landroid/content/Context;)Lde/gdata/mobilesecurity/database/core/DatabaseHelper;

    move-result-object v0

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lde/gdata/mobilesecurity/database/core/DatabaseHelper;
    .locals 2

    .prologue
    .line 90
    const-class v1, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->b:Lde/gdata/mobilesecurity/database/core/DatabaseHelper;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->b:Lde/gdata/mobilesecurity/database/core/DatabaseHelper;

    .line 94
    :cond_0
    sget-object v0, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->b:Lde/gdata/mobilesecurity/database/core/DatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .prologue
    .line 133
    const-string v0, "DatabaseHelper.onCreate: creating database tables"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lde/gdata/mobilesecurity/database/core/Schema;->getTableDefinitions()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/database/core/TableDefinition;

    .line 135
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/database/core/TableDefinition;->getSql(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT OR REPLACE INTO profiles ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "profiles"

    invoke-static {v1}, Lde/gdata/mobilesecurity/database/core/Schema;->getCommaSeparatedColumnNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") VALUES (\'Private\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile$Types;->PRIVATE:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0212

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\'Default\',\'Default\',\'Default\',\'Default\',\'Default\',\'Default\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT OR REPLACE INTO scanconfig ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "scanconfig"

    invoke-static {v2}, Lde/gdata/mobilesecurity/database/core/Schema;->getCommaSeparatedColumnNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->j:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") VALUES (\'Default\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", 1, 7, 2, 1, 0, 0, 1, \'1\', 1);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT OR REPLACE INTO applockconfig ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "applockconfig"

    invoke-static {v3}, Lde/gdata/mobilesecurity/database/core/Schema;->getCommaSeparatedColumnNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->j:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") VALUES (\'Default\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", 0, 0, 0, \'\', \'\', \'1\', \'\', \'\');"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT OR REPLACE INTO antitheftconfig ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "antitheftconfig"

    invoke-static {v4}, Lde/gdata/mobilesecurity/database/core/Schema;->getCommaSeparatedColumnNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v5, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->j:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") VALUES (\'Default\', "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", 0, 0, 0, 0, 0, 0, 0, 0, \'\', \'\', \'\');"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSERT OR REPLACE INTO antiphishingconfig ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "antiphishingconfig"

    invoke-static {v5}, Lde/gdata/mobilesecurity/database/core/Schema;->getCommaSeparatedColumnNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->j:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") VALUES (\'Default\', "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->f:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \'reg:.*\', \'cat:malware\', 1, 0);"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 158
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT OR REPLACE INTO callfilterconfig ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "callfilterconfig"

    invoke-static {v6}, Lde/gdata/mobilesecurity/database/core/Schema;->getCommaSeparatedColumnNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget v7, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->j:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") VALUES (\'Default\', "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->i:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", \'\', \'\', 0);"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 162
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 165
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 168
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 171
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 174
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 177
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 180
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 181
    sget v1, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->d:I

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setProfilePermissions(I)V

    .line 182
    sget v1, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->e:I

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setScanPermissions(I)V

    .line 183
    sget v1, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->f:I

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAntiphishingPermissions(I)V

    .line 184
    sget v1, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->g:I

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAntitheftPermissions(I)V

    .line 185
    sget v1, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->i:I

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setCallfilterPermissions(I)V

    .line 186
    sget v1, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->h:I

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setApplockPermissions(I)V

    .line 187
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DatabaseHelper.onUpgrade: upgrading from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 233
    const/4 v0, 0x0

    .line 236
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 238
    invoke-static {p1}, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->extendSchemaAndTables(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lde/gdata/mobilesecurity/database/core/Schema;->getTableDefinitions()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 253
    if-nez v0, :cond_0

    .line 254
    invoke-static {p1}, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->getTables(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->isTableSubSet(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    invoke-static {p1}, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->dropAllTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 256
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 259
    :cond_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception during DB upgrade: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 243
    invoke-static {p1}, Lde/gdata/mobilesecurity/database/core/SqliteMaster;->dropAllTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 244
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 246
    invoke-direct {p0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->a()V

    .line 248
    const/4 v0, 0x1

    goto :goto_0
.end method
