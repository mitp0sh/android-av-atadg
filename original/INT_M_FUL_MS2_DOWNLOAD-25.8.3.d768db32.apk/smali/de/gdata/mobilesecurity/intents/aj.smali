.class Lde/gdata/mobilesecurity/intents/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/aj;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/aj;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->a(Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 168
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/aj;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->b(Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 169
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/aj;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->c(Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;)Lde/gdata/mobilesecurity/scan/MalwareInfectionList;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/aj;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-static {v1}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->b(Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;->get(I)Lde/gdata/mobilesecurity/scan/MalwareInfection;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_0

    .line 171
    instance-of v1, v0, Lde/gdata/mobilesecurity/scan/FileInfection;

    if-eqz v1, :cond_0

    .line 172
    check-cast v0, Lde/gdata/mobilesecurity/scan/FileInfection;

    .line 173
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/FileInfection;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/aj;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->c(Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;)Lde/gdata/mobilesecurity/scan/MalwareInfectionList;

    move-result-object v0

    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/aj;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;->deleteFile(Landroid/content/Context;Ljava/io/File;)V

    .line 175
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/aj;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->c(Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;)Lde/gdata/mobilesecurity/scan/MalwareInfectionList;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/aj;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-static {v1}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->b(Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;->remove(I)V

    .line 177
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/aj;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->a(Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;I)I

    .line 178
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/aj;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->d(Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;)V

    .line 182
    :goto_0
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/aj;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 183
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/aj;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-static {v1}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->c(Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;)Lde/gdata/mobilesecurity/scan/MalwareInfectionList;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDeviceInfected()I

    move-result v1

    sget v2, Lde/gdata/mobilesecurity/receiver/TaskIcon;->DEVICE_INFECTED_STATE_NONE:I

    if-eq v1, v2, :cond_0

    .line 185
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/aj;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lde/gdata/mobilesecurity/receiver/TaskIcon;->DEVICE_INFECTED_STATE_NONE:I

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->setDeviceInfected(Landroid/content/Context;I)V

    .line 192
    :cond_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/aj;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    const v1, 0xb11f

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->showDialog(I)V

    goto :goto_0
.end method
