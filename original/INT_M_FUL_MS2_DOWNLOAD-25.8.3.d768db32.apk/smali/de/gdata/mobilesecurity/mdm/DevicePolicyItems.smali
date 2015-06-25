.class public Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field private b:I

.field private c:Z

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->a:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public getMinimumOSVersion()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->d:I

    return v0
.end method

.method public getPasswordStrength()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->e:I

    return v0
.end method

.method public getPolicyID()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->b:I

    return v0
.end method

.method public isCameraAllowed()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->f:Z

    return v0
.end method

.method public isClipboardAllowed()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->g:Z

    return v0
.end method

.method public isFactoryResetAllowed()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->h:Z

    return v0
.end method

.method public isMicrophoneAllowed()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->i:Z

    return v0
.end method

.method public isMockLocationsAllowed()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->j:Z

    return v0
.end method

.method public isRootAllowed()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->c:Z

    return v0
.end method

.method public isUsbMediaPlayerAllowed()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->k:Z

    return v0
.end method

.method public loadPolicyItemsFromDB(I)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 112
    :try_start_0
    iget-object v2, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->a:Landroid/content/Context;

    const-string v3, "loadPolicyItemsFromDB"

    invoke-static {v2, v3}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 114
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 115
    const-string v4, "SELECT * FROM mdmpolicyitems WHERE policy_id = ?"

    invoke-virtual {v2, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 117
    if-eqz v3, :cond_1

    .line 118
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    const-string v2, "policy_id"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->b:I

    .line 120
    const-string v2, "root_allowed"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->c:Z

    .line 121
    const-string v2, "minimum_os_version"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->d:I

    .line 122
    const-string v2, "password_strength"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->e:I

    .line 123
    const-string v2, "camera_allowed"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->f:Z

    .line 124
    const-string v2, "clipboard_allowed"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    :goto_2
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->g:Z

    .line 125
    const-string v2, "factory_reset_allowed"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v0

    :goto_3
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->h:Z

    .line 126
    const-string v2, "microphone_allowed"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v0

    :goto_4
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->i:Z

    .line 127
    const-string v2, "mock_locations_allowed"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v0

    :goto_5
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->j:Z

    .line 128
    const-string v2, "usb_mediaplayer_allowed"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_8

    :goto_6
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->k:Z

    .line 130
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :cond_1
    const-string v0, "loadPolicyItemsFromDB"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 138
    :goto_7
    return-void

    :cond_2
    move v2, v1

    .line 120
    goto :goto_0

    :cond_3
    move v2, v1

    .line 123
    goto :goto_1

    :cond_4
    move v2, v1

    .line 124
    goto :goto_2

    :cond_5
    move v2, v1

    .line 125
    goto :goto_3

    :cond_6
    move v2, v1

    .line 126
    goto :goto_4

    :cond_7
    move v2, v1

    .line 127
    goto :goto_5

    :cond_8
    move v0, v1

    .line 128
    goto :goto_6

    .line 132
    :catch_0
    move-exception v0

    .line 133
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while executing loadPolicyItemsFromDB(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    const-string v0, "loadPolicyItemsFromDB"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    goto :goto_7

    :catchall_0
    move-exception v0

    const-string v1, "loadPolicyItemsFromDB"

    invoke-static {v1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    throw v0
.end method

.method public savePolicyItems()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 141
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->c:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 142
    :goto_0
    iget-boolean v3, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->f:Z

    if-eqz v3, :cond_1

    move v3, v1

    .line 143
    :goto_1
    iget-boolean v4, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->g:Z

    if-eqz v4, :cond_2

    move v4, v1

    .line 144
    :goto_2
    iget-boolean v5, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->h:Z

    if-eqz v5, :cond_3

    move v5, v1

    .line 145
    :goto_3
    iget-boolean v6, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->i:Z

    if-eqz v6, :cond_4

    move v6, v1

    .line 146
    :goto_4
    iget-boolean v7, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->j:Z

    if-eqz v7, :cond_5

    move v7, v1

    .line 147
    :goto_5
    iget-boolean v8, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->k:Z

    if-eqz v8, :cond_6

    .line 149
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "INSERT OR REPLACE INTO mdmpolicyitems SELECT Max(id), "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v8, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->b:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ", "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM mdmpolicyitems WHERE policy_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    :try_start_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->a:Landroid/content/Context;

    const-string v2, "savePolicyItems"

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 157
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    const-string v0, "savePolicyItems"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 166
    :goto_7
    return-void

    :cond_0
    move v0, v2

    .line 141
    goto/16 :goto_0

    :cond_1
    move v3, v2

    .line 142
    goto/16 :goto_1

    :cond_2
    move v4, v2

    .line 143
    goto/16 :goto_2

    :cond_3
    move v5, v2

    .line 144
    goto/16 :goto_3

    :cond_4
    move v6, v2

    .line 145
    goto/16 :goto_4

    :cond_5
    move v7, v2

    .line 146
    goto/16 :goto_5

    :cond_6
    move v1, v2

    .line 147
    goto/16 :goto_6

    .line 160
    :catch_0
    move-exception v0

    .line 161
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while executing savePolicyItems(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    const-string v0, "savePolicyItems"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    goto :goto_7

    :catchall_0
    move-exception v0

    const-string v1, "savePolicyItems"

    invoke-static {v1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    throw v0
.end method

.method public setCameraAllowed(Z)V
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->f:Z

    .line 68
    return-void
.end method

.method public setClipboardAllowed(Z)V
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->g:Z

    .line 76
    return-void
.end method

.method public setFactoryResetAllowed(Z)V
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->h:Z

    .line 84
    return-void
.end method

.method public setMicrophoneAllowed(Z)V
    .locals 0

    .prologue
    .line 91
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->i:Z

    .line 92
    return-void
.end method

.method public setMinimumOSVersion(I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->d:I

    .line 52
    return-void
.end method

.method public setMockLocationsAllowed(Z)V
    .locals 0

    .prologue
    .line 99
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->j:Z

    .line 100
    return-void
.end method

.method public setPasswordStrength(I)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->e:I

    .line 60
    return-void
.end method

.method public setPolicyID(I)V
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->b:I

    .line 36
    return-void
.end method

.method public setRootAllowed(Z)V
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->c:Z

    .line 44
    return-void
.end method

.method public setUsbMediaPlayerAllowed(Z)V
    .locals 0

    .prologue
    .line 107
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->k:Z

    .line 108
    return-void
.end method
