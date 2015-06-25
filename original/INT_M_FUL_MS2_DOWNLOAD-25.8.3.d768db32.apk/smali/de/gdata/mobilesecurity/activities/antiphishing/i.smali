.class Lde/gdata/mobilesecurity/activities/antiphishing/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/antiphishing/i;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/16 v2, 0xe

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/GData/forward.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/GData/blocked.html"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    :goto_1
    const-string v2, ""

    sput-object v2, Lde/gdata/mobilesecurity/services/WatcherService;->recentlyChecked:Ljava/lang/String;

    .line 67
    sget-boolean v2, Lde/gdata/mobilesecurity/services/WatcherService;->localFilesAvailable:Z

    if-eqz v2, :cond_4

    .line 68
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/antiphishing/i;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;

    iget-object v2, v2, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->a:Ljava/lang/String;

    const-string v3, "System::"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/antiphishing/i;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->startAndroidBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    :cond_0
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/antiphishing/i;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;

    iget-object v2, v2, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->a:Ljava/lang/String;

    const-string v3, "Chrome::"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/antiphishing/i;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->startChromeBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    :cond_1
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/antiphishing/i;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;

    iget-object v2, v2, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->a:Ljava/lang/String;

    const-string v3, "NewChrome::"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/antiphishing/i;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->startChromeBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    :cond_2
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/antiphishing/i;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;

    iget-object v2, v2, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->a:Ljava/lang/String;

    const-string v3, "Samsung::"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 75
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/antiphishing/i;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->startSamsungBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/i;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->a:Ljava/lang/String;

    const-string v2, "HTC::"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/i;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->startHtcBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    :cond_4
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/i;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->finish()V

    .line 81
    const/4 v0, 0x0

    sput-boolean v0, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->isActive:Z

    .line 82
    return-void

    .line 58
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antiphishing/i;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/forward.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 62
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/antiphishing/i;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/blocked.html"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method
