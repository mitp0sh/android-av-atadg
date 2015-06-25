.class Lde/gdata/mobilesecurity/intents/at;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/app/Activity;

.field final synthetic b:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 738
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/at;->b:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 739
    iput-object p2, p0, Lde/gdata/mobilesecurity/intents/at;->a:Landroid/app/Activity;

    .line 740
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 751
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/at;->b:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->c(Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;)Lde/gdata/mobilesecurity/scan/MalwareInfectionList;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/at;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;->deleteAllFiles(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 757
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 758
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/at;->a:Landroid/app/Activity;

    const v1, 0x3bf4ff

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 759
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/at;->b:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->d(Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;)V

    .line 761
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 762
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/at;->b:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    const v1, 0xb11f

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->showDialog(I)V

    .line 782
    :goto_0
    return-void

    .line 765
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/at;->b:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->c(Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;)Lde/gdata/mobilesecurity/scan/MalwareInfectionList;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;->getFirstAppInfectionIndex()I

    move-result v0

    .line 767
    if-ltz v0, :cond_2

    .line 768
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/at;->b:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->b(Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;I)V

    .line 773
    :goto_1
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/at;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 775
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/at;->b:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-static {v1}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->c(Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;)Lde/gdata/mobilesecurity/scan/MalwareInfectionList;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 776
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDeviceInfected()I

    move-result v1

    sget v2, Lde/gdata/mobilesecurity/receiver/TaskIcon;->DEVICE_INFECTED_STATE_NONE:I

    if-eq v1, v2, :cond_1

    .line 777
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/at;->a:Landroid/app/Activity;

    sget v2, Lde/gdata/mobilesecurity/receiver/TaskIcon;->DEVICE_INFECTED_STATE_NONE:I

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->setDeviceInfected(Landroid/content/Context;I)V

    .line 781
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/at;->b:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->f(Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;)V

    goto :goto_0

    .line 770
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/at;->b:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->a(Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;Z)Z

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 735
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/intents/at;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 735
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/intents/at;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 745
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 746
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/at;->a:Landroid/app/Activity;

    const v1, 0x3bf4ff

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 747
    return-void
.end method
