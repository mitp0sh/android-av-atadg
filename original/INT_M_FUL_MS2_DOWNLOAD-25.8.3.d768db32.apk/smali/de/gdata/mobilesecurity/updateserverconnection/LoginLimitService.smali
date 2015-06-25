.class public Lde/gdata/mobilesecurity/updateserverconnection/LoginLimitService;
.super Landroid/app/IntentService;
.source "SourceFile"

# interfaces
.implements Lde/gdata/mobilesecurity/scan/AsyncAction;
.implements Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "LoginLimitService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public hasCancelled()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 31
    const-string v0, "LoginLimitService.HandleIntent() start"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 33
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getDecryptedPassword()Ljava/lang/String;

    move-result-object v0

    .line 36
    new-instance v2, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;

    invoke-direct {v2, p0, p0, v5}, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;-><init>(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;Z)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    aput-object v0, v3, v5

    const/4 v0, 0x2

    const-string v1, "0"

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 37
    return-void
.end method

.method public onServerStatus(ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoginLimitService.onServerStatus() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 43
    return-void
.end method
