.class public Lde/gdata/mobilesecurity/receiver/SMSReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field a:[Ljava/lang/String;

.field b:[Ljava/lang/String;

.field c:[Landroid/telephony/SmsMessage;

.field d:Z

.field e:Ljava/lang/String;

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 37
    iput-object v2, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->a:[Ljava/lang/String;

    .line 38
    iput-object v2, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->b:[Ljava/lang/String;

    .line 40
    iput-object v2, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->c:[Landroid/telephony/SmsMessage;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->d:Z

    .line 44
    iput-object v2, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->e:Ljava/lang/String;

    .line 47
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->f:Z

    .line 49
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->g:Z

    .line 51
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->h:Z

    .line 53
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->i:Z

    .line 55
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->j:Z

    .line 57
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->k:Z

    .line 59
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->l:Z

    .line 426
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v3, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v3, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getSMSCommandPassword()Ljava/lang/String;

    move-result-object v4

    .line 68
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v5, "\\s+"

    const-string v6, " "

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " *ring\\s*"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " *mute\\s*"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " *lock\\s*"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " *wipe\\s*"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " *locate\\s*"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "remote password reset:"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " *set device password:.*"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->a:[Ljava/lang/String;

    aget-object v6, v0, v2

    .line 79
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getRemotePasswordResetSender()Ljava/lang/String;

    move-result-object v7

    .line 81
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " *ring\\s*"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowRemoteRing()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->f:Z

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " *mute\\s*"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowRemoteMute()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->g:Z

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " *lock\\s*"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowRemoteLock()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->h:Z

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " *wipe\\s*"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowRemoteWipe()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->i:Z

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " *set device password:.*"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowDevicePasswordSet()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->k:Z

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " *locate\\s*"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowRemoteLocate()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->j:Z

    .line 91
    :cond_1
    const-string v0, "remote password reset:"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v7, v6}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_6
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->l:Z

    .line 94
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->abortBroadcast()V

    .line 96
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 82
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 83
    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 84
    goto/16 :goto_2

    :cond_6
    move v0, v2

    .line 85
    goto :goto_3

    :cond_7
    move v0, v2

    .line 86
    goto :goto_4

    :cond_8
    move v0, v2

    .line 88
    goto :goto_5

    :cond_9
    move v1, v2

    .line 91
    goto :goto_6
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 131
    invoke-static {p1}, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->getInstance(Landroid/content/Context;)Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->shallSMSBeBlocked(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->abortBroadcast()V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-static {p1, p2, v3, v2}, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration;->shallBlock(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "Aborting message ..."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT INTO logblockings (configuration, name, phonenumber, messagetype, direction, timestamp, smstext) VALUES (?, ?, ?, 2, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration;->DIRECTION_IN:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ?, ?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    const-string v1, "applyFilters"

    invoke-static {p1, v1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 145
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 147
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v1, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getCallfilterConfig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 148
    invoke-static {p1, p2}, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration;->getNameByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 149
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 150
    const/4 v1, 0x4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 151
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 154
    const-string v0, "applyFilters"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->abortBroadcast()V

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 103
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 104
    const-string v1, "pdus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 106
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->a:[Ljava/lang/String;

    .line 107
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->b:[Ljava/lang/String;

    .line 108
    array-length v1, v0

    new-array v1, v1, [Landroid/telephony/SmsMessage;

    iput-object v1, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->c:[Landroid/telephony/SmsMessage;

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v3

    .line 111
    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_2

    .line 112
    iget-object v5, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->c:[Landroid/telephony/SmsMessage;

    aget-object v1, v0, v2

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v1

    aput-object v1, v5, v2

    .line 113
    iget-object v1, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->c:[Landroid/telephony/SmsMessage;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v1, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->b:[Ljava/lang/String;

    iget-object v5, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->c:[Landroid/telephony/SmsMessage;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 116
    iget-object v1, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->a:[Ljava/lang/String;

    iget-object v5, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->b:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v5, v6}, Lde/gdata/mobilesecurity/util/MyUtil;->normalizePhoneNumber(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 118
    if-lez v2, :cond_0

    iget-boolean v5, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->d:Z

    iget-object v1, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->a:[Ljava/lang/String;

    aget-object v1, v1, v2

    iget-object v6, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->a:[Ljava/lang/String;

    add-int/lit8 v7, v2, -0x1

    aget-object v6, v6, v7

    if-ne v1, v6, :cond_1

    const/4 v1, 0x1

    :goto_1
    and-int/2addr v1, v5

    iput-boolean v1, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->d:Z

    .line 111
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 118
    goto :goto_1

    .line 121
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->e:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public static lockPhone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->lockPhone(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 283
    return-void
.end method

.method public static lockPhone(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 11

    .prologue
    .line 293
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 295
    if-eqz v0, :cond_5

    .line 296
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getEmailForLocation()Ljava/lang/String;

    move-result-object v8

    .line 297
    const v1, 0x7f0d00aa

    invoke-static {p0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    .line 299
    const/16 v7, 0x26

    .line 300
    const/4 v2, 0x0

    .line 301
    const/4 v3, 0x1

    .line 302
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x1

    move v6, v1

    .line 303
    :goto_0
    new-instance v1, Landroid/content/ComponentName;

    const-class v4, Lde/gdata/mobilesecurity/receiver/DevAdminReceiver;

    invoke-direct {v1, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 307
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v0, v1, v4}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 309
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordSufficient()Z

    move-result v1

    if-nez v1, :cond_1

    .line 310
    new-instance v4, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v4, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 311
    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getSMSCommandPassword()Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardToddlerActive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 314
    invoke-virtual {v4, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionPassword(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 317
    :cond_0
    const/4 v3, 0x0

    .line 320
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Setting device password ... ["

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v10, 0x0

    invoke-virtual {v0, v1, v10}, Landroid/app/admin/DevicePolicyManager;->resetPassword(Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v2, v1

    .line 328
    :goto_1
    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :try_start_3
    invoke-virtual {v4, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowDevicePasswordSet(Z)V

    :cond_1
    move v1, v3

    .line 331
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->lockNow()V

    .line 333
    if-eqz p2, :cond_11

    .line 334
    if-eqz v1, :cond_7

    .line 335
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 336
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    const/4 v2, 0x0

    const v1, 0x7f0d04da

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 339
    :cond_2
    if-eqz v6, :cond_3

    .line 340
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d04e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v8, v9, v0}, Lde/gdata/mobilesecurity/util/EmailClient;->sendInThread(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 343
    :cond_3
    const/16 v0, 0x23

    :goto_2
    move v7, v0

    .line 384
    :cond_4
    :goto_3
    if-eqz p2, :cond_5

    const-string v0, ""

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {p0, v7, v0, v1, v2}, Lde/gdata/mobilesecurity/services/WatcherService;->insertLogEntry(Landroid/content/Context;ILjava/lang/String;ZI)V

    .line 399
    :cond_5
    :goto_4
    return-void

    .line 302
    :cond_6
    const/4 v1, 0x0

    move v6, v1

    goto/16 :goto_0

    .line 323
    :catch_0
    move-exception v1

    move v1, v2

    .line 324
    :goto_5
    :try_start_4
    const-string v2, "Setting device password during lock failed."

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    move v2, v1

    goto :goto_1

    .line 345
    :cond_7
    if-eqz v2, :cond_a

    .line 346
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 347
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    const/4 v2, 0x0

    const v1, 0x7f0d04dd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 350
    :cond_8
    if-eqz v6, :cond_9

    .line 351
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d04ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v8, v9, v0}, Lde/gdata/mobilesecurity/util/EmailClient;->sendInThread(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_9
    const/16 v0, 0x24

    goto :goto_2

    .line 362
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 363
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    const/4 v2, 0x0

    const v1, 0x7f0d04dc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 366
    :cond_b
    if-eqz v6, :cond_c

    .line 367
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d04e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v8, v9, v0}, Lde/gdata/mobilesecurity/util/EmailClient;->sendInThread(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 370
    :cond_c
    const/16 v0, 0x25

    goto :goto_2

    .line 373
    :catch_1
    move-exception v0

    .line 374
    if-eqz p2, :cond_4

    .line 375
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 376
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    const/4 v2, 0x0

    const v1, 0x7f0d04db

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 379
    :cond_d
    if-eqz v6, :cond_4

    .line 380
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d04e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v8, v9, v0}, Lde/gdata/mobilesecurity/util/EmailClient;->sendInThread(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 386
    :cond_e
    if-eqz p2, :cond_5

    .line 387
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 388
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    const/4 v2, 0x0

    const v1, 0x7f0d04db

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 391
    :cond_f
    if-eqz v6, :cond_10

    .line 392
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d04e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v8, v9, v0}, Lde/gdata/mobilesecurity/util/EmailClient;->sendInThread(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_10
    const-string v0, ""

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {p0, v7, v0, v1, v2}, Lde/gdata/mobilesecurity/services/WatcherService;->insertLogEntry(Landroid/content/Context;ILjava/lang/String;ZI)V

    goto/16 :goto_4

    .line 323
    :catch_2
    move-exception v2

    goto/16 :goto_5

    :cond_11
    move v0, v7

    goto/16 :goto_2
.end method

.method public static muteTone(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 198
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 199
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 200
    return-void
.end method

.method public static resetRemotePassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 237
    new-instance v3, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v3, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 239
    new-instance v4, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v4, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getEmailForLocation()Ljava/lang/String;

    move-result-object v7

    .line 240
    const v4, 0x7f0d00aa

    invoke-static {p0, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 242
    const-string v4, ":"

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 243
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\s+.+"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 245
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    move v6, v0

    .line 247
    :goto_0
    const-string v5, ":"

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    .line 248
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    move v1, v0

    .line 250
    :cond_0
    if-eqz v1, :cond_1

    .line 251
    invoke-virtual {v3, p0, v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setSMSCommandPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v3, p0, v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 256
    :cond_1
    if-eqz v1, :cond_5

    .line 257
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 258
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    const v1, 0x7f0d04e0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 260
    :cond_2
    if-eqz v6, :cond_3

    .line 261
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d04ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v7, v8, v0}, Lde/gdata/mobilesecurity/util/EmailClient;->sendInThread(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_3
    :goto_1
    return-void

    :cond_4
    move v6, v1

    .line 245
    goto :goto_0

    .line 264
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 265
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    const v1, 0x7f0d04df

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 268
    :cond_6
    if-eqz v6, :cond_3

    .line 269
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d04ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v7, v8, v0}, Lde/gdata/mobilesecurity/util/EmailClient;->sendInThread(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static ringNow(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 187
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/gdata/mobilesecurity/services/RemoteCommandService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    const-string v1, "command"

    const-string v2, "siren"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v1, "sender"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 191
    return-void
.end method

.method public static sendLocation(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 208
    invoke-static {p0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getInstance(Landroid/content/Context;)Lde/gdata/mobilesecurity/database/core/DatabaseHelper;

    .line 210
    :try_start_0
    new-instance v0, Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/scan/LogEntry;-><init>(Landroid/content/Context;)V

    .line 211
    const-string v1, ""

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageExtra(Ljava/lang/String;)V

    .line 212
    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageID(I)V

    .line 214
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/LogEntry;->setWarning()V

    .line 215
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/scan/LogEntry;->setProfile(Ljava/lang/String;)V

    .line 217
    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/database/core/dao/Reports;->insert(Landroid/content/Context;Lde/gdata/mobilesecurity/scan/LogEntry;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/gdata/mobilesecurity/services/RemoteCommandService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    const-string v1, "command"

    const-string v2, "locate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v1, "sender"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 228
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inserting log entry for 22 failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setDevicePassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    const/16 v11, 0x28

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 453
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 455
    if-eqz v0, :cond_3

    .line 456
    new-instance v3, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v3, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getEmailForLocation()Ljava/lang/String;

    move-result-object v8

    .line 457
    const v3, 0x7f0d00aa

    invoke-static {p0, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    .line 459
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lde/gdata/mobilesecurity/receiver/DevAdminReceiver;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 460
    const-string v4, ":"

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 461
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\s+.+"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 463
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    move v6, v7

    .line 464
    :goto_0
    const-string v5, "[0-9]+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    .line 465
    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 466
    const-string v10, ":"

    invoke-virtual {p2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_0

    if-eqz v5, :cond_0

    .line 469
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v0, v3, v10}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 471
    const/4 v3, 0x0

    invoke-virtual {v0, v4, v3}, Landroid/app/admin/DevicePolicyManager;->resetPassword(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 478
    :cond_0
    :goto_1
    if-eqz v1, :cond_5

    .line 479
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 480
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    const v1, 0x7f0d04d7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 483
    :cond_1
    if-eqz v6, :cond_2

    .line 484
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d04ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v8, v9, v0}, Lde/gdata/mobilesecurity/util/EmailClient;->sendInThread(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :cond_2
    const/16 v0, 0x27

    const-string v1, ""

    invoke-static {p0, v0, v1, v7, v7}, Lde/gdata/mobilesecurity/services/WatcherService;->insertLogEntry(Landroid/content/Context;ILjava/lang/String;ZI)V

    .line 507
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v6, v1

    .line 463
    goto :goto_0

    .line 473
    :catch_0
    move-exception v0

    .line 474
    const-string v0, "Setting device password failed."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 491
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez v5, :cond_7

    .line 492
    :cond_6
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    const v1, 0x7f0d04d6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 495
    :cond_7
    if-eqz v6, :cond_8

    .line 496
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d04ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v8, v9, v0}, Lde/gdata/mobilesecurity/util/EmailClient;->sendInThread(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :cond_8
    const-string v0, ""

    invoke-static {p0, v11, v0, v7, v7}, Lde/gdata/mobilesecurity/services/WatcherService;->insertLogEntry(Landroid/content/Context;ILjava/lang/String;ZI)V

    goto :goto_2

    .line 503
    :cond_9
    const-string v0, ""

    invoke-static {p0, v11, v0, v7, v7}, Lde/gdata/mobilesecurity/services/WatcherService;->insertLogEntry(Landroid/content/Context;ILjava/lang/String;ZI)V

    goto :goto_2
.end method

.method public static wipeData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 407
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    .line 409
    if-eqz v6, :cond_1

    .line 410
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lde/gdata/mobilesecurity/receiver/DevAdminReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 412
    invoke-virtual {v6, v0}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V

    .line 415
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    const v1, 0x7f0d04e2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 421
    :cond_0
    new-instance v0, Lde/gdata/mobilesecurity/receiver/SMSReceiver$DelayedWipeThread;

    invoke-direct {v0, v6}, Lde/gdata/mobilesecurity/receiver/SMSReceiver$DelayedWipeThread;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/receiver/SMSReceiver$DelayedWipeThread;->start()V

    .line 424
    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 165
    const-string v0, "Receiving incoming message."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 167
    invoke-direct {p0, p2}, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->a(Landroid/content/Intent;)V

    .line 168
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->a(Landroid/content/Context;)V

    .line 170
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->b:[Ljava/lang/String;

    aget-object v0, v0, v2

    iget-object v1, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->e:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->resetRemotePassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_0
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->b:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {p1, v0}, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->ringNow(Landroid/content/Context;Ljava/lang/String;)V

    .line 172
    :cond_1
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->g:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->muteTone(Landroid/content/Context;)V

    .line 173
    :cond_2
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->j:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->b:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {p1, v0}, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->sendLocation(Landroid/content/Context;Ljava/lang/String;)V

    .line 174
    :cond_3
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->k:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->b:[Ljava/lang/String;

    aget-object v0, v0, v2

    iget-object v1, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->e:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->setDevicePassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_4
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->h:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->b:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {p1, v0}, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->lockPhone(Landroid/content/Context;Ljava/lang/String;)V

    .line 176
    :cond_5
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->i:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->b:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {p1, v0}, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->wipeData(Landroid/content/Context;Ljava/lang/String;)V

    .line 178
    :cond_6
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->d:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->a:[Ljava/lang/String;

    aget-object v0, v0, v2

    iget-object v1, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->e:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_7
    return-void
.end method
