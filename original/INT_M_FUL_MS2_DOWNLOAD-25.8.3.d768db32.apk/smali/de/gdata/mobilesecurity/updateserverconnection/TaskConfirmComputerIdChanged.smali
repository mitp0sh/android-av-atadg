.class public Lde/gdata/mobilesecurity/updateserverconnection/TaskConfirmComputerIdChanged;
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

.field private b:Landroid/app/Activity;

.field private c:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;

.field private d:Lde/gdata/mobilesecurity/util/BasePreferences;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskConfirmComputerIdChanged;->c:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;

    .line 32
    iput-object p1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskConfirmComputerIdChanged;->b:Landroid/app/Activity;

    .line 33
    iput-object p2, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskConfirmComputerIdChanged;->c:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;

    .line 34
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskConfirmComputerIdChanged;->d:Lde/gdata/mobilesecurity/util/BasePreferences;

    .line 35
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6

    .prologue
    const v1, 0x1869b

    const/4 v5, 0x0

    .line 57
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskConfirmComputerIdChanged;->d:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskConfirmComputerIdChanged;->d:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedPassword()Ljava/lang/String;

    move-result-object v2

    .line 60
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v5

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v3}, Lde/gdata/mobilesecurity/util/MyUtil;->sanityCheck([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    .line 62
    :cond_0
    new-instance v3, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    iget-object v4, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskConfirmComputerIdChanged;->b:Landroid/app/Activity;

    invoke-direct {v3, v4, v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;

    invoke-static {}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->getUpdateComponentSig()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;-><init>(Ljava/lang/String;)V

    .line 64
    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskConfirmComputerIdChanged;->b:Landroid/app/Activity;

    invoke-virtual {v3, v2, v0}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->confirmComputerIdChanged(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)I

    move-result v0

    .line 66
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskConfirmComputerIdChanged;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_1
    if-lez v0, :cond_3

    const v0, 0x1869c

    .line 70
    :goto_1
    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskConfirmComputerIdChanged;->b:Landroid/app/Activity;

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/Trial;->newValidLoginEntered()V

    .line 72
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 68
    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/TaskConfirmComputerIdChanged;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskConfirmComputerIdChanged;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 83
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskConfirmComputerIdChanged;->c:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskConfirmComputerIdChanged;->c:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;->onServerStatus(ILandroid/os/Bundle;)V

    .line 84
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/TaskConfirmComputerIdChanged;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 39
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 42
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskConfirmComputerIdChanged;->b:Landroid/app/Activity;

    const-string v1, ""

    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskConfirmComputerIdChanged;->b:Landroid/app/Activity;

    const v3, 0x7f0d0050

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskConfirmComputerIdChanged;->a:Landroid/app/ProgressDialog;

    .line 45
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskConfirmComputerIdChanged;->a:Landroid/app/ProgressDialog;

    new-instance v1, Lde/gdata/mobilesecurity/updateserverconnection/b;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/updateserverconnection/b;-><init>(Lde/gdata/mobilesecurity/updateserverconnection/TaskConfirmComputerIdChanged;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 52
    return-void
.end method
