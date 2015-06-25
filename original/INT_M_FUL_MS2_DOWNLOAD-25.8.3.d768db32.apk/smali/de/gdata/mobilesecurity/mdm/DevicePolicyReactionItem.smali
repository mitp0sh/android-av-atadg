.class public Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final REACTION_ITEM_NAME_PROFILE:Ljava/lang/String; = "profile"

.field public static final REACTION_ITEM_NAME_WIFI:Ljava/lang/String; = "wifi"

.field public static final REACTION_ITEM_SEVERITY_ALLOWED:I = 0x0

.field public static final REACTION_ITEM_SEVERITY_PROHIBITED:I = 0x2

.field public static final REACTION_ITEM_SEVERITY_REQUIRED:I = 0x1


# instance fields
.field a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->a:Landroid/content/Context;

    .line 47
    return-void
.end method

.method public static addRootedDeviceReport(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 327
    const/16 v0, 0x20

    const v1, 0x7f0d0375

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2, v2}, Lde/gdata/mobilesecurity/services/WatcherService;->insertLogEntry(Landroid/content/Context;ILjava/lang/String;ZI)V

    .line 329
    return-void
.end method

.method public static addSetCameraStateReport(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 332
    const/16 v0, 0x2a

    const v1, 0x7f0d0376

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2, v2}, Lde/gdata/mobilesecurity/services/WatcherService;->insertLogEntry(Landroid/content/Context;ILjava/lang/String;ZI)V

    .line 334
    return-void
.end method

.method public static connectToWifi(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 184
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 185
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 187
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_0
    const-string v1, ""

    .line 188
    :goto_0
    const-string v2, "\""

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 190
    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 191
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 193
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyUtil;->getEmptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 194
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 196
    if-eqz v3, :cond_1

    .line 198
    const-string v4, "\""

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 202
    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 205
    :goto_1
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 214
    :cond_2
    return-void

    .line 187
    :cond_3
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public static setCameraState(Landroid/content/Context;Z)V
    .locals 7

    .prologue
    const/16 v6, 0x2a

    const/4 v5, 0x1

    .line 239
    new-instance v1, Landroid/content/ComponentName;

    const-class v0, Lde/gdata/mobilesecurity/receiver/DevAdminReceiver;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    new-instance v2, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 241
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSLogDetails()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GDATA CAMERA setCameraState("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v6, v0, v5, v5}, Lde/gdata/mobilesecurity/services/WatcherService;->insertLogEntry(Landroid/content/Context;ILjava/lang/String;ZI)V

    .line 245
    :cond_0
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 247
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_3

    .line 248
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSLogDetails()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GDATA CAMERA SDK INT ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v6, v3, v5, v5}, Lde/gdata/mobilesecurity/services/WatcherService;->insertLogEntry(Landroid/content/Context;ILjava/lang/String;ZI)V

    .line 252
    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 253
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSLogDetails()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 254
    const-string v2, "GDATA CAMERA ADMIN ACTIVE true"

    invoke-static {p0, v6, v2, v5, v5}, Lde/gdata/mobilesecurity/services/WatcherService;->insertLogEntry(Landroid/content/Context;ILjava/lang/String;ZI)V

    .line 257
    :cond_2
    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setCameraDisabled(Landroid/content/ComponentName;Z)V

    .line 266
    :cond_3
    :goto_0
    return-void

    .line 259
    :cond_4
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSLogDetails()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 260
    const-string v0, "GDATA CAMERA ADMIN ACTIVE false"

    invoke-static {p0, v6, v0, v5, v5}, Lde/gdata/mobilesecurity/services/WatcherService;->insertLogEntry(Landroid/content/Context;ILjava/lang/String;ZI)V

    .line 263
    :cond_5
    invoke-static {p0}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->addSetCameraStateReport(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public addStorageEncryptionReport()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 297
    iget-object v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->a:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 299
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v2, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 301
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getEncryptionSuccess()Z

    move-result v2

    if-nez v2, :cond_2

    .line 302
    iget-boolean v2, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->d:Z

    if-eqz v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_2

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getLastEncryptionLog()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x2932e00

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 304
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getLastDeviceAdminRedirect()J

    move-result-wide v2

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getLastEncryptionLog()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getLastDeviceAdminRedirect()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getLastEncryptionLog()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getLastEncryptionLog()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 308
    :cond_1
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setLastEncryptionLog(J)V

    .line 311
    iget-object v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->a:Landroid/content/Context;

    const/16 v1, 0x1e

    iget-object v2, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->a:Landroid/content/Context;

    const v3, 0x7f0d0378

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v8, v8}, Lde/gdata/mobilesecurity/services/WatcherService;->insertLogEntry(Landroid/content/Context;ILjava/lang/String;ZI)V

    .line 324
    :cond_2
    :goto_0
    return-void

    .line 315
    :cond_3
    invoke-virtual {v1, v8}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setEncryptionSuccess(Z)V

    .line 316
    iget-object v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->a:Landroid/content/Context;

    const/16 v1, 0x1f

    iget-object v2, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->a:Landroid/content/Context;

    const v3, 0x7f0d0377

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v8}, Lde/gdata/mobilesecurity/services/WatcherService;->insertLogEntry(Landroid/content/Context;ILjava/lang/String;ZI)V

    goto :goto_0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->c:I

    return v0
.end method

.method public getPolicyId()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->b:I

    return v0
.end method

.method public getProfileId()J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->h:J

    return-wide v0
.end method

.method public getRequireEncryption()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->d:Z

    return v0
.end method

.method public getWlanEncryption()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->g:I

    return v0
.end method

.method public getWlanPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getWlanSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public loadDevicePolicyReactionItemFromDB(I)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 107
    :try_start_0
    iget-object v2, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->a:Landroid/content/Context;

    const-string v3, "loadDevicePolicyReactionItemFromDB"

    invoke-static {v2, v3}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 109
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 110
    const-string v4, "SELECT * FROM mdmpolicyreaction_item WHERE policy_id = ?"

    invoke-virtual {v2, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 112
    if-eqz v2, :cond_1

    .line 113
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    const-string v3, "policy_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->b:I

    .line 115
    const-string v3, "phone_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->c:I

    .line 116
    const-string v3, "require_encryption"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->d:Z

    .line 117
    const-string v0, "wlan_ssid"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->e:Ljava/lang/String;

    .line 118
    const-string v0, "wlan_password"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->f:Ljava/lang/String;

    .line 119
    const-string v0, "wlan_encryption"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->g:I

    .line 120
    const-string v0, "profile_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->h:J

    .line 122
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_1
    const-string v0, "loadDevicePolicyReactionItemFromDB"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 130
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 116
    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while executing loadDevicePolicyReactionItemFromDB(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    const-string v0, "loadDevicePolicyReactionItemFromDB"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "loadDevicePolicyReactionItemFromDB"

    invoke-static {v1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    throw v0
.end method

.method public saveDevicePolicyReactionItem()V
    .locals 4

    .prologue
    .line 133
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 134
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT OR REPLACE INTO mdmpolicyreaction_item SELECT Max(id), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->h:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM mdmpolicyreaction_item WHERE policy_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    :try_start_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->a:Landroid/content/Context;

    const-string v2, "saveDevicePolicyReactionItem"

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 142
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    const-string v0, "saveDevicePolicyReactionItem"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 151
    :goto_1
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while executing saveDevicePolicyReactionItem(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    const-string v0, "saveDevicePolicyReactionItem"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "saveDevicePolicyReactionItem"

    invoke-static {v1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    throw v0
.end method

.method public setPhoneType(I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->c:I

    .line 63
    return-void
.end method

.method public setPolicyId(I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->b:I

    .line 55
    return-void
.end method

.method public setProfileId(J)V
    .locals 1

    .prologue
    .line 102
    iput-wide p1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->h:J

    .line 103
    return-void
.end method

.method public setRequireEncryption(Z)V
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->d:Z

    .line 71
    return-void
.end method

.method public setWlanEncryption(I)V
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->g:I

    .line 95
    return-void
.end method

.method public setWlanPassword(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->f:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setWlanSsid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->e:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public triggerCameraReaction()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 226
    new-instance v1, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;

    iget-object v2, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;-><init>(Landroid/content/Context;)V

    .line 227
    iget v2, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->b:I

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->loadPolicyItemsFromDB(I)V

    .line 231
    new-instance v2, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v3, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfileType()I

    move-result v2

    sget-object v3, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile$Types;->CORPORATE:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 232
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->isCameraAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 235
    :cond_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->setCameraState(Landroid/content/Context;Z)V

    .line 236
    return-void
.end method

.method public triggerDevicePolicyReaction(ZI)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 154
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 155
    iget-wide v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->h:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->triggerProfileReaction(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0, p1, v2}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->triggerWifiReaction(ZZ)V

    .line 157
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->triggerCameraReaction()V

    .line 158
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->triggerEncryptionReaction()V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 160
    invoke-virtual {p0, p1, v2}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->triggerWifiReaction(ZZ)V

    goto :goto_0

    .line 161
    :cond_2
    if-ne p2, v1, :cond_3

    .line 162
    invoke-virtual {p0, p1, v2}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->triggerWifiReaction(ZZ)V

    goto :goto_0

    .line 163
    :cond_3
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 164
    invoke-virtual {p0, v1, v2}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->triggerWifiReaction(ZZ)V

    .line 165
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->triggerCameraReaction()V

    goto :goto_0
.end method

.method public triggerEncryptionReaction()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 270
    new-instance v1, Landroid/content/ComponentName;

    iget-object v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->a:Landroid/content/Context;

    const-class v2, Lde/gdata/mobilesecurity/receiver/DevAdminReceiver;

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 271
    iget-object v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->a:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 273
    new-instance v2, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;

    iget-object v3, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;-><init>(Landroid/content/Context;)V

    .line 274
    iget v3, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->b:I

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->loadPolicyItemsFromDB(I)V

    .line 276
    iget-boolean v2, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->d:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 278
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 281
    new-instance v2, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v3, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getLastDeviceAdminRedirect()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 283
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordSufficient()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setLastDeviceAdminRedirect(J)V

    .line 285
    iget-boolean v2, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->d:Z

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    .line 286
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.START_ENCRYPTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 288
    iget-object v1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 293
    :cond_0
    return-void
.end method

.method public triggerProfileReaction(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 217
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Lde/gdata/mobilesecurity/mms/ProfileSelector;

    iget-object v1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/mms/ProfileSelector;-><init>(Landroid/content/Context;)V

    .line 221
    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/mms/ProfileSelector;->apply(Ljava/lang/String;)Z

    .line 223
    :cond_0
    return-void
.end method

.method public triggerWifiReaction(ZZ)V
    .locals 2

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 173
    iget-object v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->a:Landroid/content/Context;

    iget-object v1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->e:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lde/gdata/mobilesecurity/util/MyUtil;->disconnectFromWifi(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 181
    :goto_0
    return-void

    .line 175
    :cond_0
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfileType()I

    move-result v0

    sget-object v1, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile$Types;->PRIVATE:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 176
    iget-object v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->a:Landroid/content/Context;

    iget-object v1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->e:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lde/gdata/mobilesecurity/util/MyUtil;->disconnectFromWifi(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->a:Landroid/content/Context;

    iget-object v1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->connectToWifi(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
