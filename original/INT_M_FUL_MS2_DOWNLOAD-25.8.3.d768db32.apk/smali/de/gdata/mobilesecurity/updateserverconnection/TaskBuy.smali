.class public Lde/gdata/mobilesecurity/updateserverconnection/TaskBuy;
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
.field a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;

.field private b:Landroid/support/v4/app/FragmentActivity;

.field private c:Landroid/app/ProgressDialog;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    iput-object p1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskBuy;->b:Landroid/support/v4/app/FragmentActivity;

    .line 30
    iput-object p2, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskBuy;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;

    .line 31
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 55
    const-string v0, "TaskTestAuthData.doInBackground()"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 57
    aget-object v10, p1, v12

    .line 58
    const/4 v0, 0x1

    aget-object v11, p1, v0

    .line 59
    const/4 v0, 0x2

    aget-object v1, p1, v0

    .line 60
    const/4 v0, 0x3

    aget-object v2, p1, v0

    .line 61
    const/4 v0, 0x4

    aget-object v3, p1, v0

    .line 62
    const/4 v0, 0x5

    aget-object v4, p1, v0

    .line 63
    const/4 v0, 0x6

    aget-object v5, p1, v0

    .line 64
    const/4 v0, 0x7

    aget-object v6, p1, v0

    .line 65
    const/16 v0, 0x8

    aget-object v7, p1, v0

    .line 66
    const/16 v0, 0x9

    aget-object v8, p1, v0

    .line 67
    const/16 v0, 0xa

    aget-object v0, p1, v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskBuy;->d:Ljava/lang/String;

    .line 68
    const/16 v0, 0xb

    aget-object v9, p1, v0

    .line 70
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskBuy;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    .line 72
    :cond_0
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    iget-object v12, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskBuy;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v12, v10, v11}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {v0 .. v9}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->buy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/TaskBuy;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 86
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

    .line 88
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskBuy;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 90
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 91
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskBuy;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->setPurchaseData(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskBuy;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskBuy;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;

    const/4 v1, -0x1

    invoke-interface {v0, v1, v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;->onServerStatus(ILandroid/os/Bundle;)V

    .line 104
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskBuy;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/Trial;->registrationPerformed()V

    .line 100
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskBuy;->b:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskBuy;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showOkWithFinishDialog(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Landroid/support/v4/app/DialogFragment;

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskBuy;->a:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1, v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;->onServerStatus(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/TaskBuy;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 38
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 40
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskBuy;->b:Landroid/support/v4/app/FragmentActivity;

    const-string v1, ""

    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskBuy;->b:Landroid/support/v4/app/FragmentActivity;

    const v3, 0x7f0d0081

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskBuy;->c:Landroid/app/ProgressDialog;

    .line 42
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskBuy;->c:Landroid/app/ProgressDialog;

    new-instance v1, Lde/gdata/mobilesecurity/updateserverconnection/a;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/updateserverconnection/a;-><init>(Lde/gdata/mobilesecurity/updateserverconnection/TaskBuy;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 48
    return-void
.end method
