.class public Lde/gdata/mobilesecurity/mdm/DevicePolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final POLICY_ID:I = 0x5

.field public static final POLICY_NAME_PREFIX:Ljava/lang/String; = "POLICY"

.field public static final TRIGGER_ACTION_MMS_CHANGE:I = 0x3

.field public static final TRIGGER_ACTION_PRIVATE_PROFILE:I = 0x4

.field public static final TRIGGER_ACTION_PROFILE_CHANGE:I = 0x2

.field public static final TRIGGER_ACTION_WIFI_CHANGE:I = 0x1


# instance fields
.field a:Landroid/content/Context;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->a:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private a()Z
    .locals 3

    .prologue
    .line 122
    new-instance v0, Lde/gdata/mobilesecurity/mdm/DeviceConditions;

    iget-object v1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/mdm/DeviceConditions;-><init>(Landroid/content/Context;)V

    .line 123
    new-instance v1, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;

    iget-object v2, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;-><init>(Landroid/content/Context;)V

    .line 124
    iget v2, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->b:I

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->loadPolicyItemsFromDB(I)V

    .line 126
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mdm/DeviceConditions;->isDeviceRooted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->isRootAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 128
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getArrayListDevicePolicies(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/mdm/DevicePolicy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    :try_start_0
    const-string v0, "DevicePolicy"

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 62
    const-string v2, "SELECT * FROM mdmpolicies"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    new-instance v2, Lde/gdata/mobilesecurity/mdm/DevicePolicy;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/mdm/DevicePolicy;-><init>(Landroid/content/Context;)V

    .line 66
    const-string v3, "policy_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->setPolicyID(I)V

    .line 67
    const-string v3, "profile_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->setProfileName(Ljava/lang/String;)V

    .line 68
    const-string v3, "etag"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->setETag(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while executing getArrayListDevicePolicies(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    const-string v0, "DevicePolicy"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 80
    :goto_1
    return-object v1

    .line 71
    :cond_0
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    :cond_1
    const-string v0, "DevicePolicy"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "DevicePolicy"

    invoke-static {v1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public checkPolicy(I)V
    .locals 3

    .prologue
    .line 132
    invoke-direct {p0}, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->a()Z

    move-result v0

    .line 133
    new-instance v1, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;

    iget-object v2, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;-><init>(Landroid/content/Context;)V

    .line 134
    iget v2, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->b:I

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->loadDevicePolicyReactionItemFromDB(I)V

    .line 136
    if-nez v0, :cond_1

    .line 137
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->triggerWifiReaction(ZZ)V

    .line 139
    iget-object v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->a:Landroid/content/Context;

    invoke-static {v0}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->addRootedDeviceReport(Landroid/content/Context;)V

    .line 141
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 142
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getRemotePasswordResetSender()Ljava/lang/String;

    move-result-object v0

    .line 144
    const-string v1, "google_sdk"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sdk"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    iget-object v1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->lockPhone(Landroid/content/Context;Ljava/lang/String;)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-virtual {v1, v0, p1}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->triggerDevicePolicyReaction(ZI)V

    goto :goto_0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyID()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->b:I

    return v0
.end method

.method public getProfileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->c:Ljava/lang/String;

    return-object v0
.end method

.method public loadPolicyFromDB(I)V
    .locals 4

    .prologue
    .line 85
    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->a:Landroid/content/Context;

    const-string v1, "loadPolicyFromDB"

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 86
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 87
    const-string v2, "SELECT * FROM mdmpolicies WHERE policy_id = ?"

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_1

    .line 89
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const-string v1, "policy_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->b:I

    .line 91
    const-string v1, "profile_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->c:Ljava/lang/String;

    .line 92
    const-string v1, "etag"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->d:Ljava/lang/String;

    .line 94
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_1
    const-string v0, "loadPolicyFromDB"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 102
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while executing loadPolicyFromDB(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    const-string v0, "loadPolicyFromDB"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "loadPolicyFromDB"

    invoke-static {v1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    throw v0
.end method

.method public savePolicy()V
    .locals 3

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT OR REPLACE INTO mdmpolicies SELECT Max(id), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' FROM mdmpolicies WHERE policy_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    :try_start_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->a:Landroid/content/Context;

    const-string v2, "savePolicy"

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 110
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    const-string v0, "savePolicy"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 119
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while executing savePolicy(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    const-string v0, "savePolicy"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "savePolicy"

    invoke-static {v1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    throw v0
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->d:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setPolicyID(I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->b:I

    .line 39
    return-void
.end method

.method public setProfileName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->c:Ljava/lang/String;

    .line 47
    return-void
.end method
