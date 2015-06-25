.class public abstract Lde/gdata/mobilesecurity/privacy/PrivacyTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Param:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParam;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field private b:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 15
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/PrivacyTask;->b:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyTask;->b:Landroid/content/Context;

    return-object v0
.end method

.method protected getDialog()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyTask;->a:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method protected abstract getDialogMessage(Landroid/content/Context;)Ljava/lang/String;
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyTask;->getDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 30
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/privacy/PrivacyTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyTask;->a:Landroid/app/ProgressDialog;

    .line 42
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyTask;->getDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 43
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyTask;->getDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 44
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyTask;->getDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/privacy/PrivacyTask;->getDialogMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyTask;->getDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 46
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyTask;->getDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 47
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyTask;->getDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 35
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/privacy/PrivacyTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
