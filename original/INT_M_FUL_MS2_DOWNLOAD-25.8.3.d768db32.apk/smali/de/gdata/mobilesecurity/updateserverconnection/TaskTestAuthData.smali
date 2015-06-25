.class public Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field private b:Landroid/content/Context;

.field private c:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->d:Z

    .line 33
    iput-object p1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->b:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->c:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;Z)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->d:Z

    .line 38
    iput-object p1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->b:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->c:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;

    .line 40
    iput-boolean p3, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->d:Z

    .line 41
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 11

    .prologue
    const/4 v0, 0x4

    const/4 v7, 0x3

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 71
    new-instance v2, Lde/gdata/mobilesecurity/util/BasePreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->b:Landroid/content/Context;

    invoke-direct {v2, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 72
    const-string v1, "TaskTestAuthData.doInBackground()"

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 74
    new-instance v3, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->b:Landroid/content/Context;

    invoke-direct {v3, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 76
    aget-object v4, p1, v9

    .line 77
    aget-object v5, p1, v8

    .line 78
    aget-object v1, p1, v10

    const-string v6, "1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 81
    array-length v6, p1

    if-le v6, v7, :cond_0

    aget-object v6, p1, v7

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    :cond_0
    new-array v6, v10, [Ljava/lang/String;

    aput-object v4, v6, v9

    aput-object v5, v6, v8

    invoke-static {v6}, Lde/gdata/mobilesecurity/util/MyUtil;->sanityCheck([Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    .line 86
    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_2
    new-instance v6, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    iget-object v7, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->b:Landroid/content/Context;

    invoke-direct {v6, v7, v4, v5}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v7, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;

    invoke-static {}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->getUpdateComponentSig()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;-><init>(Ljava/lang/String;)V

    .line 91
    iget-object v8, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->b:Landroid/content/Context;

    invoke-virtual {v6, v8, v7}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->getVersion(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V

    .line 92
    invoke-virtual {v6, v7}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->confirm(Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V

    .line 94
    invoke-virtual {v7}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v6

    const/16 v8, 0x1651

    if-ne v6, v8, :cond_3

    .line 95
    invoke-virtual {v7, v9}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->setServerStatus(I)V

    .line 97
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v7}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v1

    if-nez v1, :cond_4

    .line 98
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->b:Landroid/content/Context;

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/Trial;->newValidLoginEntered()V

    .line 100
    :cond_4
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_5
    invoke-virtual {v7}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v1

    const/16 v6, 0x1653

    if-ne v1, v6, :cond_6

    .line 103
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isOrangeOemVersion()Z

    move-result v1

    if-nez v1, :cond_6

    .line 105
    invoke-virtual {v7, v9}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->setServerStatus(I)V

    .line 107
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->b:Landroid/content/Context;

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/Trial;->setTrialState(I)V

    .line 111
    :cond_6
    invoke-virtual {v7}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v1

    .line 112
    if-nez v1, :cond_8

    .line 113
    invoke-virtual {v3, v4, v5}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAndEncryptUsernameAndPassword(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_1
    iget-boolean v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->d:Z

    if-eqz v1, :cond_a

    .line 120
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->b:Landroid/content/Context;

    new-instance v3, Lde/gdata/mobilesecurity/util/BasePreferences;

    iget-object v4, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v3, v7}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->updateLoginLimit(Landroid/content/Context;Lde/gdata/mobilesecurity/util/BasePreferences;Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lde/gdata/mobilesecurity/util/BasePreferences;->setTimeOfLastLoginLimitUpdate(J)V

    .line 122
    new-instance v1, Lde/gdata/mobilesecurity/receiver/LoginLimitReceiver;

    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lde/gdata/mobilesecurity/receiver/LoginLimitReceiver;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/receiver/LoginLimitReceiver;->enable()J

    .line 127
    :cond_7
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 115
    :cond_8
    const/16 v0, 0x165c

    if-ne v1, v0, :cond_9

    .line 116
    invoke-virtual {v3, v4, v5}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAndEncryptUsernameAndPassword(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    move v0, v1

    goto :goto_1

    .line 123
    :cond_a
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->isOrangeOemVersion()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 124
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->b:Landroid/content/Context;

    new-instance v2, Lde/gdata/mobilesecurity/util/BasePreferences;

    iget-object v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2, v7}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->updateLoginLimit(Landroid/content/Context;Lde/gdata/mobilesecurity/util/BasePreferences;Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 136
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskTestAuthData.onPostExecute with status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 139
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->d:Z

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 146
    :cond_0
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 147
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->isOrangeOemVersion()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 153
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1650

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1653

    if-ne v0, v1, :cond_3

    .line 154
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->b:Landroid/content/Context;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/Trial;->setTrialState(I)V

    .line 155
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->c:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;

    const v1, 0x18698

    invoke-interface {v0, v1, v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;->onServerStatus(ILandroid/os/Bundle;)V

    .line 168
    :cond_2
    :goto_0
    return-void

    .line 157
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 158
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->b:Landroid/content/Context;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/Trial;->setTrialState(I)V

    .line 159
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->c:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;

    const v1, 0x1869a

    invoke-interface {v0, v1, v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;->onServerStatus(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 161
    :cond_4
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->b:Landroid/content/Context;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/Trial;->setTrialState(I)V

    .line 162
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->c:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;

    const v1, 0x18699

    invoke-interface {v0, v1, v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;->onServerStatus(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 166
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->c:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1, v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;->onServerStatus(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 48
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 50
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->d:Z

    if-nez v0, :cond_1

    .line 52
    const v0, 0x7f0d0081

    .line 53
    new-instance v1, Lde/gdata/mobilesecurity/util/BasePreferences;

    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->isOrangeOemVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0d0039

    .line 54
    :cond_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->b:Landroid/content/Context;

    const-string v2, ""

    iget-object v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->b:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->a:Landroid/app/ProgressDialog;

    .line 57
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->a:Landroid/app/ProgressDialog;

    new-instance v1, Lde/gdata/mobilesecurity/updateserverconnection/d;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/updateserverconnection/d;-><init>(Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 64
    :cond_1
    return-void
.end method
