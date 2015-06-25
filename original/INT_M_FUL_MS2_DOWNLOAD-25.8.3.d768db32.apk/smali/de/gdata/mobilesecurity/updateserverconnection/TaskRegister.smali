.class public Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    iput-object p1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;->b:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;->c:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;

    .line 32
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 12

    .prologue
    .line 59
    const-string v0, "TaskTestAuthData.doInBackground()"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x0

    aget-object v2, p1, v0

    .line 62
    const/4 v0, 0x1

    aget-object v3, p1, v0

    .line 63
    const/4 v0, 0x2

    aget-object v4, p1, v0

    .line 64
    const/4 v0, 0x3

    aget-object v5, p1, v0

    .line 65
    const/4 v0, 0x4

    aget-object v9, p1, v0

    .line 66
    const/4 v0, 0x5

    aget-object v10, p1, v0

    .line 67
    const-string v7, ""

    .line 68
    const-string v8, ""

    .line 69
    array-length v0, p1

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 70
    const/4 v0, 0x6

    aget-object v7, p1, v0

    .line 71
    const/4 v0, 0x7

    aget-object v8, p1, v0

    .line 73
    :cond_0
    array-length v0, p1

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    const/16 v0, 0x8

    aget-object v6, p1, v0

    .line 74
    :goto_0
    array-length v0, p1

    const/16 v1, 0x9

    if-le v0, v1, :cond_2

    const/16 v0, 0x9

    aget-object v11, p1, v0

    .line 77
    :goto_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v5, v0, v1

    const/4 v1, 0x2

    aput-object v9, v0, v1

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->sanityCheck([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 107
    :goto_2
    return-object v0

    .line 73
    :cond_1
    const-string v6, ""

    goto :goto_0

    .line 74
    :cond_2
    const-string v11, ""

    goto :goto_1

    .line 79
    :cond_3
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 82
    :cond_4
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;-><init>(Landroid/content/Context;)V

    .line 83
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;->b:Landroid/content/Context;

    invoke-virtual/range {v0 .. v11}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lde/gdata/mobilesecurity/updateserverconnection/structs/AuthStruct;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/structs/AuthStruct;->getStatuscode()I

    move-result v1

    if-nez v1, :cond_5

    .line 89
    new-instance v1, Lde/gdata/mobilesecurity/util/BasePreferences;

    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/structs/AuthStruct;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/structs/AuthStruct;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->setAndEncryptUsernameAndPassword(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v2, ""

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->setPurchaseData(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;->b:Landroid/content/Context;

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/Trial;->registrationPerformed()V

    .line 97
    :cond_5
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/structs/AuthStruct;->getStatuscode()I

    move-result v1

    const/16 v2, 0x164d    # 8.0E-42f

    if-ne v1, v2, :cond_6

    .line 98
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;->b:Landroid/content/Context;

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/Trial;->isUnregisteredTrial()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 99
    const v1, 0x1869f

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/updateserverconnection/structs/AuthStruct;->setStatusCode(I)V

    .line 101
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;->b:Landroid/content/Context;

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/Trial;->wasAlreadyRegistered()V

    .line 105
    :cond_6
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 107
    :cond_7
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/structs/AuthStruct;->getStatuscode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 116
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

    .line 119
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 122
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;->c:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;->c:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;->onServerStatus(ILandroid/os/Bundle;)V

    .line 123
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 39
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 42
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;->b:Landroid/content/Context;

    const-string v1, ""

    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;->b:Landroid/content/Context;

    const v3, 0x7f0d006f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;->a:Landroid/app/ProgressDialog;

    .line 45
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;->a:Landroid/app/ProgressDialog;

    new-instance v1, Lde/gdata/mobilesecurity/updateserverconnection/c;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/updateserverconnection/c;-><init>(Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 52
    return-void
.end method
