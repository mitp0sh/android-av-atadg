.class public Lde/gdata/mobilesecurity/mms/ProfileSelector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONFIGURATION_ALL:I = 0x1f

.field public static final CONFIGURATION_ANTIPHISHING:I = 0x8

.field public static final CONFIGURATION_ANTITHEFT:I = 0x4

.field public static final CONFIGURATION_APPLOCK:I = 0x2

.field public static final CONFIGURATION_CALLFILTER:I = 0x10

.field public static final CONFIGURATION_COMMON:I = 0x1

.field public static final CONFIGURATION_MDM:I = 0xf

.field public static final CONFIGURATION_SCAN:I = 0x1


# instance fields
.field a:Landroid/content/Context;

.field b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field c:Lde/gdata/mobilesecurity/util/BasePreferences;

.field d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->a:Landroid/content/Context;

    .line 35
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 36
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->c:Lde/gdata/mobilesecurity/util/BasePreferences;

    .line 38
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->d:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 483
    new-instance v3, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v3, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 485
    if-nez p1, :cond_8

    const-string v0, "loadPermissions"

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 487
    :goto_0
    const-string v1, "SELECT permissions FROM profiles WHERE profile = ?"

    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfile()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 490
    if-eqz v4, :cond_0

    .line 491
    const-string v1, "Teenager"

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 492
    const/16 v1, 0x109

    invoke-virtual {v3, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setProfilePermissions(I)V

    .line 498
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 501
    :cond_0
    const-string v1, "SELECT permissions FROM scanconfig WHERE configuration = ?"

    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getScanConfig()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 504
    if-eqz v4, :cond_1

    .line 505
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    :goto_2
    invoke-virtual {v3, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setScanPermissions(I)V

    .line 507
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 510
    :cond_1
    const-string v1, "SELECT permissions FROM applockconfig WHERE configuration = ?"

    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockConfig()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 513
    if-eqz v4, :cond_2

    .line 514
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    :goto_3
    invoke-virtual {v3, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setApplockPermissions(I)V

    .line 516
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 519
    :cond_2
    const-string v1, "SELECT permissions FROM antitheftconfig WHERE configuration = ?"

    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAntitheftConfig()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 522
    if-eqz v4, :cond_3

    .line 523
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    :goto_4
    invoke-virtual {v3, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAntitheftPermissions(I)V

    .line 525
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 528
    :cond_3
    const-string v1, "SELECT permissions FROM antitheftconfig WHERE configuration = ?"

    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAntiphishingConfig()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 531
    if-eqz v4, :cond_4

    .line 532
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    :goto_5
    invoke-virtual {v3, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAntiphishingPermissions(I)V

    .line 534
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 537
    :cond_4
    const-string v1, "SELECT permissions FROM callfilterconfig WHERE configuration = ?"

    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getCallfilterConfig()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 540
    if-eqz v0, :cond_6

    .line 541
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    :cond_5
    invoke-virtual {v3, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setCallfilterPermissions(I)V

    .line 543
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 546
    :cond_6
    if-nez p1, :cond_7

    const-string v0, "loadPermissions"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 547
    :cond_7
    return-void

    :cond_8
    move-object v0, p1

    .line 485
    goto/16 :goto_0

    .line 493
    :cond_9
    const-string v1, "Toddler"

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 494
    const/16 v1, 0x10

    invoke-virtual {v3, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setProfilePermissions(I)V

    goto/16 :goto_1

    .line 496
    :cond_a
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    :goto_6
    invoke-virtual {v3, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setProfilePermissions(I)V

    goto/16 :goto_1

    :cond_b
    move v1, v2

    goto :goto_6

    :cond_c
    move v1, v2

    .line 505
    goto/16 :goto_2

    :cond_d
    move v1, v2

    .line 514
    goto/16 :goto_3

    :cond_e
    move v1, v2

    .line 523
    goto :goto_4

    :cond_f
    move v1, v2

    .line 532
    goto :goto_5
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM scanconfig WHERE configuration = \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 205
    if-eqz v7, :cond_1

    .line 206
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const-string v0, "permissions"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 208
    const-string v0, "autoscan"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    .line 209
    :goto_0
    const-string v3, "scanperiod"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 210
    const-string v3, "scantype"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 211
    const-string v3, "oninstall"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v1, :cond_3

    move v3, v1

    .line 212
    :goto_1
    const-string v4, "batterysaver"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v1, :cond_4

    move v4, v1

    .line 213
    :goto_2
    const-string v5, "pluggedonly"

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v1, :cond_5

    move v5, v1

    .line 214
    :goto_3
    const-string v6, "autoupdate"

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v1, :cond_6

    move v6, v1

    .line 215
    :goto_4
    const-string v10, "updateperiod"

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 216
    const-string v11, "updateonlywlan"

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-ne v11, v1, :cond_7

    .line 218
    :goto_5
    iget-object v2, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->c:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->setPeriodicScan(Z)V

    .line 219
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->c:Lde/gdata/mobilesecurity/util/BasePreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->setPeriodicScanInterval(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->c:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v0, v9}, Lde/gdata/mobilesecurity/util/BasePreferences;->setPeriodicScanType(I)V

    .line 221
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->c:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->setScanAppOnInstall(Z)V

    .line 222
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->c:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/util/BasePreferences;->setSkipOnBatteryLow(Z)V

    .line 223
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->c:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v0, v5}, Lde/gdata/mobilesecurity/util/BasePreferences;->setScanOnPowerConnected(Z)V

    .line 224
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->c:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v0, v6}, Lde/gdata/mobilesecurity/util/BasePreferences;->setPeriodicUpdate(Z)V

    .line 225
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->c:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v0, v10}, Lde/gdata/mobilesecurity/util/BasePreferences;->setPeriodicUpdateInterval(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->c:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->setPeriodicUpdateWifiOnly(Z)V

    .line 229
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 231
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 208
    goto/16 :goto_0

    :cond_3
    move v3, v2

    .line 211
    goto/16 :goto_1

    :cond_4
    move v4, v2

    .line 212
    goto :goto_2

    :cond_5
    move v5, v2

    .line 213
    goto :goto_3

    :cond_6
    move v6, v2

    .line 214
    goto :goto_4

    :cond_7
    move v1, v2

    .line 216
    goto :goto_5
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM applockconfig WHERE configuration = \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 241
    if-eqz v4, :cond_3

    .line 242
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    const-string v0, "permissions"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 244
    const-string v0, "enabled"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    .line 245
    :goto_0
    const-string v3, "denydefault"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v1, :cond_5

    move v3, v1

    .line 246
    :goto_1
    const-string v5, "protectdefault"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v1, :cond_6

    .line 248
    :goto_2
    const-string v2, "password"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 249
    const-string v5, "email"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 250
    const-string v6, "question"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 251
    const-string v7, "customquestion"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 252
    const-string v8, "answer"

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 254
    iget-object v9, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v9, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionActivated(Z)V

    .line 255
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppDeniedByDefault(Z)V

    .line 256
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectedByDefault(Z)V

    .line 258
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v3, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->a:Landroid/content/Context;

    if-eqz v2, :cond_0

    const-string v0, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    const-string v0, ""

    :goto_3
    invoke-virtual {v1, v3, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v5}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionEmail(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v6}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionQuestion(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v7}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionCustomQuestion(Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    if-eqz v8, :cond_1

    const-string v0, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_1
    const-string v0, ""

    :goto_4
    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionAnswer(Ljava/lang/String;)V

    .line 269
    :cond_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 271
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 244
    goto/16 :goto_0

    :cond_5
    move v3, v2

    .line 245
    goto/16 :goto_1

    :cond_6
    move v1, v2

    .line 246
    goto/16 :goto_2

    .line 258
    :cond_7
    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyUtil;->decodeAndDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 266
    :cond_8
    invoke-static {v8}, Lde/gdata/mobilesecurity/util/MyUtil;->decodeAndDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM antitheftconfig WHERE configuration = \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 282
    if-eqz v9, :cond_2

    .line 283
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    const-string v0, "permissions"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 285
    const-string v0, "locate"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    .line 286
    :goto_0
    const-string v3, "wipe"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v1, :cond_4

    move v3, v1

    .line 287
    :goto_1
    const-string v4, "ring"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v1, :cond_5

    move v4, v1

    .line 288
    :goto_2
    const-string v5, "mute"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v1, :cond_6

    move v5, v1

    .line 289
    :goto_3
    const-string v6, "lock"

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v1, :cond_7

    move v6, v1

    .line 290
    :goto_4
    const-string v7, "setpwd"

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v1, :cond_8

    move v7, v1

    .line 292
    :goto_5
    const-string v8, "simlock"

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v1, :cond_9

    move v8, v1

    .line 293
    :goto_6
    const-string v10, "simlocate"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-ne v10, v1, :cond_a

    .line 295
    :goto_7
    const-string v2, "password"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 296
    const-string v10, "email"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 297
    const-string v11, "phone"

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 299
    iget-object v12, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v12, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteLocate(Z)V

    .line 300
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteWipe(Z)V

    .line 301
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteRing(Z)V

    .line 302
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v5}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteMute(Z)V

    .line 303
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v6}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteLock(Z)V

    .line 304
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v7}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowDevicePasswordSet(Z)V

    .line 306
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v8}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setLockOnSimChange(Z)V

    .line 307
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setLocateOnSimChange(Z)V

    .line 309
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v10}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setEmailForLocation(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v11}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setRemotePasswordResetSender(Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v3, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->a:Landroid/content/Context;

    if-eqz v2, :cond_0

    const-string v0, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_0
    const-string v0, ""

    :goto_8
    invoke-virtual {v1, v3, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setSMSCommandPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 317
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 319
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 285
    goto/16 :goto_0

    :cond_4
    move v3, v2

    .line 286
    goto/16 :goto_1

    :cond_5
    move v4, v2

    .line 287
    goto/16 :goto_2

    :cond_6
    move v5, v2

    .line 288
    goto/16 :goto_3

    :cond_7
    move v6, v2

    .line 289
    goto/16 :goto_4

    :cond_8
    move v7, v2

    .line 290
    goto/16 :goto_5

    :cond_9
    move v8, v2

    .line 292
    goto/16 :goto_6

    :cond_a
    move v1, v2

    .line 293
    goto/16 :goto_7

    .line 311
    :cond_b
    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyUtil;->decodeAndDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM antiphishingconfig WHERE configuration = \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 330
    if-eqz v3, :cond_3

    .line 331
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 332
    const-string v0, "permissions"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 333
    const-string v0, "enabled"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    .line 334
    :goto_0
    const-string v4, "permit"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 335
    :cond_0
    const-string v4, "block"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 336
    :cond_1
    const-string v4, "wlanonly"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v1, :cond_5

    .line 338
    :goto_1
    iget-object v2, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setWebshieldActivated(Z)V

    .line 339
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setWebshieldOnlyWlan(Z)V

    .line 342
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 344
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 333
    goto :goto_0

    :cond_5
    move v1, v2

    .line 336
    goto :goto_1
.end method

.method private e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM callfilterconfig WHERE configuration = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 355
    if-eqz v1, :cond_1

    .line 356
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    const-string v2, "permissions"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 358
    const-string v2, "incoming"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 359
    const-string v3, "outgoing"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 360
    const-string v4, "unknown"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v0, :cond_2

    .line 362
    :goto_0
    iget-object v4, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v4, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setBlockIncomingCalls(Ljava/lang/String;)V

    .line 363
    iget-object v2, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setBlockOutgoingCalls(Ljava/lang/String;)V

    .line 364
    iget-object v2, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowUnknownNumbers(Z)V

    .line 367
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 369
    :cond_1
    return-void

    .line 360
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public apply(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/mms/ProfileSelector;->apply(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public apply(Ljava/lang/String;Z)Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    .line 61
    const/4 v0, 0x0

    .line 62
    iget-object v2, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->a:Landroid/content/Context;

    const-string v3, "PS.apply"

    invoke-static {v2, v3}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT scan_config, applock_config, antitheft_config, antiphishing_config, callfilter_config, type FROM profiles WHERE profile =\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 68
    if-eqz v3, :cond_4

    .line 69
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 70
    const-string v0, "scan_config"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    const-string v4, "applock_config"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 72
    const-string v5, "antiphishing_config"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 73
    const-string v6, "antitheft_config"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 74
    const-string v7, "callfilter_config"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 76
    iget-object v8, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v8}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfile()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 77
    const/16 v8, 0x1f

    invoke-virtual {p0, v2, v8}, Lde/gdata/mobilesecurity/mms/ProfileSelector;->storePreferencesInProfile(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 79
    if-eqz p2, :cond_0

    .line 80
    const-string v8, "Private"

    iget-object v9, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v9}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfile()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 81
    const-string v8, "Default"

    invoke-virtual {p0, v8, v6, v1}, Lde/gdata/mobilesecurity/mms/ProfileSelector;->copyProfileSettings(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 83
    :cond_0
    iget-object v8, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v8, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setProfile(Ljava/lang/String;)V

    .line 84
    const-string v8, "type"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 85
    iget-object v9, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v9, v8}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setProfileType(I)V

    .line 88
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 90
    iget-object v8, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v8, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setScanConfig(Ljava/lang/String;)V

    .line 91
    iget-object v8, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v8, v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setApplockConfig(Ljava/lang/String;)V

    .line 92
    iget-object v8, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v8, v5}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAntiphishingConfig(Ljava/lang/String;)V

    .line 93
    iget-object v8, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v8, v6}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAntitheftConfig(Ljava/lang/String;)V

    .line 94
    iget-object v8, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v8, v7}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setCallfilterConfig(Ljava/lang/String;)V

    .line 96
    iget-object v8, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->a:Landroid/content/Context;

    invoke-static {v8, v2}, Lde/gdata/mobilesecurity/mms/ProfileSelector;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 98
    invoke-direct {p0, v2, v0}, Lde/gdata/mobilesecurity/mms/ProfileSelector;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0, v2, v4}, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0, v2, v6}, Lde/gdata/mobilesecurity/mms/ProfileSelector;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0, v2, v5}, Lde/gdata/mobilesecurity/mms/ProfileSelector;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0, v2, v7}, Lde/gdata/mobilesecurity/mms/ProfileSelector;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/services/WatcherService;->loadProtectedAppList(Landroid/content/Context;Z)V

    move v0, v1

    .line 109
    :cond_2
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 111
    :cond_3
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->a:Landroid/content/Context;

    iget-object v2, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/intents/ProfileSelector;->updateWidgetCaption(Landroid/content/Context;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    .line 114
    :cond_4
    const-string v1, "PS.apply"

    invoke-static {v1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 116
    return v0
.end method

.method public copyProfileSettings(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->a:Landroid/content/Context;

    const-string v1, "copyProfileSettings"

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT OR REPLACE INTO antitheftconfig (id, configuration, permissions, locate, wipe, ring, mute, lock, setpwd, simlock, simlocate, password, phone, email) SELECT  MAX(target.id),  target.configuration, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_0

    const-string v0, "target"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "permissions"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "source."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "locate"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "source."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "wipe"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "source."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ring"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "source."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mute"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "source."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "lock"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "source."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "setpwd"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "source."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "simlock"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "source."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "simlocate"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "source."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "password"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "source."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "source."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "email"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " FROM "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "antitheftconfig"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " source, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "antitheftconfig"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " target WHERE source."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "configuration"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' AND target."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "configuration"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\';"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT OR REPLACE INTO antiphishingconfig (id, configuration, permissions, permit, block, enabled, wlanonly) SELECT MAX(target.id), target.configuration, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_1

    const-string v0, "target"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "permissions"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "source."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "permit"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "source."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "block"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "source."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "enabled"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "source."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "wlanonly"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " FROM "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "antiphishingconfig"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " source, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "antiphishingconfig"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " target "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "WHERE source."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "configuration"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' AND target."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "configuration"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\';"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT OR REPLACE INTO scanconfig (id, configuration, permissions, autoscan, scanperiod, scantype, oninstall, batterysaver, pluggedonly, autoupdate, updateperiod, updateonlywlan) SELECT MAX(target.id), target.configuration, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_2

    const-string v0, "target"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "permissions"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " source."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "autoscan"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " source."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "scanperiod"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " source."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "scantype"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " source."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "oninstall"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " source."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "batterysaver"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " source."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "pluggedonly"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " source."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "autoupdate"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " source."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "updateperiod"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " source."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "updateonlywlan"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "FROM "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "scanconfig"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " source, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "scanconfig"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " target WHERE source."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "configuration"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' AND target."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "configuration"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\';"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT OR REPLACE INTO callfilterconfig (id, configuration, permissions, incoming, outgoing, unknown) SELECT MAX(target.id), target.configuration, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_3

    const-string v0, "target"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "permissions"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", source."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "incoming"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", source."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "outgoing"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", source."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "unknown"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "FROM "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "callfilterconfig"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " source, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "callfilterconfig"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " target WHERE source."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "configuration"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' AND target."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "configuration"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\';"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 194
    const-string v0, "copyProfileSettings"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 195
    return-void

    .line 129
    :cond_0
    const-string v0, "source"

    goto/16 :goto_0

    .line 148
    :cond_1
    const-string v0, "source"

    goto/16 :goto_1

    .line 162
    :cond_2
    const-string v0, "source"

    goto/16 :goto_2

    .line 181
    :cond_3
    const-string v0, "source"

    goto/16 :goto_3
.end method

.method public storePreferencesInProfile(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 43

    .prologue
    .line 376
    new-instance v22, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->a:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 377
    new-instance v7, Lde/gdata/mobilesecurity/util/BasePreferences;

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->a:Landroid/content/Context;

    invoke-direct {v7, v2}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 379
    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getScanPermissions()I

    move-result v23

    .line 380
    invoke-virtual {v7}, Lde/gdata/mobilesecurity/util/BasePreferences;->isPeriodicScan()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    .line 381
    :goto_0
    invoke-virtual {v7}, Lde/gdata/mobilesecurity/util/BasePreferences;->getPeriodicScanIntervalDays()I

    move-result v24

    .line 382
    invoke-virtual {v7}, Lde/gdata/mobilesecurity/util/BasePreferences;->getPeriodicScanType()I

    move-result v25

    .line 383
    invoke-virtual {v7}, Lde/gdata/mobilesecurity/util/BasePreferences;->isScanAppOnInstall()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    .line 384
    :goto_1
    invoke-virtual {v7}, Lde/gdata/mobilesecurity/util/BasePreferences;->skipOnBatteryLow()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    .line 385
    :goto_2
    invoke-virtual {v7}, Lde/gdata/mobilesecurity/util/BasePreferences;->scanOnPowerConnected()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    .line 386
    :goto_3
    invoke-virtual {v7}, Lde/gdata/mobilesecurity/util/BasePreferences;->isPeriodicUpdate()Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x1

    .line 387
    :goto_4
    invoke-virtual {v7}, Lde/gdata/mobilesecurity/util/BasePreferences;->getPeriodicUpdateInterval()Ljava/lang/String;

    move-result-object v26

    .line 388
    invoke-virtual {v7}, Lde/gdata/mobilesecurity/util/BasePreferences;->isPeriodicUpdateWifiOnly()Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x1

    .line 390
    :goto_5
    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAntitheftPermissions()I

    move-result v27

    .line 391
    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getSMSCommandPassword()Ljava/lang/String;

    move-result-object v28

    .line 392
    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getEmailForLocation()Ljava/lang/String;

    move-result-object v29

    .line 393
    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getRemotePasswordResetSender()Ljava/lang/String;

    move-result-object v30

    .line 394
    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowRemoteLocate()Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v8, 0x1

    .line 395
    :goto_6
    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowRemoteWipe()Z

    move-result v9

    if-eqz v9, :cond_c

    const/4 v9, 0x1

    .line 396
    :goto_7
    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowRemoteRing()Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v10, 0x1

    .line 397
    :goto_8
    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowRemoteMute()Z

    move-result v11

    if-eqz v11, :cond_e

    const/4 v11, 0x1

    .line 398
    :goto_9
    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowRemoteLock()Z

    move-result v12

    if-eqz v12, :cond_f

    const/4 v12, 0x1

    .line 399
    :goto_a
    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowDevicePasswordSet()Z

    move-result v13

    if-eqz v13, :cond_10

    const/4 v13, 0x1

    .line 400
    :goto_b
    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->lockOnSimChange()Z

    move-result v14

    if-eqz v14, :cond_11

    const/4 v14, 0x1

    .line 401
    :goto_c
    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->locateOnSimChange()Z

    move-result v15

    if-eqz v15, :cond_12

    const/4 v15, 0x1

    .line 403
    :goto_d
    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAntiphishingPermissions()I

    move-result v31

    .line 404
    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isWebshieldActivated()Z

    move-result v16

    if-eqz v16, :cond_13

    const/16 v16, 0x1

    .line 405
    :goto_e
    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isWebshieldOnlyWlan()Z

    move-result v17

    if-eqz v17, :cond_14

    const/16 v17, 0x1

    .line 407
    :goto_f
    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppProtectionActivated()Z

    move-result v18

    if-eqz v18, :cond_15

    const/16 v18, 0x1

    .line 408
    :goto_10
    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockPermissions()I

    move-result v32

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/gdata/mobilesecurity/mms/ProfileSelector;->a:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v33

    .line 410
    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionEmail()Ljava/lang/String;

    move-result-object v34

    .line 411
    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionQuestion()Ljava/lang/String;

    move-result-object v35

    .line 412
    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionCustomQuestion()Ljava/lang/String;

    move-result-object v36

    .line 413
    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionAnswer()Ljava/lang/String;

    move-result-object v37

    .line 414
    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppDeniedByDefault()Z

    move-result v19

    if-eqz v19, :cond_16

    const/16 v19, 0x1

    .line 415
    :goto_11
    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppProtectedByDefault()Z

    move-result v20

    if-eqz v20, :cond_17

    const/16 v20, 0x1

    .line 417
    :goto_12
    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getCallfilterPermissions()I

    move-result v38

    .line 418
    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getBlockIncomingCalls()Ljava/lang/String;

    move-result-object v39

    .line 419
    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getBlockOutgoingCalls()Ljava/lang/String;

    move-result-object v40

    .line 420
    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowUnknownNumbers()Z

    move-result v21

    if-eqz v21, :cond_18

    const/16 v21, 0x1

    .line 422
    :goto_13
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "INSERT OR REPLACE INTO scanconfig  SELECT Max(id), \'"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getScanConfig()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "\', "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v41, ", "

    move-object/from16 v0, v23

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v23, ", "

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v23, ", "

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v23, ", "

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FROM scanconfig WHERE configuration = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getScanConfig()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\';"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 428
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT OR REPLACE INTO applockconfig  SELECT Max(id), \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockConfig()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v33 .. v33}, Lde/gdata/mobilesecurity/util/MyUtil;->encryptAndEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v37 .. v37}, Lde/gdata/mobilesecurity/util/MyUtil;->encryptAndEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' FROM applockconfig WHERE configuration = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockConfig()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\';"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 436
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSERT OR REPLACE INTO antitheftconfig  SELECT Max(id), \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAntitheftConfig()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v28 .. v28}, Lde/gdata/mobilesecurity/util/MyUtil;->encryptAndEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " FROM antitheftconfig WHERE configuration = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAntitheftConfig()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\';"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 444
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT OR REPLACE INTO antiphishingconfig  SELECT Max(id), \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAntiphishingConfig()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\', "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", \'reg:.*\',\'cat:malware\',"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " FROM antiphishingconfig WHERE configuration = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAntiphishingConfig()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\';"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 449
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INSERT OR REPLACE INTO callfilterconfig  SELECT Max(id), \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getCallfilterConfig()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " FROM callfilterconfig WHERE configuration = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getCallfilterConfig()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\';"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 456
    and-int/lit8 v7, p2, 0x1

    if-eqz v7, :cond_0

    .line 457
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 458
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 461
    :cond_0
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_1

    .line 462
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 463
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 466
    :cond_1
    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_2

    .line 467
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 468
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 471
    :cond_2
    and-int/lit8 v2, p2, 0x8

    if-eqz v2, :cond_3

    .line 472
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 473
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 476
    :cond_3
    and-int/lit8 v2, p2, 0x10

    if-eqz v2, :cond_4

    .line 477
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 478
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 480
    :cond_4
    return-void

    .line 380
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 383
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 384
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 385
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 386
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 388
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 394
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 395
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 396
    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_8

    .line 397
    :cond_e
    const/4 v11, 0x0

    goto/16 :goto_9

    .line 398
    :cond_f
    const/4 v12, 0x0

    goto/16 :goto_a

    .line 399
    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_b

    .line 400
    :cond_11
    const/4 v14, 0x0

    goto/16 :goto_c

    .line 401
    :cond_12
    const/4 v15, 0x0

    goto/16 :goto_d

    .line 404
    :cond_13
    const/16 v16, 0x0

    goto/16 :goto_e

    .line 405
    :cond_14
    const/16 v17, 0x0

    goto/16 :goto_f

    .line 407
    :cond_15
    const/16 v18, 0x0

    goto/16 :goto_10

    .line 414
    :cond_16
    const/16 v19, 0x0

    goto/16 :goto_11

    .line 415
    :cond_17
    const/16 v20, 0x0

    goto/16 :goto_12

    .line 420
    :cond_18
    const/16 v21, 0x0

    goto/16 :goto_13
.end method
