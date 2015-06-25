.class public Lde/gdata/mobilesecurity/mms/json/settings/AntiTheftProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field b:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p0, Lde/gdata/mobilesecurity/mms/json/settings/AntiTheftProxy;->b:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft;

    .line 25
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/settings/AntiTheftProxy;->a:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public write()V
    .locals 15

    .prologue
    .line 32
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/settings/AntiTheftProxy;->b:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft;

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/settings/AntiTheftProxy;->b:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft;->getProfileId()Ljava/lang/Integer;

    move-result-object v9

    .line 35
    const/high16 v0, 0x10000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 37
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/settings/AntiTheftProxy;->b:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft;->getPassword()Ljava/lang/String;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/AntiTheftProxy;->b:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft;->getMail()Ljava/lang/String;

    move-result-object v11

    .line 39
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/AntiTheftProxy;->b:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft;->getPhone()Ljava/lang/String;

    move-result-object v12

    .line 41
    if-eqz v0, :cond_1

    .line 42
    new-instance v1, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;-><init>()V

    const v2, -0x5f8c4059

    invoke-virtual {v1, v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->Decode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->encryptAndEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    :cond_1
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/AntiTheftProxy;->b:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft;->getCommonAction()Ljava/lang/Integer;

    move-result-object v6

    .line 47
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$CommonActions;->LOCATE:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/2addr v1, v2

    if-lez v1, :cond_2

    const/4 v1, 0x1

    .line 48
    :goto_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$CommonActions;->WIPE:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/2addr v2, v3

    if-lez v2, :cond_3

    const/4 v2, 0x1

    .line 49
    :goto_2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$CommonActions;->ALARM:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/2addr v3, v4

    if-lez v3, :cond_4

    const/4 v3, 0x1

    .line 50
    :goto_3
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$CommonActions;->MUTE:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/2addr v4, v5

    if-lez v4, :cond_5

    const/4 v4, 0x1

    .line 51
    :goto_4
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v7, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$CommonActions;->LOCK:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    and-int/2addr v5, v7

    if-lez v5, :cond_6

    const/4 v5, 0x1

    .line 52
    :goto_5
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$CommonActions;->SET_PASSWORD:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    and-int/2addr v6, v7

    if-lez v6, :cond_7

    const/4 v6, 0x1

    .line 54
    :goto_6
    iget-object v7, p0, Lde/gdata/mobilesecurity/mms/json/settings/AntiTheftProxy;->b:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft;

    invoke-virtual {v7}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft;->getSimChangeAction()Ljava/lang/Integer;

    move-result-object v8

    .line 55
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v13, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$SimChangeActions;->LOCK:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    and-int/2addr v7, v13

    if-lez v7, :cond_8

    const/4 v7, 0x1

    .line 56
    :goto_7
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v13, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$SimChangeActions;->LOCATE:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    and-int/2addr v8, v13

    if-lez v8, :cond_9

    const/4 v8, 0x1

    .line 58
    :goto_8
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "INSERT OR REPLACE INTO antitheftconfig SELECT MAX(id), \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\', "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, ", "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, ", "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_a

    const-string v0, ",null,"

    :goto_9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v12, :cond_b

    const-string v0, "null,"

    :goto_a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v11, :cond_c

    const-string v0, "null"

    :goto_b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM antitheftconfig WHERE configuration = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/AntiTheftProxy;->a:Landroid/content/Context;

    const-string v2, "ATP.write"

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 68
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_c
    const-string v0, "ATP.write"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 47
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 48
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 49
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 50
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 51
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 52
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 55
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 56
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_8

    .line 58
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\',"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\',"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    .line 71
    :catch_0
    move-exception v1

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Statement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " caused an exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto/16 :goto_c
.end method
