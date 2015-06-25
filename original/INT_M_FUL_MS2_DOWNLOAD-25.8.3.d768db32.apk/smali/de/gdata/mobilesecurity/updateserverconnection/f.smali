.class Lde/gdata/mobilesecurity/updateserverconnection/f;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;)V
    .locals 3

    .prologue
    .line 208
    iput-object p1, p0, Lde/gdata/mobilesecurity/updateserverconnection/f;->a:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;

    .line 209
    const-class v0, Lde/gdata/mobilesecurity/updateserverconnection/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".*\\."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 210
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 214
    const-string v0, "UpdateThread.run()"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 216
    const/4 v0, 0x0

    .line 217
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/f;->a:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;

    const/4 v2, 0x0

    iput-object v2, v1, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->a:Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    .line 218
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/f;->a:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;

    invoke-static {v1}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->a(Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "red"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 220
    if-nez v1, :cond_9

    .line 221
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/f;->a:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;

    invoke-static {v3}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->b(Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/f;->a:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;

    invoke-static {v3}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->c(Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyUtil;->sanityCheck([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/f;->a:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->a(Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;I)V

    .line 299
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-static {}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/f;->a:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->a(Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;I)V

    goto :goto_0

    .line 232
    :cond_1
    new-instance v12, Lde/gdata/mobilesecurity/updateserverconnection/Update;

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/f;->a:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;

    invoke-static {v1}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->b(Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/f;->a:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;

    invoke-static {v2}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->c(Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/f;->a:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;

    invoke-static {v3}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->d(Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v12, v1, v2, v3}, Lde/gdata/mobilesecurity/updateserverconnection/Update;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 234
    new-instance v13, Lde/gdata/mobilesecurity/util/BasePreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/f;->a:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;

    invoke-static {v1}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->d(Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v13, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 235
    invoke-virtual {v12}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->checkForProgramUpdate()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 236
    invoke-virtual {v13}, Lde/gdata/mobilesecurity/util/BasePreferences;->isInstalledFromMarket()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/f;->a:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;

    invoke-static {v2}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->d(Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isGoogleFreemium()Z

    move-result v1

    if-nez v1, :cond_2

    .line 238
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->updateAPK(Z)I

    move-result v0

    .line 243
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 246
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/f;->a:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;

    const/4 v1, 0x1

    invoke-static {v0, v1, v12}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->a(Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;ILde/gdata/mobilesecurity/updateserverconnection/Update;)V

    goto :goto_0

    .line 253
    :cond_2
    invoke-static {}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 254
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/f;->a:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->a(Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;I)V

    goto :goto_0

    .line 259
    :cond_3
    if-eqz v0, :cond_4

    const/16 v1, 0x1651

    if-ne v0, v1, :cond_5

    .line 260
    :cond_4
    invoke-virtual {v12}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->updateSignatures()I

    move-result v0

    .line 262
    invoke-virtual {v12}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->updateUpdateActions()Z

    .line 265
    const/16 v1, 0x1647

    if-ne v0, v1, :cond_5

    invoke-virtual {v13}, Lde/gdata/mobilesecurity/util/BasePreferences;->isInstalledFromMarket()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 267
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/f;->a:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;

    invoke-static {v1}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->d(Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;-><init>(Landroid/content/Context;)V

    .line 268
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/f;->a:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;

    invoke-static {v1}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->d(Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#GOOG|KMBKS|RALXI|WNPWL|LG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/f;->a:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;

    invoke-static {v3}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->d(Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->getGDataLanguageCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v13}, Lde/gdata/mobilesecurity/util/BasePreferences;->getLicensedGoogleAccount()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lde/gdata/mobilesecurity/updateserverconnection/f;->a:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;

    invoke-static {v6}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->d(Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lde/gdata/mobilesecurity/util/MyUtil;->getNormalizedPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lde/gdata/mobilesecurity/updateserverconnection/f;->a:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;

    invoke-static {v7}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->b(Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lde/gdata/mobilesecurity/updateserverconnection/f;->a:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;

    invoke-static {v8}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->c(Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "false"

    invoke-virtual {v13}, Lde/gdata/mobilesecurity/util/BasePreferences;->getGoogleAdditionalInfo()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual/range {v0 .. v11}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lde/gdata/mobilesecurity/updateserverconnection/structs/AuthStruct;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/structs/AuthStruct;->getStatuscode()I

    move-result v0

    .line 273
    if-nez v0, :cond_5

    invoke-virtual {v12}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->updateSignatures()I

    move-result v0

    .line 277
    :cond_5
    invoke-static {}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 278
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/f;->a:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->a(Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;I)V

    goto/16 :goto_0

    .line 283
    :cond_6
    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    invoke-static {}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->isFreeVersion()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v13}, Lde/gdata/mobilesecurity/util/BasePreferences;->isFreeVersionRegistered()Z

    move-result v1

    if-nez v1, :cond_7

    .line 285
    invoke-virtual {v12}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->registerFreeVersion()I

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->setFreeVersionRegistered(Z)V

    .line 293
    :cond_7
    :goto_1
    const/16 v1, 0x1653

    if-ne v0, v1, :cond_8

    .line 294
    new-instance v1, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/f;->a:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;

    invoke-static {v2}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->d(Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/f;->a:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;

    invoke-static {v3}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->b(Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lde/gdata/mobilesecurity/updateserverconnection/f;->a:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;

    invoke-static {v4}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->c(Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/f;->a:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->getRed()Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    move-result-object v1

    iput-object v1, v2, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->a:Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    .line 298
    :cond_8
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/f;->a:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;

    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->a(Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;I)V

    goto/16 :goto_0

    .line 289
    :cond_9
    const/16 v0, 0x1653

    goto :goto_1
.end method
