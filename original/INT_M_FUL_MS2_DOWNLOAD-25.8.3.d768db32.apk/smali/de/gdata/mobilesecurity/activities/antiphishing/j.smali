.class Lde/gdata/mobilesecurity/activities/antiphishing/j;
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
    .line 83
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/antiphishing/j;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 85
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antiphishing/j;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 87
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antiphishing/j;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getPhishingTimeout()I

    move-result v0

    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->addPhishingException(Ljava/lang/String;I)V

    .line 90
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/j;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->a:Ljava/lang/String;

    const-string v1, "System::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/j;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antiphishing/j;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->startAndroidBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/j;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->a:Ljava/lang/String;

    const-string v1, "Chrome::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/j;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antiphishing/j;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->startChromeBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/j;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->a:Ljava/lang/String;

    const-string v1, "NewChrome::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/j;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antiphishing/j;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->a:Ljava/lang/String;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->startChromeBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 98
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/j;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->a:Ljava/lang/String;

    const-string v1, "Samsung::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/j;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antiphishing/j;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->a:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->startSamsungBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/j;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->a:Ljava/lang/String;

    const-string v1, "HTC::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 102
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/j;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antiphishing/j;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->a:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->startHtcBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 104
    :cond_4
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/j;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->finish()V

    .line 105
    const/4 v0, 0x0

    sput-boolean v0, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;->isActive:Z

    .line 106
    return-void
.end method
