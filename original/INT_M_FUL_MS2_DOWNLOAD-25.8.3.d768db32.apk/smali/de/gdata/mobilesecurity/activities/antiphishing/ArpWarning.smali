.class public Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;
.super Lde/gdata/mobilesecurity/intents/GdActivity;
.source "SourceFile"


# static fields
.field public static final EXTRA_BSSID:Ljava/lang/String; = "EXTRA_BSSID"

.field public static final EXTRA_BSSID_ANALYSIS:Ljava/lang/String; = "EXTRA_BSSID_ANALYSIS"

.field public static final EXTRA_NEW_NETWORK:Ljava/lang/String; = "NEW_NETWORK"

.field public static final EXTRA_SSID:Ljava/lang/String; = "EXTRA_SSID"


# instance fields
.field private a:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdActivity;-><init>()V

    .line 33
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->a:Z

    .line 35
    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->c:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->d:Ljava/lang/String;

    .line 37
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->e:Z

    .line 39
    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->f:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->a(Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add to queried networks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getQueriedNetworks()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getQueriedNetworks()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setQueriedNetworks(Ljava/lang/String;)V

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Queried networks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getQueriedNetworks()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->b(Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add to trusted networks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getTrustedNetworks()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getTrustedNetworks()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setTrustedNetworks(Ljava/lang/String;)V

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trusted networks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getQueriedNetworks()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->e:Z

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 46
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 48
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    const-string v1, "NEW_NETWORK"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const-string v1, "NEW_NETWORK"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->a:Z

    .line 56
    :cond_0
    const-string v1, "EXTRA_SSID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    const-string v1, "EXTRA_SSID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->c:Ljava/lang/String;

    .line 59
    :cond_1
    const-string v1, "EXTRA_BSSID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 60
    const-string v1, "EXTRA_BSSID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->d:Ljava/lang/String;

    .line 62
    :cond_2
    const-string v1, "EXTRA_BSSID_ANALYSIS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    const-string v1, "EXTRA_BSSID_ANALYSIS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->e:Z

    .line 67
    :cond_3
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->a:Z

    if-eqz v0, :cond_5

    .line 68
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->showDialog(I)V

    .line 72
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->f:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 73
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->f:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 74
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 75
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->f:Landroid/app/AlertDialog;

    const v2, 0x7f0b0133

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 76
    new-instance v2, Lde/gdata/mobilesecurity/activities/antiphishing/a;

    invoke-direct {v2, p0, v1}, Lde/gdata/mobilesecurity/activities/antiphishing/a;-><init>(Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;Landroid/widget/Button;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 83
    :cond_4
    return-void

    .line 70
    :cond_5
    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->showDialog(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/AlertDialog;
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ne p1, v3, :cond_0

    const-string v0, "query"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ne p1, v3, :cond_1

    const-string v0, "query"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "$"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->f:Landroid/app/AlertDialog;

    .line 110
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 207
    :goto_2
    return-object v0

    .line 105
    :cond_0
    const-string v0, "attack"

    goto :goto_0

    .line 106
    :cond_1
    const-string v0, "attack"

    goto :goto_1

    .line 112
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0174

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d0173

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0249

    new-instance v3, Lde/gdata/mobilesecurity/activities/antiphishing/d;

    invoke-direct {v3, p0, v0}, Lde/gdata/mobilesecurity/activities/antiphishing/d;-><init>(Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d023c

    new-instance v3, Lde/gdata/mobilesecurity/activities/antiphishing/c;

    invoke-direct {v3, p0, v0}, Lde/gdata/mobilesecurity/activities/antiphishing/c;-><init>(Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/activities/antiphishing/b;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/antiphishing/b;-><init>(Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 153
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_2

    .line 157
    :pswitch_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 158
    const v3, 0x7f030036

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 160
    const-string v2, "Building dialog"

    invoke-static {p0, v2}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BSSID analysis: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->e:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 164
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d017c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->e:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0d0179

    :goto_3
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0d017a

    new-instance v3, Lde/gdata/mobilesecurity/activities/antiphishing/f;

    invoke-direct {v3, p0}, Lde/gdata/mobilesecurity/activities/antiphishing/f;-><init>(Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0d0178

    new-instance v3, Lde/gdata/mobilesecurity/activities/antiphishing/e;

    invoke-direct {v3, p0, v1}, Lde/gdata/mobilesecurity/activities/antiphishing/e;-><init>(Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;Landroid/view/View;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->f:Landroid/app/AlertDialog;

    .line 197
    const v0, 0x7f0b0133

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 198
    iget-boolean v1, p0, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->e:Z

    if-eqz v1, :cond_3

    .line 199
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d016f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 203
    :goto_4
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->f:Landroid/app/AlertDialog;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 204
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->f:Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 164
    :cond_2
    const v0, 0x7f0d017b

    goto :goto_3

    .line 201
    :cond_3
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0172

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->onCreateDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
